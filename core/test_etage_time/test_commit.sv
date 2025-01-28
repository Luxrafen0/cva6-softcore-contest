module test_commit
(
    input logic clk_sys,
    input logic cpu_reset
);
    logic halt_ctrl;
    logic dcache_flush_ctrl_cache;
    exception_t ex_commit;

    logic csr_commit_commit_ex;
    logic dirty_fp_state;
    logic dirty_v_state;
    // LSU Commit
    logic lsu_commit_commit_ex;
    logic lsu_commit_ready_ex_commit;
    logic [TRANS_ID_BITS-1:0] lsu_commit_trans_id;
    logic stall_st_pending_ex;
    logic no_st_pending_ex;
    logic no_st_pending_commit;
    logic amo_valid_commit;
    // ACCEL Commit
    logic acc_valid_acc_ex;
    // --------------
    // ID <-> COMMIT
    // --------------
    scoreboard_entry_t [CVA6ExtendCfg.NrCommitPorts-1:0] commit_instr_id_commit;
    // --------------
    // COMMIT <-> ID
    // --------------
    logic [CVA6ExtendCfg.NrCommitPorts-1:0][4:0] waddr_commit_id;
    logic [CVA6ExtendCfg.NrCommitPorts-1:0][riscv::XLEN-1:0] wdata_commit_id;
    logic [CVA6ExtendCfg.NrCommitPorts-1:0] we_gpr_commit_id;
    logic [CVA6ExtendCfg.NrCommitPorts-1:0] we_fpr_commit_id;

    logic single_step_csr_commit;
    logic [CVA6ExtendCfg.NrCommitPorts-1:0] commit_ack;
    amo_resp_t amo_resp;
    logic [                riscv::VLEN-1:0]pc_commit
    fu_op csr_op_commit_csr
    riscv::xlen_t csr_wdata_commit_csr
    riscv::xlen_t csr_rdata_csr_commit
    logic csr_write_fflags_commit_cs;
    logic csr_exception_csr_commit;
    logic fence_i_commit_controller;
    logic fence_commit_controller;
    logic sfence_vma_commit_controller;
    logic flush_commit;

  commit_stage #(
      .CVA6Cfg(CVA6ExtendCfg)
  ) commit_stage_i (
      .clk_i,
      .rst_ni,
      .halt_i            ('0),
      .flush_dcache_i    ('0),
      .exception_o       (ex_commit),
      .dirty_fp_state_o  (dirty_fp_state),
      .single_step_i     ('0),
      .commit_instr_i    ('0),
      .commit_ack_o      (commit_ack),
      .no_st_pending_i   ('0),
      .waddr_o           (waddr_commit_id),
      .wdata_o           (wdata_commit_id),
      .we_gpr_o          (we_gpr_commit_id),
      .we_fpr_o          (we_fpr_commit_id),
      .commit_lsu_o      (lsu_commit_commit_ex),
      .commit_lsu_ready_i('0),
      .commit_tran_id_o  (lsu_commit_trans_id),
      .amo_valid_commit_o(amo_valid_commit),
      .amo_resp_i        ('0),
      .commit_csr_o      (csr_commit_commit_ex),
      .pc_o              (pc_commit),
      .csr_op_o          (csr_op_commit_csr),
      .csr_wdata_o       (csr_wdata_commit_csr),
      .csr_rdata_i       ('0),
      .csr_write_fflags_o(csr_write_fflags_commit_cs),
      .csr_exception_i   ('0),
      .fence_i_o         (fence_i_commit_controller),
      .fence_o           (fence_commit_controller),
      .sfence_vma_o      (sfence_vma_commit_controller),
      .flush_commit_o    (flush_commit),
      .*
  );
  
endmodule;