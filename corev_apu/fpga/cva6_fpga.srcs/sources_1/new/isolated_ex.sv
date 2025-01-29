module isolated_ex
     import ariane_pkg::*;
(
    input logic clk_i,
    input logic rst_ni,
    output logic flu_ready_o,
    
    output logic [TRANS_ID_BITS-1:0] flu_trans_id_o,
    
    output logic resolve_branch_o,
    
    output logic [11:0] csr_addr_o,
    
    output logic load_valid_o,
    
    output logic [TRANS_ID_BITS-1:0] fpu_trans_id_o
    
    
    );
    
    // Clock and Reset
    //logic clk_i = 1'b0;              // Clock
    //logic rst_ni = 1'b1;             // Asynchronous reset active low
    logic flush_i = 1'b0;
    logic debug_mode_i = 1'b0;

    // Data Inputs
    logic [riscv::VLEN-1:0] rs1_forwarding_i = '0;
    logic [riscv::VLEN-1:0] rs2_forwarding_i = '0;
    fu_data_t fu_data_i = '{default: '0};
    logic [riscv::VLEN-1:0] pc_i = '0;
    logic is_compressed_instr_i = 1'b0;

    // Fixed Latency Unit Outputs
    riscv::xlen_t flu_result_o;                  // Unconnected output
    //logic [TRANS_ID_BITS-1:0] flu_trans_id_o;    // Unconnected output
    exception_t flu_exception_o;                 // Unconnected output
    //logic flu_ready_o;                            // Unconnected output
    logic flu_valid_o;                            // Unconnected output

    // Branches and Jumps
    logic alu_valid_i = 1'b0;
    logic branch_valid_i = 1'b0;
    branchpredict_sbe_t branch_predict_i = '{default: '0};
    bp_resolve_t resolved_branch_o;              // Unconnected output
    //logic resolve_branch_o;                      // Unconnected output

    // CSR
    logic csr_valid_i = 1'b0;
    //logic [11:0] csr_addr_o;                     // Unconnected output
    logic csr_commit_i = 1'b0;

    // MULT
    logic mult_valid_i = 1'b1;

    // LSU
    logic lsu_valid_i = 1'b0;
    logic lsu_commit_i = 1'b0;
    logic [TRANS_ID_BITS-1:0] commit_tran_id_i = '0;
    logic stall_st_pending_i = 1'b0;
    logic amo_valid_commit_i = 1'b0;
    
    logic lsu_ready_o;                            // Unconnected output
    //logic load_valid_o;                           // Unconnected output
    riscv::xlen_t load_result_o;                  // Unconnected output
    logic [TRANS_ID_BITS-1:0] load_trans_id_o;    // Unconnected output
    exception_t load_exception_o;                 // Unconnected output
    logic store_valid_o;                          // Unconnected output
    riscv::xlen_t store_result_o;                 // Unconnected output
    logic [TRANS_ID_BITS-1:0] store_trans_id_o;   // Unconnected output
    exception_t store_exception_o;                // Unconnected output
    logic lsu_commit_ready_o;                     // Unconnected output
    logic no_st_pending_o;                        // Unconnected output

    // FPU
    logic fpu_valid_i = 1'b0;
    logic [1:0] fpu_fmt_i = 2'b00;
    logic [2:0] fpu_rm_i = 3'b000;
    logic [2:0] fpu_frm_i = 3'b000;
    logic [6:0] fpu_prec_i = 7'b0000000;
    
    logic fpu_ready_o;                             // Unconnected output
    //logic [TRANS_ID_BITS-1:0] fpu_trans_id_o;      // Unconnected output
    riscv::xlen_t fpu_result_o;                    // Unconnected output
    logic fpu_valid_o;                             // Unconnected output
    exception_t fpu_exception_o;                   // Unconnected output

    // CoreV-X-Interface
    logic x_valid_i = 1'b0;
    logic [31:0] x_off_instr_i = '0;
    logic acc_valid_i = 1'b0;

    logic x_ready_o;                               // Unconnected output
    logic [TRANS_ID_BITS-1:0] x_trans_id_o;        // Unconnected output
    exception_t x_exception_o;                     // Unconnected output
    riscv::xlen_t x_result_o;                      // Unconnected output
    logic x_valid_o;                               // Unconnected output
    logic x_we_o;                                  // Unconnected output
    cvxif_pkg::cvxif_req_t cvxif_req_o;            // Unconnected output
    cvxif_pkg::cvxif_resp_t cvxif_resp_i = '{default: '0};

    // Memory Management
    logic enable_translation_i = 1'b0;
    logic en_ld_st_translation_i = 1'b0;
    logic flush_tlb_i = 1'b0;

    riscv::priv_lvl_t priv_lvl_i = riscv::PRIV_LVL_M;
    riscv::priv_lvl_t ld_st_priv_lvl_i = riscv::PRIV_LVL_M;
    logic sum_i = 1'b0;
    logic mxr_i = 1'b0;
    logic [riscv::PPNW-1:0] satp_ppn_i = '0;
    logic [ASID_WIDTH-1:0] asid_i = '0;

    // Icache Translation Requests
    icache_arsp_t icache_areq_i = '{default: '0};
    icache_areq_t icache_areq_o;                   // Unconnected output

    // Dcache Interface
    dcache_req_o_t [2:0] dcache_req_ports_i = '{default: '0};
    dcache_req_i_t [2:0] dcache_req_ports_o;       // Unconnected output
    logic dcache_wbuffer_empty_i = 1'b0;
    logic dcache_wbuffer_not_ni_i = 1'b0;
    amo_req_t amo_req_o;                           // Unconnected output
    amo_resp_t amo_resp_i = '{default: '0};

    // Performance Counters
    logic itlb_miss_o;                             // Unconnected output
    logic dtlb_miss_o;                             // Unconnected output

    // PMPs
    riscv::pmpcfg_t [15:0] pmpcfg_i = '{default: '0};
    logic [15:0][riscv::PLEN-3:0] pmpaddr_i = '{default: '0};

    // RVFI Outputs
    logic [riscv::VLEN-1:0] lsu_addr_o;            // Unconnected output
    logic [riscv::PLEN-1:0] mem_paddr_o;           // Unconnected output
    logic [(riscv::XLEN/8)-1:0] lsu_rmask_o;       // Unconnected output
    logic [(riscv::XLEN/8)-1:0] lsu_wmask_o;       // Unconnected output
    logic [ariane_pkg::TRANS_ID_BITS-1:0] lsu_addr_trans_id_o;  // Unconnected output
    
