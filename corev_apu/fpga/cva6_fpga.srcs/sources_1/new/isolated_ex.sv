module isolated_ex
     import ariane_pkg::*;
(
    input logic clk_i,
    input logic rst_ni,
    
    input logic s_fu_data_i,
    
    output s_result_o,
    output logic alu_branch_res_o
    );
    
    riscv::xlen_t temp;
    fu_data_t     fu_data_i;
    riscv::xlen_t result_o;
    
    
    localparam config_pkg::cva6_cfg_t CVA6Cfg = '{
      NrCommitPorts:         cva6_config_pkg::CVA6ConfigNrCommitPorts,
      AxiAddrWidth:          cva6_config_pkg::CVA6ConfigAxiAddrWidth,
      AxiDataWidth:          cva6_config_pkg::CVA6ConfigAxiDataWidth,
      AxiIdWidth:            cva6_config_pkg::CVA6ConfigAxiIdWidth,
      AxiUserWidth:          cva6_config_pkg::CVA6ConfigDataUserWidth,
      NrLoadBufEntries:      cva6_config_pkg::CVA6ConfigNrLoadBufEntries,
      RASDepth:              cva6_config_pkg::CVA6ConfigRASDepth,
      BTBEntries:            cva6_config_pkg::CVA6ConfigBTBEntries,
      BHTEntries:            cva6_config_pkg::CVA6ConfigBHTEntries,
      FpuEn:                 bit'(cva6_config_pkg::CVA6ConfigFpuEn),
      XF16:                  bit'(cva6_config_pkg::CVA6ConfigF16En),
      XF16ALT:               bit'(cva6_config_pkg::CVA6ConfigF16AltEn),
      XF8:                   bit'(cva6_config_pkg::CVA6ConfigF8En),
      RVA:                   bit'(cva6_config_pkg::CVA6ConfigAExtEn),
      RVV:                   bit'(cva6_config_pkg::CVA6ConfigVExtEn),
      RVC:                   bit'(cva6_config_pkg::CVA6ConfigCExtEn),
      RVZCB:                 bit'(cva6_config_pkg::CVA6ConfigZcbExtEn),
      XFVec:                 bit'(cva6_config_pkg::CVA6ConfigFVecEn),
      CvxifEn:               bit'(cva6_config_pkg::CVA6ConfigCvxifEn),
      ZiCondExtEn:           bit'(0),
      RVF:                   bit'(0),
      RVD:                   bit'(0),
      FpPresent:             bit'(0),
      NSX:                   bit'(0),
      FLen:                  unsigned'(0),
      RVFVec:                bit'(0),
      XF16Vec:               bit'(0),
      XF16ALTVec:            bit'(0),
      XF8Vec:                bit'(0),
      NrRgprPorts:           unsigned'(0),
      NrWbPorts:             unsigned'(0),
      EnableAccelerator:     bit'(0),
      HaltAddress:           dm::HaltAddress,
      ExceptionAddress:      dm::ExceptionAddress,
      DmBaseAddress:         ariane_soc::DebugBase,
      NrPMPEntries:          unsigned'(cva6_config_pkg::CVA6ConfigNrPMPEntries),
      NOCType:               config_pkg::NOC_TYPE_AXI4_ATOP,
      // idempotent region
      NrNonIdempotentRules:  unsigned'(1),
      NonIdempotentAddrBase: 1024'({64'b0}),
      NonIdempotentLength:   1024'({ariane_soc::DRAMBase}),
      NrExecuteRegionRules:  unsigned'(3),
      ExecuteRegionAddrBase: 1024'({ariane_soc::DRAMBase,   ariane_soc::ROMBase,   ariane_soc::DebugBase}),
      ExecuteRegionLength:   1024'({ariane_soc::DRAMLength, ariane_soc::ROMLength, ariane_soc::DebugLength}),
      // cached region
      NrCachedRegionRules:   unsigned'(1),
      CachedRegionAddrBase:  1024'({ariane_soc::DRAMBase}),
      CachedRegionLength:    1024'({ariane_soc::DRAMLength}),
      MaxOutstandingStores:  unsigned'(7)
    };
    
    
alu #(
    .CVA6Cfg    (CVA6Cfg)
) i_alu (
    .clk_i  (clk_i),
    .rst_ni (rst_ni),
    .fu_data_i  (fu_data_i),
    .result_o   (result_o),
    .alu_branch_res_o   (alu_branch_res_o)
);
    
ser32to1 i_ser32to1 (
    .clk_i,
    .dataIn (result_o),
    .dataOut (s_result_o)
);

ser1to32 i_ser1to32 (
    .clk_i,
    .dataIn (s_fu_data_i),
    .dataOut (temp)
);
    
always_comb begin
    fu_data_i.fu = ALU;
    fu_data_i.operation = ADD;
    fu_data_i.operand_a = temp;
    fu_data_i.operand_b = temp;
    fu_data_i.imm = temp; 
    fu_data_i.trans_id = 2'd1;
end

endmodule

module ser32to1(
    input clk_i,
    input [31:0] dataIn,
    output logic dataOut
);

// count: 0, 1, 2, 3, 0, ... (wraps automatically)
reg [4:0] count = 0;
always @(posedge clk_i) begin
    count <= count + 2'd1;
end

reg [31:0] tmp = 0;
always @(posedge clk_i) begin
    if (count == 2'd0)
        tmp <= dataIn;
    else
        tmp <= (tmp >> 1);
end

assign dataOut = tmp[0];

endmodule

module ser1to32(
    input clk_i,
    input logic dataIn,
    output [31:0] dataOut
);

// count: 0, 1, 2, 3, 0, ... (wraps automatically)
reg [4:0] count;
always @(posedge clk_i) begin
    count <= count + 2'd1;
end

reg [31:0] tmp;
always @(posedge clk_i) begin
    if (count == 2'd0)
        tmp <= dataIn;
    else
        tmp <= (tmp << 1) | dataIn;
end

assign dataOut = tmp;

endmodule
