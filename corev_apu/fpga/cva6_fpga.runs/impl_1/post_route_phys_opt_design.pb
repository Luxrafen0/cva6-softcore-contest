
B
Command: %s
53*	vivadotcl2
phys_opt_designZ4-113h px� 

@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2	
xc7z020Z17-347h px� 
o
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2	
xc7z020Z17-349h px� 
I
&Physical synthesis in post route mode 99*	vivadotclZ4-241h px� 
R

Starting %s Task
103*constraints2
Initial Update TimingZ18-103h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:10 ; elapsed = 00:00:03 . Memory (MB): peak = 3761.699 ; gain = 0.000 ; free physical = 3665 ; free virtual = 10594h px� 
�
^PhysOpt_Tcl_Interface Runtime Before Starting Physical Synthesis Task | CPU: %ss |  WALL: %ss
566*	vivadotcl2
10.972
3.59Z4-1435h px� 
>
Running DRC with %s threads
24*drc2
8Z23-27h px� 
D
DRC finished with %s
79*	vivadotcl2

0 ErrorsZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

3761.6992
0.0002
36662
10594Z17-722h px� 
O

Starting %s Task
103*constraints2
Physical SynthesisZ18-103h px� 
^

Phase %s%s
101*constraints2
1 2#
!Physical Synthesis InitializationZ18-101h px� 
n
EMultithreading enabled for phys_opt_design using a maximum of %s CPUs380*physynth2
8Z32-721h px� 
�
:%s %s Timing Summary | WNS=%s | TNS=%s | WHS=%s | THS=%s |342*physynth2	
Current2
 2
-1.5032

