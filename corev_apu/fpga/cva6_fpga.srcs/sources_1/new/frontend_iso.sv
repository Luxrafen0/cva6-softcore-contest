`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2025 12:13:31 PM
// Design Name: 
// Module Name: frontend_iso
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


module frontend_iso
     import ariane_pkg::*;
(

    input logic clk_i,
    output logic fetch_entry_valid_o
    );
    
    
    logic rst_ni;  // Asynchronous reset active low
    logic flush_i;  // flush request for PCGEN
    logic flush_bp_i;  // flush branch prediction
    logic halt_i;  // halt commit stage
    logic debug_mode_i;
    // global input
    logic [riscv::VLEN-1:0] boot_addr_i;
    // Set a new PC
    // mispredict
    bp_resolve_t        resolved_branch_i;  // from controller signaling a branch_predict -> update BTB
    // from commit, when flushing the whole pipeline
    logic set_pc_commit_i;  // Take the PC from commit stage
    logic [riscv::VLEN-1:0] pc_commit_i;  // PC of instruction in commit stage
    // CSR input
    logic [riscv::VLEN-1:0] epc_i;  // exception PC which we need to return to
    logic eret_i;  // return from exception
    logic [riscv::VLEN-1:0] trap_vector_base_i; // base of trap vector
    logic ex_valid_i;  // exception is valid - from commit
    logic set_debug_pc_i;  // jump to debug address
    // Instruction Fetch
    icache_dreq_t icache_dreq_o;
    icache_drsp_t icache_dreq_i;
    // instruction output port -> to processor back-end
    fetch_entry_t       fetch_entry_o;     // fetch entry containing all relevant data for the ID stage
    //output logic fetch_entry_valid_o // instruction in IF is valid
    logic fetch_entry_ready_i;
    
   frontend front
   (
     .clk_i,
    .rst_ni,  // Asynchronous reset active low
    .flush_i,  // flush request for PCGEN
    .flush_bp_i,  // flush branch prediction
    .halt_i,  // halt commit stage
    .debug_mode_i,
    // global input
    .boot_addr_i,
    // Set a new PC
    // mispredict
    .resolved_branch_i,  // from controller signaling a branch_predict -> update BTB
    // from commit, when flushing the whole pipeline
    .set_pc_commit_i,  // Take the PC from commit stage
    .pc_commit_i,  // PC of instruction in commit stage
    // CSR input
    .epc_i,  // exception PC which we need to return to
    .eret_i,  // return from exception
    .trap_vector_base_i, // base of trap vector
    .ex_valid_i,  // exception is valid - from commit
    .set_debug_pc_i,  // jump to debug address
    // Instruction Fetch
    .icache_dreq_o,
    .icache_dreq_i,
    // instruction output port -> to processor back-end
    .fetch_entry_o,   // fetch entry containing all relevant data for the ID stage
    .fetch_entry_valid_o, // instruction in IF is valid
    .fetch_entry_ready_i
   );
endmodule
