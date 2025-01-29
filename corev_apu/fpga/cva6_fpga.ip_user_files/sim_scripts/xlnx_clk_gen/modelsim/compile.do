vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+/nfs/xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"/nfs/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/nfs/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/nfs/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/nfs/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/nfs/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/nfs/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/nfs/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/nfs/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/nfs/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+../../../ipstatic" "+incdir+../../../../xilinx/xlnx_clk_gen/xlnx_clk_gen.gen/sources_1/ip/xlnx_clk_gen" "+incdir+/nfs/xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"/nfs/xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/nfs/xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/nfs/xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../ipstatic" "+incdir+../../../../xilinx/xlnx_clk_gen/xlnx_clk_gen.gen/sources_1/ip/xlnx_clk_gen" "+incdir+/nfs/xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../xilinx/xlnx_clk_gen/xlnx_clk_gen.gen/sources_1/ip/xlnx_clk_gen/xlnx_clk_gen_clk_wiz.v" \
"../../../../xilinx/xlnx_clk_gen/xlnx_clk_gen.gen/sources_1/ip/xlnx_clk_gen/xlnx_clk_gen.v" \

vlog -work xil_defaultlib \
"glbl.v"