-364.1322
0.0442
0.000Z32-668h px� 
[
%s*common2B
@Phase 1 Physical Synthesis Initialization | Checksum: 1a67c4333
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:07 ; elapsed = 00:00:02 . Memory (MB): peak = 3761.699 ; gain = 0.000 ; free physical = 3673 ; free virtual = 10602h px� 
�
�WARNING: Physical Optimization has determined that the magnitude of the negative slack is too large and it is highly unlikely that slack will be improved. Post-Route Physical Optimization is most effective when WNS is above -0.5ns400*physynthZ32-745h px� 
W

Phase %s%s
101*constraints2
2 2
Critical Path OptimizationZ18-101h px� 
�
:%s %s Timing Summary | WNS=%s | TNS=%s | WHS=%s | THS=%s |342*physynth2	
Current2
 2
-1.5032

-364.1322
0.0442
0.000Z32-668h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
�i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/gen_data_banks[2].i_data_sram/gen_cut[0].i_tc_sram_wrapper/i_ram/p_2_in[32]�i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/gen_data_banks[2].i_data_sram/gen_cut[0].i_tc_sram_wrapper/i_ram/p_2_in[32]8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2X
)i_xlnx_clk_gen/inst/clk_out1_xlnx_clk_gen)i_xlnx_clk_gen/inst/clk_out1_xlnx_clk_gen8Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
Xi_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_missunit/WEBWE[0]Xi_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_missunit/WEBWE[0]2�
di_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_missunit/Mem_DP_reg_i_80_comp	di_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_missunit/Mem_DP_reg_i_80_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.4562
clk_out1_xlnx_clk_gen2�
{i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_wbuffer/i_rtrn_id_fifo/wbuffer_q_reg[1][hit_oh][0]_0{i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_wbuffer/i_rtrn_id_fifo/wbuffer_q_reg[1][hit_oh][0]_08Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2z
:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___237_n_0:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___237_n_08Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2z
:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___237_n_0:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___237_n_02|
;i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___237_comp	;i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___237_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.4392
clk_out1_xlnx_clk_gen2�
ri_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[1].i_wt_dcache_ctrl/address_off_q_reg[2]_1ri_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[1].i_wt_dcache_ctrl/address_off_q_reg[2]_18Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
�i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/gen_data_banks[1].i_data_sram/gen_cut[0].i_tc_sram_wrapper/i_ram/Mem_DP_reg_0[28]�i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/gen_data_banks[1].i_data_sram/gen_cut[0].i_tc_sram_wrapper/i_ram/Mem_DP_reg_0[28]8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
qi_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_wbuffer/i_rtrn_id_fifo/Mem_DP_reg_i_97_n_0qi_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_wbuffer/i_rtrn_id_fifo/Mem_DP_reg_i_97_n_08Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
{i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_wbuffer/i_rtrn_id_fifo/wbuffer_q_reg[1][hit_oh][0]_1{i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_wbuffer/i_rtrn_id_fifo/wbuffer_q_reg[1][hit_oh][0]_18Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
mi_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[0].i_wt_dcache_ctrl/ptw_pptr_q_reg[3]mi_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[0].i_wt_dcache_ctrl/ptw_pptr_q_reg[3]8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
pi_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[0].i_wt_dcache_ctrl/ptw_pptr_q_reg[2][0]pi_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[0].i_wt_dcache_ctrl/ptw_pptr_q_reg[2][0]8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
pi_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[0].i_wt_dcache_ctrl/wt_dcache_ctrl_net_1pi_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[0].i_wt_dcache_ctrl/wt_dcache_ctrl_net_18Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
�i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/gen_tag_srams[1].i_tag_sram/gen_cut[0].i_tc_sram_wrapper/i_ram/enable_q_reg�i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/gen_tag_srams[1].i_tag_sram/gen_cut[0].i_tc_sram_wrapper/i_ram/enable_q_reg8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
�i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/gen_tag_srams[0].i_tag_sram/gen_cut[0].i_tc_sram_wrapper/i_ram/CO[0]�i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/gen_tag_srams[0].i_tag_sram/gen_cut[0].i_tc_sram_wrapper/i_ram/CO[0]8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
�i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/gen_tag_srams[0].i_tag_sram/gen_cut[0].i_tc_sram_wrapper/i_ram/rd_hit_oh_q[0]_i_5_n_0�i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/gen_tag_srams[0].i_tag_sram/gen_cut[0].i_tc_sram_wrapper/i_ram/rd_hit_oh_q[0]_i_5_n_08Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2z
:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___126_n_0:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___126_n_08Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2z
:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___126_n_0:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___126_n_02|
;i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___126_comp	;i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___126_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.3432
clk_out1_xlnx_clk_gen2�
]i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/vld_sel_q_reg[1]_3]i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/vld_sel_q_reg[1]_38Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
�i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/gen_tag_srams[0].i_tag_sram/gen_cut[0].i_tc_sram_wrapper/i_ram/rd_hit_oh_q[0]_i_6_n_0�i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/gen_tag_srams[0].i_tag_sram/gen_cut[0].i_tc_sram_wrapper/i_ram/rd_hit_oh_q[0]_i_6_n_08Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2z
:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___129_n_0:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___129_n_08Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2z
:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___129_n_0:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___129_n_02|
;i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___129_comp	;i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___129_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.3382
clk_out1_xlnx_clk_gen2�
]i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/vld_sel_q_reg[1]_6]i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/vld_sel_q_reg[1]_68Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
�i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/gen_tag_srams[1].i_tag_sram/gen_cut[0].i_tc_sram_wrapper/i_ram/rd_hit_oh_o20_out�i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/gen_tag_srams[1].i_tag_sram/gen_cut[0].i_tc_sram_wrapper/i_ram/rd_hit_oh_o20_out8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
�i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/gen_tag_srams[1].i_tag_sram/gen_cut[0].i_tc_sram_wrapper/i_ram/rd_hit_oh_q[1]_i_8_n_0�i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/gen_tag_srams[1].i_tag_sram/gen_cut[0].i_tc_sram_wrapper/i_ram/rd_hit_oh_q[1]_i_8_n_08Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2z
:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___132_n_0:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___132_n_08Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2z
:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___132_n_0:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___132_n_02|
;i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___132_comp	;i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___132_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.3252
clk_out1_xlnx_clk_gen2�
ri_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[1].i_wt_dcache_ctrl/address_tag_q_reg[6]_0ri_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[1].i_wt_dcache_ctrl/address_tag_q_reg[6]_08Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
ri_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[0].i_wt_dcache_ctrl/address_tag_q_reg[8]_0ri_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[0].i_wt_dcache_ctrl/address_tag_q_reg[8]_08Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
ri_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[0].i_wt_dcache_ctrl/address_tag_q_reg[8]_0ri_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[0].i_wt_dcache_ctrl/address_tag_q_reg[8]_02�
vi_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[0].i_wt_dcache_ctrl/wt_dcache_ctrl_LUT6_7_comp	vi_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[0].i_wt_dcache_ctrl/wt_dcache_ctrl_LUT6_7_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.2272
clk_out1_xlnx_clk_gen2�
ri_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[1].i_wt_dcache_ctrl/address_tag_q_reg[8]_0ri_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[1].i_wt_dcache_ctrl/address_tag_q_reg[8]_08Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
�i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/gen_tag_srams[0].i_tag_sram/gen_cut[0].i_tc_sram_wrapper/i_ram/rd_hit_oh_q[0]_i_10_n_0�i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/gen_tag_srams[0].i_tag_sram/gen_cut[0].i_tc_sram_wrapper/i_ram/rd_hit_oh_q[0]_i_10_n_08Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2z
:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___135_n_0:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___135_n_08Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
ri_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[1].i_wt_dcache_ctrl/address_tag_q_reg[0]_0ri_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[1].i_wt_dcache_ctrl/address_tag_q_reg[0]_08Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
ri_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[1].i_wt_dcache_ctrl/address_tag_q_reg[0]_0ri_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[1].i_wt_dcache_ctrl/address_tag_q_reg[0]_02�
wi_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[1].i_wt_dcache_ctrl/wt_dcache_ctrl__LUT6_1_comp	wi_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[1].i_wt_dcache_ctrl/wt_dcache_ctrl__LUT6_1_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.2052
clk_out1_xlnx_clk_gen2�
{i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[1].i_wt_dcache_ctrl/FSM_sequential_state_q_reg[0]_1{i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[1].i_wt_dcache_ctrl/FSM_sequential_state_q_reg[0]_18Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
�i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/gen_tag_srams[0].i_tag_sram/gen_cut[0].i_tc_sram_wrapper/i_ram/rd_hit_oh_q[0]_i_4_n_0�i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/gen_tag_srams[0].i_tag_sram/gen_cut[0].i_tc_sram_wrapper/i_ram/rd_hit_oh_q[0]_i_4_n_08Z32-953h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2z
:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___124_n_0:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___124_n_02r
6i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___124	6i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___1248Z32-663h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.1972
clk_out1_xlnx_clk_gen2z
:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___124_n_0:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___124_n_08Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2z
:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___124_n_0:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___124_n_08Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
si_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[1].i_wt_dcache_ctrl/address_tag_q_reg[18]_0si_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[1].i_wt_dcache_ctrl/address_tag_q_reg[18]_08Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
si_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[1].i_wt_dcache_ctrl/address_tag_q_reg[18]_0si_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[1].i_wt_dcache_ctrl/address_tag_q_reg[18]_02�
wi_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[1].i_wt_dcache_ctrl/wt_dcache_ctrl__LUT6_4_comp	wi_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[1].i_wt_dcache_ctrl/wt_dcache_ctrl__LUT6_4_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.1882
clk_out1_xlnx_clk_gen2�
{i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[1].i_wt_dcache_ctrl/FSM_sequential_state_q_reg[0]_1{i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[1].i_wt_dcache_ctrl/FSM_sequential_state_q_reg[0]_18Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
�i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/gen_tag_srams[0].i_tag_sram/gen_cut[0].i_tc_sram_wrapper/i_ram/rd_hit_oh_q[0]_i_7_n_0�i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/gen_tag_srams[0].i_tag_sram/gen_cut[0].i_tc_sram_wrapper/i_ram/rd_hit_oh_q[0]_i_7_n_08Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2z
:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___131_n_0:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___131_n_08Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2z
:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___131_n_0:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___131_n_02|
;i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___131_comp	;i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___131_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.1512
clk_out1_xlnx_clk_gen2�
]i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/vld_sel_q_reg[1]_7]i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/vld_sel_q_reg[1]_78Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
�i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/gen_tag_srams[1].i_tag_sram/gen_cut[0].i_tc_sram_wrapper/i_ram/rd_hit_oh_q[1]_i_9_n_0�i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/gen_tag_srams[1].i_tag_sram/gen_cut[0].i_tc_sram_wrapper/i_ram/rd_hit_oh_q[1]_i_9_n_08Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2z
:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___134_n_0:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___134_n_08Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
]i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/vld_sel_q_reg[1]_9]i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/vld_sel_q_reg[1]_98Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
]i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/vld_sel_q_reg[1]_9]i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/vld_sel_q_reg[1]_92�
[i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/i___134_i_1_comp	[i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/i___134_i_1_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.1402
clk_out1_xlnx_clk_gen2�
{i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[1].i_wt_dcache_ctrl/FSM_sequential_state_q_reg[0]_1{i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[1].i_wt_dcache_ctrl/FSM_sequential_state_q_reg[0]_18Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
�i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/gen_tag_srams[0].i_tag_sram/gen_cut[0].i_tc_sram_wrapper/i_ram/rd_hit_oh_q[0]_i_9_n_0�i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/gen_tag_srams[0].i_tag_sram/gen_cut[0].i_tc_sram_wrapper/i_ram/rd_hit_oh_q[0]_i_9_n_08Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2z
:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___133_n_0:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___133_n_08Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
]i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/vld_sel_q_reg[1]_8]i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/vld_sel_q_reg[1]_88Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
]i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/vld_sel_q_reg[1]_8]i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/vld_sel_q_reg[1]_82�
[i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/i___133_i_1_comp	[i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/i___133_i_1_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.1202
clk_out1_xlnx_clk_gen2�
{i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[1].i_wt_dcache_ctrl/FSM_sequential_state_q_reg[0]_1{i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[1].i_wt_dcache_ctrl/FSM_sequential_state_q_reg[0]_18Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
�i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/gen_tag_srams[1].i_tag_sram/gen_cut[0].i_tc_sram_wrapper/i_ram/rd_hit_oh_q[1]_i_5_n_0�i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/gen_tag_srams[1].i_tag_sram/gen_cut[0].i_tc_sram_wrapper/i_ram/rd_hit_oh_q[1]_i_5_n_08Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2z
:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___125_n_0:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___125_n_08Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2z
:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___125_n_0:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___125_n_02|
;i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___125_comp	;i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___125_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.0982
clk_out1_xlnx_clk_gen2�
]i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/vld_sel_q_reg[1]_2]i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/vld_sel_q_reg[1]_28Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
�i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/gen_tag_srams[1].i_tag_sram/gen_cut[0].i_tc_sram_wrapper/i_ram/rd_hit_oh_q[1]_i_6_n_0�i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/gen_tag_srams[1].i_tag_sram/gen_cut[0].i_tc_sram_wrapper/i_ram/rd_hit_oh_q[1]_i_6_n_08Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2z
:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___127_n_0:i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i___127_n_08Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
]i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/vld_sel_q_reg[1]_4]i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_mem/vld_sel_q_reg[1]_48Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
{i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[1].i_wt_dcache_ctrl/FSM_sequential_state_q_reg[0]_1{i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/gen_rd_ports[1].i_wt_dcache_ctrl/FSM_sequential_state_q_reg[0]_18Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Si_ariane/i_cva6/ex_stage_i/lsu_i/i_load_unit/dcache_req_ports_ex_cache[1][kill_req]Si_ariane/i_cva6/ex_stage_i/lsu_i/i_load_unit/dcache_req_ports_ex_cache[1][kill_req]8Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
Si_ariane/i_cva6/ex_stage_i/lsu_i/i_load_unit/dcache_req_ports_ex_cache[1][kill_req]Si_ariane/i_cva6/ex_stage_i/lsu_i/i_load_unit/dcache_req_ports_ex_cache[1][kill_req]2�
=i_ariane/i_cva6/ex_stage_i/lsu_i/i_load_unit/i___144_i_1_comp	=i_ariane/i_cva6/ex_stage_i/lsu_i/i_load_unit/i___144_i_1_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.7372
clk_out1_xlnx_clk_gen2�
Yi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/i_ptw/en_ld_st_translation_q_regYi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/i_ptw/en_ld_st_translation_q_reg8Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Ui_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][bp][predict_address][19]Ui_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][bp][predict_address][19]8Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
Li_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q[2][sbe][result][31]_i_1_n_0Li_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q[2][sbe][result][31]_i_1_n_02�
Bi_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_LUT2_32_comp	Bi_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_LUT2_32_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.6192
clk_out1_xlnx_clk_gen2�
=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_450=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_4508Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
?i_ariane/i_cva6/csr_regfile_i/pmpcfg_q_reg[2][access_type][r]_0?i_ariane/i_cva6/csr_regfile_i/pmpcfg_q_reg[2][access_type][r]_08Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2h
1i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_1891i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_1898Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2h
1i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_1811i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_1818Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2h
1i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_1771i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_1778Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Wi_ariane/i_cva6/csr_regfile_i/i_pmp_data/gen_pmp.genblk1[6].i_pmp_entry/i___4_i_132_n_0Wi_ariane/i_cva6/csr_regfile_i/i_pmp_data/gen_pmp.genblk1[6].i_pmp_entry/i___4_i_132_n_08Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Ri_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[6][28]_0[1]Ri_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[6][28]_0[1]8Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
Ri_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[6][28]_0[1]Ri_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[6][28]_0[1]2�
Si_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/cva6_mmu_sv32_LUT6_51_comp	Si_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/cva6_mmu_sv32_LUT6_51_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.5602
clk_out1_xlnx_clk_gen2�
Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[6][27]Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[6][27]8Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Pi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[6]_86[55]Pi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[6]_86[55]8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Hi_ariane/i_cva6/gen_perf_counter.perf_counters_i/mhpmevent_q_reg[6][2]_0Hi_ariane/i_cva6/gen_perf_counter.perf_counters_i/mhpmevent_q_reg[6][2]_08Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Bi_ariane/i_cva6/issue_stage_i/i_scoreboard/mhpmevent_q_reg[6][1]_0Bi_ariane/i_cva6/issue_stage_i/i_scoreboard/mhpmevent_q_reg[6][1]_08Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
Bi_ariane/i_cva6/issue_stage_i/i_scoreboard/mhpmevent_q_reg[6][1]_0Bi_ariane/i_cva6/issue_stage_i/i_scoreboard/mhpmevent_q_reg[6][1]_02�
Ci_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_LUT6_569_comp	Ci_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_LUT6_569_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.5042
clk_out1_xlnx_clk_gen2�
Ai_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[3][issued]_1Ai_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[3][issued]_18Z32-952h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Pi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[1]_91[58]Pi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[1]_91[58]2�
Mi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[1][58]	Mi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[1][58]8Z32-663h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.5042
clk_out1_xlnx_clk_gen2�
Pi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[1]_91[58]Pi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[1]_91[58]8Z32-952h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Pi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[1]_91[61]Pi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[1]_91[61]2�
Mi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[1][61]	Mi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[1][61]8Z32-663h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.5042
clk_out1_xlnx_clk_gen2�
Pi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[1]_91[61]Pi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[1]_91[61]8Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Pi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[1]_91[63]Pi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[1]_91[63]8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Hi_ariane/i_cva6/gen_perf_counter.perf_counters_i/mhpmevent_q_reg[1][2]_0Hi_ariane/i_cva6/gen_perf_counter.perf_counters_i/mhpmevent_q_reg[1][2]_08Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Ri_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q[1][63]_i_10_n_0Ri_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q[1][63]_i_10_n_08Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Si_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_cva6_icache/icache_miss_cache_perfSi_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_cva6_icache/icache_miss_cache_perf8Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
Si_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_cva6_icache/icache_miss_cache_perfSi_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_cva6_icache/icache_miss_cache_perf2�
_i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_cva6_icache/generic_counter_q[6][63]_i_20_comp	_i_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_cva6_icache/generic_counter_q[6][63]_i_20_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.4902
clk_out1_xlnx_clk_gen2�
Ti_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_cva6_icache/icache_adapter_data_reqTi_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_cva6_icache/icache_adapter_data_req8Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Wi_ariane/i_cva6/csr_regfile_i/i_pmp_data/gen_pmp.genblk1[6].i_pmp_entry/i___4_i_292_n_0Wi_ariane/i_cva6/csr_regfile_i/i_pmp_data/gen_pmp.genblk1[6].i_pmp_entry/i___4_i_292_n_08Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
Wi_ariane/i_cva6/csr_regfile_i/i_pmp_data/gen_pmp.genblk1[6].i_pmp_entry/i___4_i_292_n_0Wi_ariane/i_cva6/csr_regfile_i/i_pmp_data/gen_pmp.genblk1[6].i_pmp_entry/i___4_i_292_n_02t
7i_ariane/i_cva6/csr_regfile_i/csr_regfile_LUT6_415_comp	7i_ariane/i_cva6/csr_regfile_i/csr_regfile_LUT6_415_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.4702
clk_out1_xlnx_clk_gen2�
Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[6][27]Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[6][27]8Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2h
1i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_1801i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_1808Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Wi_ariane/i_cva6/csr_regfile_i/i_pmp_data/gen_pmp.genblk1[5].i_pmp_entry/i___4_i_136_n_0Wi_ariane/i_cva6/csr_regfile_i/i_pmp_data/gen_pmp.genblk1[5].i_pmp_entry/i___4_i_136_n_08Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Wi_ariane/i_cva6/csr_regfile_i/i_pmp_data/gen_pmp.genblk1[5].i_pmp_entry/i___4_i_309_n_0Wi_ariane/i_cva6/csr_regfile_i/i_pmp_data/gen_pmp.genblk1[5].i_pmp_entry/i___4_i_309_n_08Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2h
1i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_1731i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_1738Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2h
1i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_1731i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_1732r
6i_ariane/i_cva6/csr_regfile_i/csr_regfile_LUT5_82_comp	6i_ariane/i_cva6/csr_regfile_i/csr_regfile_LUT5_82_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.4662
clk_out1_xlnx_clk_gen2n
4i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[5][22]_14i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[5][22]_18Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2h
1i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_1781i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_1788Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Vi_ariane/i_cva6/csr_regfile_i/i_pmp_data/gen_pmp.genblk1[7].i_pmp_entry/i___4_i_44_n_0Vi_ariane/i_cva6/csr_regfile_i/i_pmp_data/gen_pmp.genblk1[7].i_pmp_entry/i___4_i_44_n_08Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2h
1i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_6881i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_6888Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[7][25]Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[7][25]8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[7][23]Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[7][23]8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[7][19]Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[7][19]8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[7][17]Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[7][17]8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Ci_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/i___76_n_0Ci_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/i___76_n_08Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Ci_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/i___75_n_0Ci_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/i___75_n_08Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Li_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[7][0]Li_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[7][0]8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
fi_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_wbuffer/i_rtrn_id_fifo/WEBWE[2]fi_ariane/i_cva6/gen_cache_wt.i_cache_subsystem/i_wt_dcache/i_wt_dcache_wbuffer/i_rtrn_id_fifo/WEBWE[2]8Z32-953h px� 
�
;Processed net %s. Clock skew was adjusted for instance %s.
367*physynth2�
@i_ariane/i_cva6/csr_regfile_i/pmpcfg_q_reg[7][addr_mode][1]_0[0]@i_ariane/i_cva6/csr_regfile_i/pmpcfg_q_reg[7][addr_mode][1]_0[0]2|
;i_ariane/i_cva6/csr_regfile_i/pmpcfg_q_reg[7][addr_mode][0]	;i_ariane/i_cva6/csr_regfile_i/pmpcfg_q_reg[7][addr_mode][0]8Z32-703h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.4552
clk_out1_xlnx_clk_gen2�
@i_ariane/i_cva6/csr_regfile_i/pmpcfg_q_reg[7][addr_mode][1]_0[0]@i_ariane/i_cva6/csr_regfile_i/pmpcfg_q_reg[7][addr_mode][1]_0[0]8Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2h
1i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_1901i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_1908Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2h
1i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_1871i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_1878Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2h
1i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_1831i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_1838Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Vi_ariane/i_cva6/csr_regfile_i/i_pmp_data/gen_pmp.genblk1[2].i_pmp_entry/i___4_i_35_n_0Vi_ariane/i_cva6/csr_regfile_i/i_pmp_data/gen_pmp.genblk1[2].i_pmp_entry/i___4_i_35_n_08Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2h
1i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_6631i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_6638Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[2][25]Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[2][25]8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[2][23]Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[2][23]8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[2][19]Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[2][19]8Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[2][19]Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[2][19]2�
Ri_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/cva6_mmu_sv32_LUT3_2_comp	Ri_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/cva6_mmu_sv32_LUT3_2_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.3982
clk_out1_xlnx_clk_gen2�
Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[2][17]Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[2][17]8Z32-952h px� 
�
;Processed net %s. Clock skew was adjusted for instance %s.
367*physynth2t
7i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[7][31]_0[7]7i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[7][31]_0[7]2h
1i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[7][7]	1i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[7][7]8Z32-703h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.3802
clk_out1_xlnx_clk_gen2t
7i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[7][31]_0[7]7i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[7][31]_0[7]8Z32-952h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Oi_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][tval][31]_0[0]Oi_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][tval][31]_0[0]2�
Ii_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][tval][0]	Ii_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][tval][0]8Z32-663h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.3802
clk_out1_xlnx_clk_gen2�
Oi_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][tval][31]_0[0]Oi_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][tval][31]_0[0]8Z32-952h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Oi_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][tval][31]_0[4]Oi_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][tval][31]_0[4]2�
Ii_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][tval][4]	Ii_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][tval][4]8Z32-663h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.3712
clk_out1_xlnx_clk_gen2�
Oi_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][tval][31]_0[4]Oi_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][tval][31]_0[4]8Z32-952h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Oi_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][tval][31]_0[5]Oi_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][tval][31]_0[5]2�
Ii_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][tval][5]	Ii_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][tval][5]8Z32-663h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.3712
clk_out1_xlnx_clk_gen2�
Oi_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][tval][31]_0[5]Oi_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][tval][31]_0[5]8Z32-952h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Oi_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][tval][31]_0[6]Oi_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][tval][31]_0[6]2�
Ii_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][tval][6]	Ii_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][tval][6]8Z32-663h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.3652
clk_out1_xlnx_clk_gen2�
Oi_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][tval][31]_0[6]Oi_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][tval][31]_0[6]8Z32-952h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
Bi_ariane/i_cva6/issue_stage_i/i_scoreboard/mhpmevent_q_reg[6][1]_0Bi_ariane/i_cva6/issue_stage_i/i_scoreboard/mhpmevent_q_reg[6][1]_02�
Ei_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_LUT6_569_comp_1	Ei_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_LUT6_569_comp_18Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.3612
clk_out1_xlnx_clk_gen2�
=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_500=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_5008Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Pi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[2]_90[54]Pi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[2]_90[54]8Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
Ai_ariane/i_cva6/ex_stage_i/csr_buffer_i/mcountinhibit_q_reg[4][0]Ai_ariane/i_cva6/ex_stage_i/csr_buffer_i/mcountinhibit_q_reg[4][0]2�
Ii_ariane/i_cva6/ex_stage_i/csr_buffer_i/generic_counter_q[2][63]_i_1_comp	Ii_ariane/i_cva6/ex_stage_i/csr_buffer_i/generic_counter_q[2][63]_i_1_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.3552
clk_out1_xlnx_clk_gen2�
Hi_ariane/i_cva6/gen_perf_counter.perf_counters_i/mhpmevent_q_reg[2][2]_0Hi_ariane/i_cva6/gen_perf_counter.perf_counters_i/mhpmevent_q_reg[2][2]_08Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Ri_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[5][25]_1[1]Ri_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[5][25]_1[1]8Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
Ri_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[5][25]_1[1]Ri_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[5][25]_1[1]2�
Si_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/cva6_mmu_sv32_LUT6_46_comp	Si_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/cva6_mmu_sv32_LUT6_46_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.3522
clk_out1_xlnx_clk_gen2n
4i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[5][22]_14i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[5][22]_18Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_494=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_4948Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_303=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_3038Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_301=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_3018Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_295=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_2958Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_283=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_2838Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_283=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_2832�
Bi_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_LUT5_50_comp	Bi_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_LUT5_50_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.3492
clk_out1_xlnx_clk_gen2|
;i_ariane/i_cva6/issue_stage_i/i_scoreboard/mult_valid_q_reg;i_ariane/i_cva6/issue_stage_i/i_scoreboard/mult_valid_q_reg8Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2h
1i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_6801i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_6808Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2h
1i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_6801i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_6802t
7i_ariane/i_cva6/csr_regfile_i/csr_regfile_LUT6_414_comp	7i_ariane/i_cva6/csr_regfile_i/csr_regfile_LUT6_414_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.3462
clk_out1_xlnx_clk_gen2�
Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[6][25]Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[6][25]8Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_299=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_2998Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_287=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_2878Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_287=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_2872�
Bi_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_LUT5_52_comp	Bi_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_LUT5_52_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.3382
clk_out1_xlnx_clk_gen2�
Gi_ariane/i_cva6/issue_stage_i/i_issue_read_operands/trans_id_q_reg[0]_1Gi_ariane/i_cva6/issue_stage_i/i_issue_read_operands/trans_id_q_reg[0]_18Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Mi_ariane/i_cva6/issue_stage_i/i_issue_read_operands/operand_a_q_reg[31]_0[27]Mi_ariane/i_cva6/issue_stage_i/i_issue_read_operands/operand_a_q_reg[31]_0[27]8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Ki_ariane/i_cva6/issue_stage_i/i_issue_read_operands/operand_a_q[27]_i_2_n_0Ki_ariane/i_cva6/issue_stage_i/i_issue_read_operands/operand_a_q[27]_i_2_n_08Z32-953h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Ji_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[3][sbe][result][27]_0Ji_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[3][sbe][result][27]_02�
>i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_LUT6_544	>i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_LUT6_5448Z32-663h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.3262
clk_out1_xlnx_clk_gen2�
Ji_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[3][sbe][result][27]_0Ji_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[3][sbe][result][27]_08Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2v
8i_ariane/i_cva6/issue_stage_i/i_issue_read_operands/Q[5]8i_ariane/i_cva6/issue_stage_i/i_issue_read_operands/Q[5]8Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
Ji_ariane/i_cva6/issue_stage_i/i_issue_read_operands/operand_b_q[5]_i_1_n_0Ji_ariane/i_cva6/issue_stage_i/i_issue_read_operands/operand_b_q[5]_i_1_n_02�
Ki_ariane/i_cva6/issue_stage_i/i_issue_read_operands/operand_b_q[5]_i_1_comp	Ki_ariane/i_cva6/issue_stage_i/i_issue_read_operands/operand_b_q[5]_i_1_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.3262
clk_out1_xlnx_clk_gen2v
8i_ariane/i_cva6/issue_stage_i/i_scoreboard/rs2_sb_iro[2]8i_ariane/i_cva6/issue_stage_i/i_scoreboard/rs2_sb_iro[2]8Z32-952h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2h
1i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_6801i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_6802x
9i_ariane/i_cva6/csr_regfile_i/csr_regfile_LUT6_414_comp_1	9i_ariane/i_cva6/csr_regfile_i/csr_regfile_LUT6_414_comp_18Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.3242
clk_out1_xlnx_clk_gen2�
Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[6][23]Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[6][23]8Z32-952h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
=i_ariane/i_cva6/issue_stage_i/i_scoreboard/rs2_sb_iro[2]_repN=i_ariane/i_cva6/issue_stage_i/i_scoreboard/rs2_sb_iro[2]_repN2�
Bi_ariane/i_cva6/issue_stage_i/i_scoreboard/operand_b_q[5]_i_2_comp	Bi_ariane/i_cva6/issue_stage_i/i_scoreboard/operand_b_q[5]_i_2_comp8Z32-663h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.3092
clk_out1_xlnx_clk_gen2�
=i_ariane/i_cva6/issue_stage_i/i_scoreboard/rs2_sb_iro[2]_repN=i_ariane/i_cva6/issue_stage_i/i_scoreboard/rs2_sb_iro[2]_repN8Z32-952h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_295=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_2952�
Bi_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_LUT5_55_comp	Bi_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_LUT5_55_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.3042
clk_out1_xlnx_clk_gen2�
=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_292=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_2928Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_286=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_2868Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_284=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_2848Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_284=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_2842�
Bi_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_LUT5_51_comp	Bi_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_LUT5_51_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.2922
clk_out1_xlnx_clk_gen2|
;i_ariane/i_cva6/issue_stage_i/i_scoreboard/mult_valid_q_reg;i_ariane/i_cva6/issue_stage_i/i_scoreboard/mult_valid_q_reg8Z32-952h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Pi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[4]_88[63]Pi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[4]_88[63]2�
Mi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[4][63]	Mi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[4][63]8Z32-663h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.2812
clk_out1_xlnx_clk_gen2�
Pi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[4]_88[63]Pi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[4]_88[63]8Z32-952h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Oi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[4]_88[5]Oi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[4]_88[5]2�
Li_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[4][5]	Li_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[4][5]8Z32-663h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.2662
clk_out1_xlnx_clk_gen2�
Oi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[4]_88[5]Oi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[4]_88[5]8Z32-952h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Pi_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][cause][31]_0[0]Pi_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][cause][31]_0[0]2�
Ji_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][cause][0]	Ji_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][cause][0]8Z32-663h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.2662
clk_out1_xlnx_clk_gen2�
Pi_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][cause][31]_0[0]Pi_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][cause][31]_0[0]8Z32-952h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Pi_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][tval][31]_0[19]Pi_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][tval][31]_0[19]2�
Ji_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][tval][19]	Ji_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][tval][19]8Z32-663h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.2552
clk_out1_xlnx_clk_gen2�
Pi_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][tval][31]_0[19]Pi_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[2][sbe][ex][tval][31]_0[19]8Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2h
1i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_1751i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_1758Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[6][23]Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[6][23]8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[6][19]Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[6][19]8Z32-953h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[6][19]Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[6][19]2�
Ri_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/cva6_mmu_sv32_LUT3_7_comp	Ri_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/cva6_mmu_sv32_LUT3_7_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.2542
clk_out1_xlnx_clk_gen2�
Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[6][17]Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[6][17]8Z32-952h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Pi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[2]_90[11]Pi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[2]_90[11]2�
Mi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[2][11]	Mi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[2][11]8Z32-663h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.2542
clk_out1_xlnx_clk_gen2�
Pi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[2]_90[11]Pi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[2]_90[11]8Z32-952h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Oi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[2]_90[4]Oi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[2]_90[4]2�
Li_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[2][4]	Li_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[2][4]8Z32-663h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.2542
clk_out1_xlnx_clk_gen2�
Oi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[2]_90[4]Oi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[2]_90[4]8Z32-952h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
Oi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[2]_90[6]Oi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[2]_90[6]2�
Li_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[2][6]	Li_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[2][6]8Z32-663h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.2522
clk_out1_xlnx_clk_gen2�
Oi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[2]_90[6]Oi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[2]_90[6]8Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Qi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[2][0]_0[0]Qi_ariane/i_cva6/gen_perf_counter.perf_counters_i/generic_counter_q_reg[2][0]_0[0]8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Hi_ariane/i_cva6/gen_perf_counter.perf_counters_i/mhpmevent_q_reg[2][2]_0Hi_ariane/i_cva6/gen_perf_counter.perf_counters_i/mhpmevent_q_reg[2][2]_08Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
@i_ariane/i_cva6/issue_stage_i/i_scoreboard/mhpmevent_q_reg[2][0]@i_ariane/i_cva6/issue_stage_i/i_scoreboard/mhpmevent_q_reg[2][0]8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
clk_out1_xlnx_clk_gen2�
Ai_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[3][issued]_1Ai_ariane/i_cva6/issue_stage_i/i_scoreboard/mem_q_reg[3][issued]_18Z32-953h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Physopt 32-9532
100Z17-14h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_500=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_5002�
Di_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_LUT2_26_comp_1	Di_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_LUT2_26_comp_18Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.2422
clk_out1_xlnx_clk_gen2�
=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_345=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_3458Z32-952h px� 
�
;Processed net %s. Clock skew was adjusted for instance %s.
367*physynth2�
@i_ariane/i_cva6/csr_regfile_i/pmpcfg_q_reg[7][addr_mode][1]_0[0]@i_ariane/i_cva6/csr_regfile_i/pmpcfg_q_reg[7][addr_mode][1]_0[0]2|
;i_ariane/i_cva6/csr_regfile_i/pmpcfg_q_reg[7][addr_mode][0]	;i_ariane/i_cva6/csr_regfile_i/pmpcfg_q_reg[7][addr_mode][0]8Z32-703h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.2422
clk_out1_xlnx_clk_gen2�
@i_ariane/i_cva6/csr_regfile_i/pmpcfg_q_reg[7][addr_mode][1]_0[0]@i_ariane/i_cva6/csr_regfile_i/pmpcfg_q_reg[7][addr_mode][1]_0[0]8Z32-952h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_290=i_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_net_2902�
Ai_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_LUT3_9_comp	Ai_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_LUT3_9_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.2352
clk_out1_xlnx_clk_gen2�
Gi_ariane/i_cva6/issue_stage_i/i_issue_read_operands/trans_id_q_reg[1]_3Gi_ariane/i_cva6/issue_stage_i/i_issue_read_operands/trans_id_q_reg[1]_38Z32-952h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[0][19]Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[0][19]2�
Pi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/cva6_mmu_sv32_LUT3_comp	Pi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/cva6_mmu_sv32_LUT3_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.2202
clk_out1_xlnx_clk_gen2�
Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[0][17]Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[0][17]8Z32-952h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2t
7i_ariane/i_cva6/issue_stage_i/i_scoreboard/set_debug_pc7i_ariane/i_cva6/issue_stage_i/i_scoreboard/set_debug_pc2�
Bi_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_LUT4_16_comp	Bi_ariane/i_cva6/issue_stage_i/i_scoreboard/scoreboard_LUT4_16_comp8Z32-710h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.2002
clk_out1_xlnx_clk_gen2f
0i_ariane/i_cva6/csr_regfile_i/dcsr_q_reg[step]_10i_ariane/i_cva6/csr_regfile_i/dcsr_q_reg[step]_18Z32-952h px� 
�
;Processed net %s. Clock skew was adjusted for instance %s.
367*physynth2t
7i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[7][31]_0[2]7i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[7][31]_0[2]2h
1i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[7][2]	1i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[7][2]8Z32-703h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.1742
clk_out1_xlnx_clk_gen2t
7i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[7][31]_0[2]7i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[7][31]_0[2]8Z32-952h px� 
�
;Processed net %s. Clock skew was adjusted for instance %s.
367*physynth2t
7i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[7][31]_0[7]7i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[7][31]_0[7]2h
1i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[7][7]	1i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[7][7]8Z32-703h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.1392
clk_out1_xlnx_clk_gen2t
7i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[7][31]_0[7]7i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[7][31]_0[7]8Z32-952h px� 
�
;Processed net %s. Clock skew was adjusted for instance %s.
367*physynth2�
@i_ariane/i_cva6/csr_regfile_i/pmpcfg_q_reg[4][addr_mode][1]_0[0]@i_ariane/i_cva6/csr_regfile_i/pmpcfg_q_reg[4][addr_mode][1]_0[0]2|
;i_ariane/i_cva6/csr_regfile_i/pmpcfg_q_reg[4][addr_mode][0]	;i_ariane/i_cva6/csr_regfile_i/pmpcfg_q_reg[4][addr_mode][0]8Z32-703h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.1212
clk_out1_xlnx_clk_gen2�
@i_ariane/i_cva6/csr_regfile_i/pmpcfg_q_reg[4][addr_mode][1]_0[0]@i_ariane/i_cva6/csr_regfile_i/pmpcfg_q_reg[4][addr_mode][1]_0[0]8Z32-952h px� 
�
;Processed net %s. Clock skew was adjusted for instance %s.
367*physynth2t
7i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[4][31]_0[0]7i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[4][31]_0[0]2h
1i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[4][0]	1i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[4][0]8Z32-703h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.1212
clk_out1_xlnx_clk_gen2t
7i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[4][31]_0[0]7i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[4][31]_0[0]8Z32-952h px� 
�
;Processed net %s. Clock skew was adjusted for instance %s.
367*physynth2t
7i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[7][31]_0[1]7i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[7][31]_0[1]2h
1i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[7][1]	1i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[7][1]8Z32-703h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.0992
clk_out1_xlnx_clk_gen2t
7i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[7][31]_0[1]7i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[7][31]_0[1]8Z32-952h px� 
�
;Processed net %s. Clock skew was adjusted for instance %s.
367*physynth2t
7i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[7][31]_0[6]7i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[7][31]_0[6]2h
1i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[7][6]	1i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[7][6]8Z32-703h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.0722
clk_out1_xlnx_clk_gen2t
7i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[7][31]_0[6]7i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[7][31]_0[6]8Z32-952h px� 
�
;Processed net %s. Clock skew was adjusted for instance %s.
367*physynth2t
7i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[4][31]_0[1]7i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[4][31]_0[1]2h
1i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[4][1]	1i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[4][1]8Z32-703h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.0182
clk_out1_xlnx_clk_gen2t
7i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[4][31]_0[1]7i_ariane/i_cva6/csr_regfile_i/pmpaddr_q_reg[4][31]_0[1]8Z32-952h px� 
�
;Processed net %s. Clock skew was adjusted for instance %s.
367*physynth2�
@i_ariane/i_cva6/csr_regfile_i/pmpcfg_q_reg[7][addr_mode][1]_0[0]@i_ariane/i_cva6/csr_regfile_i/pmpcfg_q_reg[7][addr_mode][1]_0[0]2|
;i_ariane/i_cva6/csr_regfile_i/pmpcfg_q_reg[7][addr_mode][0]	;i_ariane/i_cva6/csr_regfile_i/pmpcfg_q_reg[7][addr_mode][0]8Z32-703h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-0.0132
clk_out1_xlnx_clk_gen2�
@i_ariane/i_cva6/csr_regfile_i/pmpcfg_q_reg[7][addr_mode][1]_0[0]@i_ariane/i_cva6/csr_regfile_i/pmpcfg_q_reg[7][addr_mode][1]_0[0]8Z32-952h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2h
1i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_6551i_ariane/i_cva6/csr_regfile_i/csr_regfile_net_6552t
7i_ariane/i_cva6/csr_regfile_i/csr_regfile_LUT6_385_comp	7i_ariane/i_cva6/csr_regfile_i/csr_regfile_LUT6_385_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[1][25]Mi_ariane/i_cva6/ex_stage_i/lsu_i/gen_mmu_sv32.i_cva6_mmu/pmpaddr_q_reg[1][25]8Z32-735h px� 
�
:%s %s Timing Summary | WNS=%s | TNS=%s | WHS=%s | THS=%s |342*physynth2	
Current2
 2
