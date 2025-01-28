

module test_id
import ariane_pkg::*;
#(
    parameter config_pkg::cva6_cfg_t CVA6Cfg = cva6_config_pkg::cva6_cfg
)   
(
    input logic clk_sys,
    input logic cpu_reset
);
    bit IsRVFI = bit'(cva6_config_pkg::CVA6ConfigRvfiTrace);
    
    typedef struct packed {
      logic [config_pkg::NRET-1:0]                  valid;
      logic [config_pkg::NRET*64-1:0]               order;
      logic [config_pkg::NRET*config_pkg::ILEN-1:0] insn;
      logic [config_pkg::NRET-1:0]                  trap;
      logic [config_pkg::NRET*riscv::XLEN-1:0]      cause;
      logic [config_pkg::NRET-1:0]                  halt;
      logic [config_pkg::NRET-1:0]                  intr;
      logic [config_pkg::NRET*2-1:0]                mode;
      logic [config_pkg::NRET*2-1:0]                ixl;
      logic [config_pkg::NRET*5-1:0]                rs1_addr;
      logic [config_pkg::NRET*5-1:0]                rs2_addr;
      logic [config_pkg::NRET*riscv::XLEN-1:0]      rs1_rdata;
      logic [config_pkg::NRET*riscv::XLEN-1:0]      rs2_rdata;
      logic [config_pkg::NRET*5-1:0]                rd_addr;
      logic [config_pkg::NRET*riscv::XLEN-1:0]      rd_wdata;
      logic [config_pkg::NRET*riscv::XLEN-1:0]      pc_rdata;
      logic [config_pkg::NRET*riscv::XLEN-1:0]      pc_wdata;
      logic [config_pkg::NRET*riscv::VLEN-1:0]      mem_addr;
      logic [config_pkg::NRET*riscv::PLEN-1:0]      mem_paddr;
      logic [config_pkg::NRET*(riscv::XLEN/8)-1:0]  mem_rmask;
      logic [config_pkg::NRET*(riscv::XLEN/8)-1:0]  mem_wmask;
      logic [config_pkg::NRET*riscv::XLEN-1:0]      mem_rdata;
      logic [config_pkg::NRET*riscv::XLEN-1:0]      mem_wdata;
    } rvfi_instr_t;
    // AXI types
    typedef struct packed {
      logic [CVA6Cfg.AxiIdWidth-1:0]   id;
      logic [CVA6Cfg.AxiAddrWidth-1:0] addr;
      axi_pkg::len_t                   len;
      axi_pkg::size_t                  size;
      axi_pkg::burst_t                 burst;
      logic                            lock;
      axi_pkg::cache_t                 cache;
      axi_pkg::prot_t                  prot;
      axi_pkg::qos_t                   qos;
      axi_pkg::region_t                region;
      logic [CVA6Cfg.AxiUserWidth-1:0] user;
    }axi_ar_chan_t ;
    
    typedef struct packed {
      logic [CVA6Cfg.AxiIdWidth-1:0]   id;
      logic [CVA6Cfg.AxiAddrWidth-1:0] addr;
      axi_pkg::len_t                   len;
      axi_pkg::size_t                  size;
      axi_pkg::burst_t                 burst;
      logic                            lock;
      axi_pkg::cache_t                 cache;
      axi_pkg::prot_t                  prot;
      axi_pkg::qos_t                   qos;
      axi_pkg::region_t                region;
      axi_pkg::atop_t                  atop;
      logic [CVA6Cfg.AxiUserWidth-1:0] user;
    } axi_aw_chan_t;
    
    typedef struct packed {
      logic [CVA6Cfg.AxiDataWidth-1:0]     data;
      logic [(CVA6Cfg.AxiDataWidth/8)-1:0] strb;
      logic                                last;
      logic [CVA6Cfg.AxiUserWidth-1:0]     user;
    } axi_w_chan_t;
    
    typedef struct packed {
      logic [CVA6Cfg.AxiIdWidth-1:0]   id;
      axi_pkg::resp_t                  resp;
      logic [CVA6Cfg.AxiUserWidth-1:0] user;
    }b_chan_t;
    
    typedef struct packed {
      logic [CVA6Cfg.AxiIdWidth-1:0]   id;
      logic [CVA6Cfg.AxiDataWidth-1:0] data;
      axi_pkg::resp_t                  resp;
      logic                            last;
      logic [CVA6Cfg.AxiUserWidth-1:0] user;
    }r_chan_t;
    
    typedef struct packed {
      axi_aw_chan_t aw;
      logic         aw_valid;
      axi_w_chan_t  w;
      logic         w_valid;
      logic         b_ready;
      axi_ar_chan_t ar;
      logic         ar_valid;
      logic         r_ready;
    }noc_req_t;
    
    typedef struct packed {
      logic    aw_ready;
      logic    ar_ready;
      logic    w_ready;
      logic    b_valid;
      b_chan_t b;
      logic    r_valid;
      r_chan_t r;
    }noc_resp_t;
    //
    typedef logic acc_cfg_t ;
    acc_cfg_t AccCfg = '0;
    typedef cvxif_pkg::cvxif_req_t cvxif_req_t;
    typedef cvxif_pkg::cvxif_resp_t  cvxif_resp_t;
    logic fetch_ready_id_if;
   

    scoreboard_entry_t issue_entry_id_issue; 
    logic issue_entry_valid_id_issue;
    logic is_ctrl_fow_id_issue;
    
    
  localparam bit RVF = (riscv::IS_XLEN64 | riscv::IS_XLEN32) & CVA6Cfg.FpuEn;
  localparam bit RVD = (riscv::IS_XLEN64 ? 1 : 0) & CVA6Cfg.FpuEn;
  localparam bit FpPresent = RVF | RVD | CVA6Cfg.XF16 | CVA6Cfg.XF16ALT | CVA6Cfg.XF8;
  localparam bit NSX = CVA6Cfg.XF16 | CVA6Cfg.XF16ALT | CVA6Cfg.XF8 | CVA6Cfg.XFVec;  // Are non-standard extensions present?
  localparam int unsigned FLen = RVD ? 64 :  // D ext.
  RVF ? 32 :  // F ext.
  CVA6Cfg.XF16 ? 16 :  // Xf16 ext.
  CVA6Cfg.XF16ALT ? 16 :  // Xf16alt ext.
  CVA6Cfg.XF8 ? 8 :  // Xf8 ext.
  1;  // Unused in case of no FP

  // Transprecision floating-point extensions configuration
  localparam bit RVFVec     = RVF             & CVA6Cfg.XFVec & FLen>32; // FP32 vectors available if vectors and larger fmt enabled
  localparam bit XF16Vec    = CVA6Cfg.XF16    & CVA6Cfg.XFVec & FLen>16; // FP16 vectors available if vectors and larger fmt enabled
  localparam bit XF16ALTVec = CVA6Cfg.XF16ALT & CVA6Cfg.XFVec & FLen>16; // FP16ALT vectors available if vectors and larger fmt enabled
  localparam bit XF8Vec     = CVA6Cfg.XF8     & CVA6Cfg.XFVec & FLen>8;  // FP8 vectors available if vectors and larger fmt enabled

  localparam bit EnableAccelerator = CVA6Cfg.RVV;  // Currently only used by V extension (Ara)
  localparam int unsigned NrWbPorts = (CVA6Cfg.CvxifEn || EnableAccelerator) ? 5 : 4;
  
  localparam NrRgprPorts = 2;
  
  logic clk;
  logic eth_clk;
  logic spi_clk_i;
  logic phy_tx_clk;
  logic sd_clk_sys;
    

  localparam config_pkg::cva6_cfg_t CVA6ExtendCfg = {
    CVA6Cfg.NrCommitPorts,
    CVA6Cfg.AxiAddrWidth,
    CVA6Cfg.AxiDataWidth,
    CVA6Cfg.AxiIdWidth,
    CVA6Cfg.AxiUserWidth,
    CVA6Cfg.NrLoadBufEntries,
    CVA6Cfg.FpuEn,
    CVA6Cfg.XF16,
    CVA6Cfg.XF16ALT,
    CVA6Cfg.XF8,
    CVA6Cfg.RVA,
    CVA6Cfg.RVV,
    CVA6Cfg.RVC,
    CVA6Cfg.RVZCB,
    CVA6Cfg.XFVec,
    CVA6Cfg.CvxifEn,
    CVA6Cfg.ZiCondExtEn,
    // Extended
    bit'(RVF),
    bit'(RVD),
    bit'(FpPresent),
    bit'(NSX),
    unsigned'(FLen),
    bit'(RVFVec),
    bit'(XF16Vec),
    bit'(XF16ALTVec),
    bit'(XF8Vec),
    unsigned'(NrRgprPorts),
    unsigned'(NrWbPorts),
    bit'(EnableAccelerator),
    CVA6Cfg.HaltAddress,
    CVA6Cfg.ExceptionAddress,
    CVA6Cfg.RASDepth,
    CVA6Cfg.BTBEntries,
    CVA6Cfg.BHTEntries,
    CVA6Cfg.DmBaseAddress,
    CVA6Cfg.NrPMPEntries,
    CVA6Cfg.NOCType,
    CVA6Cfg.NrNonIdempotentRules,
    CVA6Cfg.NonIdempotentAddrBase,
    CVA6Cfg.NonIdempotentLength,
    CVA6Cfg.NrExecuteRegionRules,
    CVA6Cfg.ExecuteRegionAddrBase,
    CVA6Cfg.ExecuteRegionLength,
    CVA6Cfg.NrCachedRegionRules,
    CVA6Cfg.CachedRegionAddrBase,
    CVA6Cfg.CachedRegionLength,
    CVA6Cfg.MaxOutstandingStores
  };

  logic flush_i;
  logic debug_req_i;
  ariane_pkg::fetch_entry_t fetch_entry_i;
  logic fetch_entry_valid_i;
  logic issue_instr_ack_i;
  riscv::priv_lvl_t priv_lvl_i;
  riscv::xs_t fs_i;
  logic [2:0] frm_i;
  riscv::xs_t vs_i;
  logic [1:0] irq_i;
  ariane_pkg::irq_ctrl_t irq_ctrl_i;
  logic debug_mode_i;
  logic tvm_i;
  logic tw_i;
  logic tsr_i;


  
  // ---------
  // ID
  // ---------
  id_stage #(
      .CVA6Cfg(CVA6ExtendCfg)
  ) id_stage_i (
      .clk_i(clk),
      .rst_ni(cpu_reset),
      .flush_i,
      .debug_req_i,

      .fetch_entry_i      ('0),
      .fetch_entry_valid_i('0),
      .fetch_entry_ready_o(fetch_ready_id_if),

      .issue_entry_o      (issue_entry_id_issue),
      .issue_entry_valid_o(issue_entry_valid_id_issue),
      .is_ctrl_flow_o     (is_ctrl_fow_id_issue),
      .issue_instr_ack_i  ('0),

      .priv_lvl_i  ('0),
      .fs_i        ('0),
      .frm_i       ('1),
      .vs_i        ('1),
      .irq_i       ('0),
      .irq_ctrl_i  ('0),
      .debug_mode_i('1),
      .tvm_i       ('0),
      .tw_i        ('1),
      .tsr_i       ('0)
  );
  
  
  xlnx_clk_gen i_xlnx_clk_gen (
        .clk_out1 ( clk        ), // 40 MHz
        .clk_out2 ( phy_tx_clk    ), // 125 MHz (for RGMII PHY)
        .clk_out3 ( eth_clk       ), // 125 MHz quadrature (90 deg phase shift)
        .clk_out4 ( sd_clk_sys    ), // 50 MHz clock
        .reset    ( cpu_reset     ),
        .locked   ( pll_locked    ),
        .clk_in1  ( clk_sys )  //125 MHz
   );

endmodule;