ex_stage ex_stage_inst (
    .clk_i(clk_i),                       // Clock
    .rst_ni(rst_ni),                      // Asynchronous reset active low
    .flush_i,
    .debug_mode_i,

    .rs1_forwarding_i,
    .rs2_forwarding_i,
    .fu_data_i,
    .pc_i,
    .is_compressed_instr_i,

    // Fixed latency unit(s)
    .flu_result_o,
    .flu_trans_id_o,
    .flu_exception_o,
    .flu_ready_o(flu_ready_o),
    .flu_valid_o,

    // Branches and Jumps
    .alu_valid_i,
    .branch_valid_i,
    .branch_predict_i,
    .resolved_branch_o,
    .resolve_branch_o,

    // CSR
    .csr_valid_i,
    .csr_addr_o,
    .csr_commit_i,

    // MULT
    .mult_valid_i,

    // LSU
    .lsu_ready_o,
    .lsu_valid_i,
    .load_valid_o,
    .load_result_o,
    .load_trans_id_o,
    .load_exception_o,
    .store_valid_o,
    .store_result_o,
    .store_trans_id_o,
    .store_exception_o,
    .lsu_commit_i,
    .lsu_commit_ready_o,
    .commit_tran_id_i,
    .stall_st_pending_i,
    .no_st_pending_o,
    .amo_valid_commit_i,

    // FPU
    .fpu_ready_o,
    .fpu_valid_i,
    .fpu_fmt_i,
    .fpu_rm_i,
    .fpu_frm_i,
    .fpu_prec_i,
    .fpu_trans_id_o,
    .fpu_result_o,
    .fpu_valid_o,
    .fpu_exception_o,

    // CoreV-X-Interface
    .x_valid_i,
    .x_ready_o,
    .x_off_instr_i,
    .x_trans_id_o,
    .x_exception_o,
    .x_result_o,
    .x_valid_o,
    .x_we_o,
    .cvxif_req_o,
    .cvxif_resp_i,
    .acc_valid_i,

    // Memory Management
    .enable_translation_i,
    .en_ld_st_translation_i,
    .flush_tlb_i,

    .priv_lvl_i,
    .ld_st_priv_lvl_i,
    .sum_i,
    .mxr_i,
    .satp_ppn_i,
    .asid_i,

    // Icache translation requests
    .icache_areq_i,
    .icache_areq_o,

    // Interface to Dcache
    .dcache_req_ports_i,
    .dcache_req_ports_o,
    .dcache_wbuffer_empty_i,
    .dcache_wbuffer_not_ni_i,
    .amo_req_o,
    .amo_resp_i,

    // Performance counters
    .itlb_miss_o,
    .dtlb_miss_o,

    // PMPs
    .pmpcfg_i,
    .pmpaddr_i,

    // RVFI
    .lsu_addr_o,
    .mem_paddr_o,
    .lsu_rmask_o,
    .lsu_wmask_o,
    .lsu_addr_trans_id_o
  );

endmodule