0.0242
0.0002
0.0442
0.000Z32-668h px� 
�
:%s %s Timing Summary | WNS=%s | TNS=%s | WHS=%s | THS=%s |342*physynth2	
Current2
 2
0.0242
0.0002
0.0442
0.000Z32-668h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2
00:00:00.012
00:00:00.012

3761.6992
0.0002
36772
10627Z17-722h px� 
T
%s*common2;
9Phase 2 Critical Path Optimization | Checksum: 1a67c4333
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:52 ; elapsed = 00:04:37 . Memory (MB): peak = 3761.699 ; gain = 0.000 ; free physical = 3677 ; free virtual = 10627h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2
00:00:00.012

00:00:002

3761.6992
0.0002
36772
10627Z17-722h px� 
�
OPost Physical Optimization Timing Summary | WNS=%s | TNS=%s | WHS=%s | THS=%s |343*physynth2
0.0242
0.0002
0.0442
0.000Z32-669h px� 
B
-
Summary of Physical Synthesis Optimizations
*commonh px� 
B
-============================================
*commonh px� 


*commonh px� 


*commonh px� 
�
�-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Optimization   |  WNS Gain (ns)  |  TNS Gain (ns)  |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Critical Path  |          1.527  |        364.132  |            0  |              0  |                    63  |           0  |           1  |  00:04:34  |
-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2
00:00:00.012

