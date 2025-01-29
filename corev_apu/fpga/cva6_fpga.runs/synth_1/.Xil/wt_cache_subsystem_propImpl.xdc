set_property SRC_FILE_INFO {cfile:/nfs/home/camsi6/Documents/Projet_CVA6/cva6-softcore-contest/corev_apu/fpga/cva6_fpga.srcs/test_cache/imports/constraints/cva6_fpga.xdc rfile:../../../cva6_fpga.srcs/test_cache/imports/constraints/cva6_fpga.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 -name tck -waveform {0.000 5.000} [get_ports clk_i] # 100 MHz
set_property src_info {type:XDC file:1 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter clk_i 1.000
