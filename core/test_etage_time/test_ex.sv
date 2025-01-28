module test_ex
    import ariane_pkg::*;
#(
    input logic clk_i,
    input logic rst_ni,




);

  // ----------------
  // DCache <-> *
  // ----------------
  dcache_req_i_t [                          2:0]                       dcache_req_ports_ex_cache;
  dcache_req_o_t [                          2:0]                       dcache_req_ports_cache_ex;
  dcache_req_i_t [                          1:0]                       dcache_req_ports_acc_cache;
  dcache_req_o_t [                          1:0]                       dcache_req_ports_cache_acc;
  logic                                                                dcache_commit_wbuffer_empty;
  logic                                                                dcache_commit_wbuffer_not_ni;

  logic          [              riscv::VLEN-1:0]                       lsu_addr;
  logic          [              riscv::PLEN-1:0]                       mem_paddr;
  logic          [          (riscv::XLEN/8)-1:0]                       lsu_rmask;
  logic          [          (riscv::XLEN/8)-1:0]                       lsu_wmask;
  logic          [ariane_pkg::TRANS_ID_BITS-1:0]                       lsu_addr_trans_id;

    ex_stage #(
      .CVA6Cfg   (CVA6ExtendCfg),
      .ASID_WIDTH(ASID_WIDTH)
  ) ex_stage_i (
      .clk_i                (clk_i),
      .rst_ni               (rst_ni),
      .debug_mode_i         (debug_mode),
      .flush_i              (flush_ctrl_ex),
      .rs1_forwarding_i     (rs1_forwarding_id_ex),
      .rs2_forwarding_i     (rs2_forwarding_id_ex),
      .fu_data_i            (fu_data_id_ex),
      .pc_i                 (pc_id_ex),
      .is_compressed_instr_i(is_compressed_instr_id_ex),
      // fixed latency units
      .flu_result_o         (flu_result_ex_id),
      .flu_trans_id_o       (flu_trans_id_ex_id),
      .flu_valid_o          (flu_valid_ex_id),
      .flu_exception_o      (flu_exception_ex_id),
      .flu_ready_o          (flu_ready_ex_id),
      // ALU
      .alu_valid_i          (alu_valid_id_ex),
      // Branches and Jumps
      .branch_valid_i       (branch_valid_id_ex),
      .branch_predict_i     (branch_predict_id_ex),       // branch predict to ex
      .resolved_branch_o    (resolved_branch),
      .resolve_branch_o     (resolve_branch_ex_id),
      // CSR
      .csr_valid_i          (csr_valid_id_ex),
      .csr_addr_o           (csr_addr_ex_csr_reg),
      .csr_commit_i         (csr_commit_commit_ex),       // from commit
      // MULT
      .mult_valid_i         (mult_valid_id_ex),
      // LSU
      .lsu_ready_o          (lsu_ready_ex_id),
      .lsu_valid_i          (lsu_valid_id_ex),

      .load_result_o   (load_result_ex_id),
      .load_trans_id_o (load_trans_id_ex_id),
      .load_valid_o    (load_valid_ex_id),
      .load_exception_o(load_exception_ex_id),

      .store_result_o   (store_result_ex_id),
      .store_trans_id_o (store_trans_id_ex_id),
      .store_valid_o    (store_valid_ex_id),
      .store_exception_o(store_exception_ex_id),

      .lsu_commit_i           (lsu_commit_commit_ex),          // from commit
      .lsu_commit_ready_o     (lsu_commit_ready_ex_commit),    // to commit
      .commit_tran_id_i       (lsu_commit_trans_id),           // from commit
      .stall_st_pending_i     (stall_st_pending_ex),
      .no_st_pending_o        (no_st_pending_ex),
      // FPU
      .fpu_ready_o            (fpu_ready_ex_id),
      .fpu_valid_i            (fpu_valid_id_ex),
      .fpu_fmt_i              (fpu_fmt_id_ex),
      .fpu_rm_i               (fpu_rm_id_ex),
      .fpu_frm_i              (frm_csr_id_issue_ex),
      .fpu_prec_i             (fprec_csr_ex),
      .fpu_trans_id_o         (fpu_trans_id_ex_id),
      .fpu_result_o           (fpu_result_ex_id),
      .fpu_valid_o            (fpu_valid_ex_id),
      .fpu_exception_o        (fpu_exception_ex_id),
      .amo_valid_commit_i     (amo_valid_commit),
      .amo_req_o              (amo_req),
      .amo_resp_i             (amo_resp),
      // CoreV-X-Interface
      .x_valid_i              (x_issue_valid_id_ex),
      .x_ready_o              (x_issue_ready_ex_id),
      .x_off_instr_i          (x_off_instr_id_ex),
      .x_trans_id_o           (x_trans_id_ex_id),
      .x_exception_o          (x_exception_ex_id),
      .x_result_o             (x_result_ex_id),
      .x_valid_o              (x_valid_ex_id),
      .x_we_o                 (x_we_ex_id),
      .cvxif_req_o            (cvxif_req),
      .cvxif_resp_i           (cvxif_resp),
      // Accelerator
      .acc_valid_i            (acc_valid_acc_ex),
      // Performance counters
      .itlb_miss_o            (itlb_miss_ex_perf),
      .dtlb_miss_o            (dtlb_miss_ex_perf),
      // Memory Management
      .enable_translation_i   (enable_translation_csr_ex),     // from CSR
      .en_ld_st_translation_i (en_ld_st_translation_csr_ex),
      .flush_tlb_i            (flush_tlb_ctrl_ex),
      .priv_lvl_i             (priv_lvl),                      // from CSR
      .ld_st_priv_lvl_i       (ld_st_priv_lvl_csr_ex),         // from CSR
      .sum_i                  (sum_csr_ex),                    // from CSR
      .mxr_i                  (mxr_csr_ex),                    // from CSR
      .satp_ppn_i             (satp_ppn_csr_ex),               // from CSR
      .asid_i                 (asid_csr_ex),                   // from CSR
      .icache_areq_i          (icache_areq_cache_ex),
      .icache_areq_o          (icache_areq_ex_cache),
      // DCACHE interfaces
      .dcache_req_ports_i     (dcache_req_ports_cache_ex),
      .dcache_req_ports_o     (dcache_req_ports_ex_cache),
      .dcache_wbuffer_empty_i (dcache_commit_wbuffer_empty),
      .dcache_wbuffer_not_ni_i(dcache_commit_wbuffer_not_ni),
      // PMP
      .pmpcfg_i               (pmpcfg),
      .pmpaddr_i              (pmpaddr),
      //RVFI
      .lsu_addr_o             (lsu_addr),
      .mem_paddr_o            (mem_paddr),
      .lsu_rmask_o            (lsu_rmask),
      .lsu_wmask_o            (lsu_wmask),
      .lsu_addr_trans_id_o    (lsu_addr_trans_id)
  );


      perf_counters #(
        .CVA6Cfg (CVA6ExtendCfg),
        .NumPorts(NumPorts)
    ) perf_counters_i (
        .clk_i         (clk_i),
        .rst_ni        (rst_ni),
        .debug_mode_i  (debug_mode),
        .addr_i        (addr_csr_perf),
        .we_i          (we_csr_perf),
        .data_i        (data_csr_perf),
        .data_o        (data_perf_csr),
        .commit_instr_i(commit_instr_id_commit),
        .commit_ack_i  (commit_ack),

        .l1_icache_miss_i   (icache_miss_cache_perf),
        .l1_dcache_miss_i   (dcache_miss_cache_perf),
        .itlb_miss_i        (itlb_miss_ex_perf),
        .dtlb_miss_i        (dtlb_miss_ex_perf),
        .sb_full_i          (sb_full),
        .if_empty_i         (~fetch_valid_if_id),
        .ex_i               (ex_commit),
        .eret_i             (eret),
        .resolved_branch_i  (resolved_branch),
        .branch_exceptions_i(flu_exception_ex_id),
        .l1_icache_access_i (icache_dreq_if_cache),
        .l1_dcache_access_i (dcache_req_ports_ex_cache),
        .miss_vld_bits_i    (miss_vld_bits),
        .i_tlb_flush_i      (flush_tlb_ctrl_ex),
        .stall_issue_i      (stall_issue),
        .mcountinhibit_i    (mcountinhibit_csr_perf)
    );
  end : gen_perf_counter
  else begin : gen_no_perf_counter
    assign data_perf_csr = '0;
  end : gen_no_perf_counter



      wt_cache_subsystem #(
        .CVA6Cfg   (CVA6ExtendCfg),
        .NumPorts  (NumPorts),
        .noc_req_t (noc_req_t),
        .noc_resp_t(noc_resp_t)
    ) i_cache_subsystem (
        // to D$
        .clk_i             (clk_i),
        .rst_ni            (rst_ni),
        // I$
        .icache_en_i       (icache_en_csr),
        .icache_flush_i    (icache_flush_ctrl_cache),
        .icache_miss_o     (icache_miss_cache_perf),
        .icache_areq_i     (icache_areq_ex_cache),
        .icache_areq_o     (icache_areq_cache_ex),
        .icache_dreq_i     (icache_dreq_if_cache),
        .icache_dreq_o     (icache_dreq_cache_if),
        // D$
        .dcache_enable_i   (dcache_en_csr_nbdcache),
        .dcache_flush_i    (dcache_flush_ctrl_cache),
        .dcache_flush_ack_o(dcache_flush_ack_cache_ctrl),
        // to commit stage
        .dcache_amo_req_i  (amo_req),
        .dcache_amo_resp_o (amo_resp),
        // from PTW, Load Unit  and Store Unit
        .dcache_miss_o     (dcache_miss_cache_perf),
        .miss_vld_bits_o   (miss_vld_bits),
        .dcache_req_ports_i(dcache_req_to_cache),
        .dcache_req_ports_o(dcache_req_from_cache),
        // write buffer status
        .wbuffer_empty_o   (dcache_commit_wbuffer_empty),
        .wbuffer_not_ni_o  (dcache_commit_wbuffer_not_ni),
        // memory side
        .noc_req_o         (noc_req_o),
        .noc_resp_i        (noc_resp_i),
        .inval_addr_i      (inval_addr),
        .inval_valid_i     (inval_valid),
        .inval_ready_o     (inval_ready)
    );


  // -------------------
  // Cache Subsystem
  // -------------------

  // Acc dispatcher and store buffer share a dcache request port.
  // Store buffer always has priority access over acc dipsatcher.
  dcache_req_i_t [NumPorts-1:0] dcache_req_to_cache;
  dcache_req_o_t [NumPorts-1:0] dcache_req_from_cache;

  // D$ request
  assign dcache_req_to_cache[0] = dcache_req_ports_ex_cache[0];
  assign dcache_req_to_cache[1] = dcache_req_ports_ex_cache[1];
  assign dcache_req_to_cache[2] = dcache_req_ports_acc_cache[0];
  assign dcache_req_to_cache[3] = dcache_req_ports_ex_cache[2].data_req ? dcache_req_ports_ex_cache [2] :
                                                                          dcache_req_ports_acc_cache[1];

  // D$ response
  assign dcache_req_ports_cache_ex[0] = dcache_req_from_cache[0];
  assign dcache_req_ports_cache_ex[1] = dcache_req_from_cache[1];
  assign dcache_req_ports_cache_acc[0] = dcache_req_from_cache[2];
  always_comb begin : gen_dcache_req_store_data_gnt
    dcache_req_ports_cache_ex[2]  = dcache_req_from_cache[3];
    dcache_req_ports_cache_acc[1] = dcache_req_from_cache[3];

    // Set gnt signal
    dcache_req_ports_cache_ex[2].data_gnt &= dcache_req_ports_ex_cache[2].data_req;
    dcache_req_ports_cache_acc[1].data_gnt &= !dcache_req_ports_ex_cache[2].data_req;
  end