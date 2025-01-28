
module test_fetch (
    input logic clk_sys,
    input logic rst_ni
);
  icache_drsp_t icache_dreq_cache_if;
  icache_dreq_t icache_dreq_if_cache;

 
  fetch_entry_t fetch_entry_if_id;
  logic fetch_valid_if_id;
  logic fetch_ready_id_if;
  logic icache_miss_cache_perf;
  icache_arsp_t icache_areq_cache_ex;
  logic dcache_flush_ack_cache_ctrl;
  amo_resp_t amo_resp;
  logic dcache_miss_cache_perf;
  logic          [                 NumPorts-1:0][DCACHE_SET_ASSOC-1:0] miss_vld_bits;
  dcache_req_o_t [NumPorts-1:0] dcache_req_from_cache;
  logic dcache_commit_wbuffer_empty;
  logic dcache_commit_wbuffer_not_ni;
  noc_req_t noc_req_o;
  logic inval_ready;
  logic clk_i;
logic eth_clk;
logic spi_clk_i;
logic phy_tx_clk;
logic sd_clk_sys;


  // --------------
  // Frontend
  // --------------
  frontend #(
      .CVA6Cfg(CVA6ExtendCfg)
  ) i_frontend (
      .flush_i            ('0),                  // not entirely correct
      .flush_bp_i         (1'b0),
      .halt_i             ('0),
      .debug_mode_i       ('0),
      .boot_addr_i        ('0),
      .icache_dreq_i      (icache_dreq_cache_if),
      .icache_dreq_o      (icache_dreq_if_cache),
      .resolved_branch_i  ('0),
      .pc_commit_i        ('0),
      .set_pc_commit_i    ('0),
      .set_debug_pc_i     ('0),
      .epc_i              ('0),
      .eret_i             ('0),
      .trap_vector_base_i ('0),
      .ex_valid_i         ('0),
      .fetch_entry_o      (fetch_entry_if_id),
      .fetch_entry_valid_o(fetch_valid_if_id),
      .fetch_entry_ready_i(fetch_ready_id_if),
      .*
  );

   parameter type noc_req_t = struct packed {
      axi_aw_chan_t aw;
      logic         aw_valid;
      axi_w_chan_t  w;
      logic         w_valid;
      logic         b_ready;
      axi_ar_chan_t ar;
      logic         ar_valid;
      logic         r_ready;
    };


    parameter type noc_resp_t = struct packed {
      logic    aw_ready;
      logic    ar_ready;
      logic    w_ready;
      logic    b_valid;
      b_chan_t b;
      logic    r_valid;
      r_chan_t r;
    };


    wt_cache_subsystem #(
        .CVA6Cfg   (CVA6ExtendCfg),
        .NumPorts  (4),
        .noc_req_t (noc_req_t),
        .noc_resp_t(noc_resp_t)
    ) i_cache_subsystem (
        // to D$
        .clk_i             (clk_i),
        .rst_ni            (rst_ni),
        // I$
        .icache_en_i       ('0),
        .icache_flush_i    ('0),
        .icache_miss_o     (icache_miss_cache_perf),
        .icache_areq_i     ('0),
        .icache_areq_o     (icache_areq_cache_ex),
        .icache_dreq_i     (icache_dreq_if_cache),
        .icache_dreq_o     (icache_dreq_cache_if),
        // D$
        .dcache_enable_i   ('0),
        .dcache_flush_i    ('0),
        .dcache_flush_ack_o(dcache_flush_ack_cache_ctrl),
        // to commit stage
        .dcache_amo_req_i  ('0),
        .dcache_amo_resp_o (amo_resp),
        // from PTW, Load Unit  and Store Unit
        .dcache_miss_o     (dcache_miss_cache_perf),
        .miss_vld_bits_o   (miss_vld_bits),
        .dcache_req_ports_i('0),
        .dcache_req_ports_o(dcache_req_from_cache),
        // write buffer status
        .wbuffer_empty_o   (dcache_commit_wbuffer_empty),
        .wbuffer_not_ni_o  (dcache_commit_wbuffer_not_ni),
        // memory side
        .noc_req_o         (noc_req_o),
        .noc_resp_i        ('0),
        .inval_addr_i      ('0),
        .inval_valid_i     ('0),
        .inval_ready_o     (inval_ready)
    );


xlnx_clk_gen i_xlnx_clk_gen (
        .clk_out1 ( clk_i         ), // 40 MHz
        .clk_out2 ( phy_tx_clk    ), // 125 MHz (for RGMII PHY)
        .clk_out3 ( eth_clk       ), // 125 MHz quadrature (90 deg phase shift)
        .clk_out4 ( sd_clk_sys    ), // 50 MHz clock
        .reset    ( rst_ni     ),
        .locked   ( pll_locked    ),
        .clk_in1  ( clk_sys )  //125 MHz
);