00:00:002

3761.6992
0.0002
36772
10627Z17-722h px� 
P
%s*common27
5Ending Physical Synthesis Task | Checksum: 18a52f930
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:52 ; elapsed = 00:04:37 . Memory (MB): peak = 3761.699 ; gain = 0.000 ; free physical = 3677 ; free virtual = 10627h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
5352
52
02
0Z4-41h px� 
O
%s completed successfully
29*	vivadotcl2
phys_opt_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
phys_opt_design: 2

00:09:042

00:04:412

3761.6992
0.0002
36772
10627Z17-722h px� 
�
Executing command : %s
56330*	planAhead2�
�report_timing_summary -max_paths 10 -report_unconstrained -warn_on_violation -file cva6_zybo_z7_20_timing_summary_postroute_physopted.rpt -pb cva6_zybo_z7_20_timing_summary_postroute_physopted.pb -rpx cva6_zybo_z7_20_timing_summary_postroute_physopted.rpxZ12-24828h px� 
`
UpdateTimingParams:%s.
91*timing2'
% Speed grade: -1, Delay Type: min_maxZ38-91h px� 
j
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
8Z38-191h px� 
�
Executing command : %s
56330*	planAhead2�
�report_bus_skew -warn_on_violation -file cva6_zybo_z7_20_bus_skew_postroute_physopted.rpt -pb cva6_zybo_z7_20_bus_skew_postroute_physopted.pb -rpx cva6_zybo_z7_20_bus_skew_postroute_physopted.rpxZ12-24828h px� 
`
UpdateTimingParams:%s.
91*timing2'
% Speed grade: -1, Delay Type: min_maxZ38-91h px� 
j
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
8Z38-191h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2
00:00:00.192
00:00:00.042

3761.6992
0.0002
36662
10622Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote PlaceDB: 2

00:00:032

00:00:012

3761.6992
0.0002
36232
10620Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote PulsedLatchDB: 2

00:00:002

00:00:002

3761.6992
0.0002
36232
10620Z17-722h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote RouteStorage: 2
00:00:00.582
00:00:00.242

3761.6992
0.0002
36182
10622Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote Netlist Cache: 2
00:00:00.072
00:00:00.042

3761.6992
0.0002
36042
10612Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote Device Cache: 2
00:00:00.022
00:00:00.012

3761.6992
0.0002
36042
10613Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write Physdb Complete: 2

00:00:042

00:00:022

3761.6992
0.0002
36042
10613Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2�
�/home/utilisateur/Bureau/projet_M2/cva6-softcore-contest/corev_apu/fpga/cva6_fpga.runs/impl_1/cva6_zybo_z7_20_postroute_physopt.dcpZ17-1381h px� 


End Record