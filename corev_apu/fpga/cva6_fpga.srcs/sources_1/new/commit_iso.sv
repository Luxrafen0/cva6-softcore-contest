`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2025 03:05:59 PM
// Design Name: 
// Module Name: commit_iso
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module commit_iso
    import ariane_pkg::*;
#(
    parameter config_pkg::cva6_cfg_t CVA6Cfg = config_pkg::cva6_cfg_empty
)
( 
        input logic clk_i,
        output logic [CVA6Cfg.NrCommitPorts-1:0][4:0] waddr_o
);

    logic rst_ni = '0;
    logic halt_i = '0;  // request to halt the core
    logic flush_dcache_i = '0;  // request to flush dcache -> also flush the pipeline
    exception_t exception_o;  // take exception to controller
    logic dirty_fp_state_o;  // mark the F state as dirty
    logic single_step_i = '0;  // we are in single step debug mode
    // from scoreboard
    scoreboard_entry_t [CVA6Cfg.NrCommitPorts-1:0] commit_instr_i = '0;    // the instruction we want to commit
    logic [CVA6Cfg.NrCommitPorts-1:0]              commit_ack_o;       // acknowledge that we are indeed committing
    // to register file
    //logic [CVA6Cfg.NrCommitPorts-1:0][4:0] waddr_o;  // register file write address
    logic [CVA6Cfg.NrCommitPorts-1:0][riscv::XLEN-1:0] wdata_o;  // register file write data
    logic [CVA6Cfg.NrCommitPorts-1:0] we_gpr_o;  // register file write enable
    logic [CVA6Cfg.NrCommitPorts-1:0] we_fpr_o;  // floating point register enable
    // Atomic memory operations
    amo_resp_t amo_resp_i = '0;  // result of AMO operation
    // to CSR file and PC Gen (because on certain CSR instructions we'll need to flush the whole pipeline)
    logic [riscv::VLEN-1:0] pc_o;
    // to/from CSR file
    fu_op csr_op_o;  // decoded CSR operation
    riscv::xlen_t csr_wdata_o;  // data to write to CSR
    riscv::xlen_t csr_rdata_i = '1;  // data to read from CSR
    exception_t                              csr_exception_i = '0;    // exception or interrupt occurred in CSR stage (the same as commit)
    logic csr_write_fflags_o;  // write the fflags CSR
    // commit signals to ex
    logic commit_lsu_o;  // commit the pending store
    logic commit_lsu_ready_i = '1;  // commit buffer of LSU is ready
    logic [TRANS_ID_BITS-1:0] commit_tran_id_o;  // transaction id of first commit port
    logic amo_valid_commit_o;  // valid AMO in commit stage
    logic no_st_pending_i = '0;  // there is no store pending
    logic commit_csr_o;  // commit the pending CSR instruction
    logic fence_i_o;  // flush I$ and pipeline
    logic fence_o;  // flush D$ and pipeline
    logic flush_commit_o;  // request a pipeline flush
    logic sfence_vma_o; // flush TLBs and pipeline
    
    commit_stage co_st(
    
    .rst_ni,
    .halt_i,  // request to halt the core
    .flush_dcache_i,  // request to flush dcache -> also flush the pipeline
    .exception_o, // take exception to controller
    .dirty_fp_state_o,  // mark the F state as dirty
    .single_step_i,  // we are in single step debug mode
    // from scoreboard
    .commit_instr_i,    // the instruction we want to commit
    .commit_ack_o,       // acknowledge that we are indeed committing
    // to register file
    //logic [CVA6Cfg.NrCommitPorts-1:0][4:0] waddr_o;  // register file write address
    .wdata_o, // register file write data
    .we_gpr_o, // register file write enable
    .we_fpr_o,  // floating point register enable
    // Atomic memory operations
    .amo_resp_i,  // result of AMO operation
    // to CSR file and PC Gen (because on certain CSR instructions we'll need to flush the whole pipeline)
    .pc_o,
    // to/from CSR file
    .csr_op_o,  // decoded CSR operation
    .csr_wdata_o,  // data to write to CSR
    .csr_rdata_i,  // data to read from CSR
    .csr_exception_i,    // exception or interrupt occurred in CSR stage (the same as commit)
    .csr_write_fflags_o,  // write the fflags CSR
    // commit signals to ex
    .commit_lsu_o,  // commit the pending store
    .commit_lsu_ready_i,  // commit buffer of LSU is ready
    .commit_tran_id_o,  // transaction id of first commit port
    .amo_valid_commit_o,  // valid AMO in commit stage
    .no_st_pending_i,  // there is no store pending
    .commit_csr_o,  // commit the pending CSR instruction
    .fence_i_o, // flush I$ and pipeline
    .fence_o,  // flush D$ and pipeline
    .flush_commit_o,  // request a pipeline flush
    .sfence_vma_o // flush TLBs and pipeline
  
    );
endmodule
