transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+xlnx_clk_gen  -L xilinx_vip -L xpm -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.xlnx_clk_gen xil_defaultlib.glbl

do {xlnx_clk_gen.udo}

run 1000ns

endsim

quit -force
