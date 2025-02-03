// Copyright 2018 ETH Zurich and University of Bologna.
// Copyright and related rights are licensed under the Solderpad Hardware
// License, Version 0.51 (the "License"); you may not use this file except in
// compliance with the License.  You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
// or agreed to in writing, software, hardware and materials distributed under
// this License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.
//
// Author: Florian Zaruba, ETH Zurich
// Date: 08.02.2018
// Description: Ariane Instruction Fetch Frontend
//
// This module interfaces with the instruction cache, handles control
// change request from the back-end and does branch prediction.

module next_pc
  import ariane_pkg::*;
#(
    parameter config_pkg::cva6_cfg_t CVA6Cfg = config_pkg::cva6_cfg_empty
) (
    input logic clk_i,  // Clock
    input logic rst_ni,  // Asynchronous reset active low
    input logic flush_i,  // flush request for PCGEN
    input logic halt_i,  // halt commit stage
    input logic debug_mode_i,
    // global input
    input logic [riscv::VLEN-1:0] boot_addr_i,
    // Set a new PC
    // mispredict
    input  bp_resolve_t        resolved_branch_i,  // from controller signaling a branch_predict -> update BTB
    // from commit, when flushing the whole pipeline
    input logic set_pc_commit_i,  // Take the PC from commit stage
    input logic [riscv::VLEN-1:0] pc_commit_i,  // PC of instruction in commit stage
    // CSR input
    input logic [riscv::VLEN-1:0] epc_i,  // exception PC which we need to return to
    input logic eret_i,  // return from exception
    input logic [riscv::VLEN-1:0] trap_vector_base_i,  // base of trap vector
    input logic ex_valid_i,  // exception is valid - from commit
    input logic set_debug_pc_i,  // jump to debug address
    // to $I
    output icache_dreq_t icache_dreq_o,

    // from fetch
    input logic bp_valid,
    input logic replay,
    input logic [ riscv::VLEN-1:0] replay_addr,
    input logic [ riscv::VLEN-1:0] predict_address,
    input logic instr_queue_ready,
    input logic if_ready,
    input logic speculative
);
  //Synchrone Output for signals
  logic bp_valid_q;
  logic [riscv::VLEN-1:0] replay_addr_q;
  logic replay_q;
  logic [riscv::VLEN-1:0] predict_address_q;
  logic instr_queue_ready_q;
  logic if_ready_q;
  logic speculative_q;
  logic ex_valid_q,set_debug_pc_q,eret_q,set_pc_commit_q,is_mispredict_q;
  logic [riscv::VLEN-1:0] pc_commit_q,trap_vector_base_q,epc_q;
  logic [riscv::VLEN-1:0] npc_d, npc_q;  // next PC

  // indicates whether we come out of reset (then we need to load boot_addr_i)
  logic npc_rst_load_q;

  // Instruction FIFO

  assign is_mispredict = resolved_branch_i.valid & resolved_branch_i.is_mispredict;

  // Cache interface
  assign icache_dreq_o.req = instr_queue_ready;
  // We need to flush the cache pipeline if:
  // 1. We mispredicted
  // 2. Want to flush the whole processor front-end
  // 3. Need to replay an instruction because the fetch-fifo was full
  assign icache_dreq_o.kill_s1 = is_mispredict | flush_i | replay;
  // if we have a valid branch-prediction we need to only kill the last cache request
  // also if we killed the first stage we also need to kill the second stage (inclusive flush)
  assign icache_dreq_o.kill_s2 = icache_dreq_o.kill_s1 | bp_valid;

  assign icache_dreq_o.spec = speculative_q;


  // -------------------
  // Next PC
  // -------------------
  // next PC (NPC) can come from (in order of precedence):
  // 0. Default assignment/replay instruction
  // 1. Branch Predict taken
  // 2. Control flow change request (misprediction)
  // 3. Return from environment call
  // 4. Exception/Interrupt
  // 5. Pipeline Flush because of CSR side effects
  // Mis-predict handling is a little bit different
  // select PC a.k.a PC Gen
  always_comb begin : npc_select
    automatic logic [riscv::VLEN-1:0] fetch_address;
    // check whether we come out of reset
    // this is a workaround. some tools have issues
    // having boot_addr_i in the asynchronous
    // reset assignment to npc_q, even though
    // boot_addr_i will be assigned a constant
    // on the top-level.
    if (npc_rst_load_q) begin
      npc_d         = boot_addr_i;
      fetch_address = boot_addr_i;
    end else begin
      fetch_address = npc_q;
      // keep stable by default
      npc_d         = npc_q;
    end
    // 0. Branch Prediction
    if (bp_valid_q) begin
      fetch_address = predict_address_q;
      npc_d = predict_address_q;
    end
    // 1. Default assignment
    if (if_ready_q) begin
      npc_d = {fetch_address[riscv::VLEN-1:2], 2'b0} + 'h4;
    end
    // 2. Replay instruction fetch
    if (replay_q) begin
      npc_d = replay_addr_q;
    end
    // 3. Control flow change request
    if (is_mispredict_q) begin
      npc_d = resolved_branch_i.target_address;
    end
    // 4. Return from environment call
    if (eret_q) begin
      npc_d = epc_q;
    end
    // 5. Exception/Interrupt
    if (ex_valid_q) begin
      npc_d = trap_vector_base_q;
    end
    // 6. Pipeline Flush because of CSR side effects
    // On a pipeline flush start fetching from the next address
    // of the instruction in the commit stage
    // we either came here from a flush request of a CSR instruction or AMO,
    // so as CSR or AMO instructions do not exist in a compressed form
    // we can unconditionally do PC + 4 here
    // or if the commit stage is halted, just take the current pc of the
    // instruction in the commit stage
    // TODO(zarubaf) This adder can at least be merged with the one in the csr_regfile stage
    if (set_pc_commit_i) begin
      npc_d = pc_commit_i + (halt_i ? '0 : {{riscv::VLEN - 3{1'b0}}, 3'b100});
    end
    // 7. Debug
    // enter debug on a hard-coded base-address
    if (set_debug_pc_i)
      npc_d = CVA6Cfg.DmBaseAddress[riscv::VLEN-1:0] + CVA6Cfg.HaltAddress[riscv::VLEN-1:0];
    icache_dreq_o.vaddr = fetch_address;
  end




  // Registers

    always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      npc_rst_load_q    <= 1'b1;
      npc_q             <= '0;
      bp_valid_q        <= '0;
      replay_addr_q     <= '0;
      replay_q          <= '0;
      predict_address_q <= '0;
      instr_queue_ready_q <= '0;
      if_ready_q        <= '0;
      ex_valid_q <= '0;
      set_debug_pc_q <= '0;
      eret_q <= '0
      set_pc_commit_q <= '0;
      pc_commit_q <= '0;
      trap_vector_base_q <= '0;
      epc_q <= '0;
      npc_d <= '0;
      npc_q <= '0;
      is_mispredict_q <= '0;
      speculative_q <= '0;

    end else begin
      npc_rst_load_q <= 1'b0;
      npc_q <= npc_d;
      bp_valid_q <= bp_valid;
      replay_addr_q <= replay_addr;
      replay_q <= replay;
      predict_address_q <= predict_address;
      instr_queue_ready_q <= instr_queue_ready;
      if_ready_q <= if_ready;
      ex_valid_q <= ex_valid_i;
      set_debug_pc_q <= set_debug_pc;
      eret_q <= eret_i;
      set_pc_commit_q <= set_pc_commit_i;
      pc_commit_q <= pc_commit_i;
      trap_vector_base_q <= trap_vector_base_i;
      epc_q <= epc_i;
      is_mispredict_q <= is_mispredict;
      speculative_q <= speculative;
    end
  end



  // pragma translate_off
`ifndef VERILATOR
  initial begin
    assert (FETCH_WIDTH == 32 || FETCH_WIDTH == 64)
    else $fatal(1, "[frontend] fetch width != not supported");
  end
`endif
  // pragma translate_on
endmodule
