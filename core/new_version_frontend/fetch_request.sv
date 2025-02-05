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

module fetch_request
  import ariane_pkg::*;
#(
    parameter config_pkg::cva6_cfg_t CVA6Cfg = config_pkg::cva6_cfg_empty
) (
    input logic clk_i,  // Clock
    input logic rst_ni,  // Asynchronous reset active low
    input logic flush_i,  // flush request for PCGEN

    input  bp_resolve_t resolved_branch_i,  // from controller signaling a branch_predict -> update BTB
    // to I$
    output icache_dreq_t icache_dreq_o,
    
    // from fetch
    input logic instr_queue_ready_i,
    input logic bp_valid_i,
    input logic replay_i,
    input logic speculative_i,
    
    // from next_pc
    input logic [riscv::VLEN-1:0] next_addr_i,

    //to fetch
    output logic kills2_o
);

  logic bp_valid_q;
  logic replay_q;
  logic is_mispredict_q, instr_queue_ready_q,flush_q;
  logic [riscv::VLEN-1:0] npc_d, npc_q;  // next PC
  logic [riscv::VLEN-1:0] next_addr_q;

  assign is_mispredict = resolved_branch_i.valid & resolved_branch_i.is_mispredict;

  // Cache interface
  assign icache_dreq_o.req = instr_queue_ready_q;
  assign icache_dreq_o.kill_s1 = is_mispredict_q | flush_q | replay_q;
  assign icache_dreq_o.kill_s2 = icache_dreq_o.kill_s1 | bp_valid_q;
  assign kills2_o = icache_dreq_o.kill_s1 | bp_valid_q;
  assign icache_dreq_o.vaddr = next_addr_q;
  // assert on branch, deassert when resolved
  logic speculative_q;
  assign icache_dreq_o.spec = speculative_q;

  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      replay_q <= '0;
      bp_valid_q <= '0;
      flush_q <= '0;
      is_mispredict_q <= '0;
      next_addr_q <= '0;
      instr_queue_ready_q <= '0;
      speculative_q <= '0;
    end else begin
      replay_q <= replay_i;
      bp_valid_q <= bp_valid_i;
      flush_q <= flush_i;
      is_mispredict_q <= is_mispredict;
      next_addr_q <= next_addr_i;
      instr_queue_ready_q <= instr_queue_ready_i;
      speculative_q <= speculative_i;
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