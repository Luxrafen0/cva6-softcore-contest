
[
Command: %s
53*	vivadotcl2*
(place_design -directive RuntimeOptimizedZ4-113h px� 
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
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 
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
j
/The placer was invoked with the '%s' directive.52239*	vivadotcl2
RuntimeOptimizedZ4-2302h px� 
^
,Running DRC as a precondition to command %s
22*	vivadotcl2
place_designZ4-22h px� 
>
Running DRC with %s threads
24*drc2
8Z23-27h px� 
Q
DRC finished with %s
79*	vivadotcl2
0 Errors, 21 WarningsZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
k
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
8Z30-611h px� 
C

Starting %s Task
103*constraints2
PlacerZ18-103h px� 
R

Phase %s%s
101*constraints2
1 2
Placer InitializationZ18-101h px� 
d

Phase %s%s
101*constraints2
1.1 2'
%Placer Initialization Netlist SortingZ18-101h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002
00:00:00.012

3375.2702
0.0002
45012
11063Z17-722h px� 
`
%s*common2G
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 97dd342e
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.01 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4501 ; free virtual = 11063h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

3375.2702
0.0002
45012
11063Z17-722h px� 
q

Phase %s%s
101*constraints2
1.2 24
2IO Placement/ Clock Placement/ Build Placer DeviceZ18-101h px� 
�
9Poor placement for routing between an IO pin and BUFG. %s528*place2�
�This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	<MSGMETA::BEGIN::BLOCK>tck_IBUF_inst<MSGMETA::END> (IBUF.O) is locked to IOB_X1Y112
	<MSGMETA::BEGIN::BLOCK>tck_IBUF_BUFG_inst<MSGMETA::END> (BUFG.I) is provisionally placed by clockplacer on BUFGCTRL_X0Y0
"�
tck_IBUF_inst2�This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	:# (IBUF.O) is locked to IOB_X1Y112
	"\
tck_IBUF_BUFG_inst2 :B (BUFG.I) is provisionally placed by clockplacer on BUFGCTRL_X0Y0
8Z30-574h px� 
n
%s*common2U
SPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 1d85d04ff
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.87 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4502 ; free virtual = 11064h px� 
Y

Phase %s%s
101*constraints2
1.3 2
Build Placer Netlist ModelZ18-101h px� 
V
%s*common2=
;Phase 1.3 Build Placer Netlist Model | Checksum: 27aa1a3bc
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:10 ; elapsed = 00:00:05 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4500 ; free virtual = 11062h px� 
V

Phase %s%s
101*constraints2
1.4 2
Constrain Clocks/MacrosZ18-101h px� 
S
%s*common2:
8Phase 1.4 Constrain Clocks/Macros | Checksum: 27aa1a3bc
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:10 ; elapsed = 00:00:05 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4500 ; free virtual = 11062h px� 
O
%s*common26
4Phase 1 Placer Initialization | Checksum: 27aa1a3bc
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:10 ; elapsed = 00:00:05 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4500 ; free virtual = 11062h px� 
M

Phase %s%s
101*constraints2
2 2
Global PlacementZ18-101h px� 
L

Phase %s%s
101*constraints2
2.1 2
FloorplanningZ18-101h px� 
I
%s*common20
.Phase 2.1 Floorplanning | Checksum: 2b44fecbd
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:13 ; elapsed = 00:00:06 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4498 ; free virtual = 11060h px� 
`

Phase %s%s
101*constraints2
2.2 2#
!Update Timing before SLR Path OptZ18-101h px� 
]
%s*common2D
BPhase 2.2 Update Timing before SLR Path Opt | Checksum: 26ff431db
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:16 ; elapsed = 00:00:07 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4511 ; free virtual = 11072h px� 
_

Phase %s%s
101*constraints2
2.3 2"
 Post-Processing in FloorplanningZ18-101h px� 
\
%s*common2C
APhase 2.3 Post-Processing in Floorplanning | Checksum: 26ff431db
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:16 ; elapsed = 00:00:07 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4511 ; free virtual = 11072h px� 
T

Phase %s%s
101*constraints2
2.4 2
Global Placement CoreZ18-101h px� 
Q
%s*common28
6Phase 2.4 Global Placement Core | Checksum: 1aa7a3645
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:49 ; elapsed = 00:00:21 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4413 ; free virtual = 11062h px� 
J
%s*common21
/Phase 2 Global Placement | Checksum: 1aa7a3645
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:49 ; elapsed = 00:00:21 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4413 ; free virtual = 11062h px� 
M

Phase %s%s
101*constraints2
3 2
Detail PlacementZ18-101h px� 
Y

Phase %s%s
101*constraints2
3.1 2
Commit Multi Column MacrosZ18-101h px� 
V
%s*common2=
;Phase 3.1 Commit Multi Column Macros | Checksum: 21643f00d
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:52 ; elapsed = 00:00:22 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4413 ; free virtual = 11062h px� 
[

Phase %s%s
101*constraints2
3.2 2
Commit Most Macros & LUTRAMsZ18-101h px� 
X
%s*common2?
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 1e49a67fe
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:58 ; elapsed = 00:00:24 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4398 ; free virtual = 11061h px� 
U

Phase %s%s
101*constraints2
3.3 2
Area Swap OptimizationZ18-101h px� 
R
%s*common29
7Phase 3.3 Area Swap Optimization | Checksum: 17a6b05fa
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:59 ; elapsed = 00:00:24 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4395 ; free virtual = 11060h px� 
]

Phase %s%s
101*constraints2
3.4 2 
Pipeline Register OptimizationZ18-101h px� 
Z
%s*common2A
?Phase 3.4 Pipeline Register Optimization | Checksum: 127f2007d
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:59 ; elapsed = 00:00:24 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4395 ; free virtual = 11061h px� 
P

Phase %s%s
101*constraints2
3.5 2
Fast OptimizationZ18-101h px� 
M
%s*common24
2Phase 3.5 Fast Optimization | Checksum: 1bd3a97b1
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:06 ; elapsed = 00:00:26 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4153 ; free virtual = 11016h px� 
[

Phase %s%s
101*constraints2
3.6 2
Small Shape Detail PlacementZ18-101h px� 
X
%s*common2?
=Phase 3.6 Small Shape Detail Placement | Checksum: 28d320ee7
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:15 ; elapsed = 00:00:35 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4047 ; free virtual = 11004h px� 
Q

Phase %s%s
101*constraints2
3.7 2
Re-assign LUT pinsZ18-101h px� 
N
%s*common25
3Phase 3.7 Re-assign LUT pins | Checksum: 2012ae0c2
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:17 ; elapsed = 00:00:36 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4049 ; free virtual = 11006h px� 
]

Phase %s%s
101*constraints2
3.8 2 
Pipeline Register OptimizationZ18-101h px� 
Z
%s*common2A
?Phase 3.8 Pipeline Register Optimization | Checksum: 2012ae0c2
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:17 ; elapsed = 00:00:37 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4049 ; free virtual = 11006h px� 
P

Phase %s%s
101*constraints2
3.9 2
Fast OptimizationZ18-101h px� 
M
%s*common24
2Phase 3.9 Fast Optimization | Checksum: 1d34a57f5
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:29 ; elapsed = 00:00:41 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4042 ; free virtual = 10999h px� 
J
%s*common21
/Phase 3 Detail Placement | Checksum: 1d34a57f5
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:29 ; elapsed = 00:00:41 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4043 ; free virtual = 11000h px� 
e

Phase %s%s
101*constraints2
4 2*
(Post Placement Optimization and Clean-UpZ18-101h px� 
W

Phase %s%s
101*constraints2
4.1 2
Post Commit OptimizationZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
\

Phase %s%s
101*constraints2
4.1.1 2
Post Placement OptimizationZ18-101h px� 
V
APost Placement Optimization Initialization | Checksum: 10ba0e53e
*commonh px� 
Q

Phase %s%s
101*constraints2

4.1.1.1 2
BUFG InsertionZ18-101h px� 
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
t
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-2.6772
	-1273.199Z32-619h px� 
[
%s*common2B
@Phase 1 Physical Synthesis Initialization | Checksum: 1165f9970
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.77 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4051 ; free virtual = 11008h px� 
�
PProcessed net %s, BUFG insertion was skipped due to placement/routing conflicts.32*	placeflow25
3i_rstgen_main/i_rstgen_bypass/synch_regs_q_reg[3]_0Z46-33h px� 
�
�BUFG insertion identified %s candidate nets. Inserted BUFG: %s, Replicated BUFG Driver: %s, Skipped due to Placement/Routing Conflicts: %s, Skipped due to Timing Degradation: %s, Skipped due to netlist editing failed: %s.43*	placeflow2
12
02
02
12
02
0Z46-56h px� 
P
%s*common27
5Ending Physical Synthesis Task | Checksum: 10c64f3ad
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4052 ; free virtual = 11009h px� 
N
%s*common25
3Phase 4.1.1.1 BUFG Insertion | Checksum: 10ba0e53e
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:43 ; elapsed = 00:00:47 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4052 ; free virtual = 11009h px� 
e

Phase %s%s
101*constraints2

4.1.1.2 2$
"Post Placement Timing OptimizationZ18-101h px� 
�
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
-1.204Z30-746h px� 
a
%s*common2H
FPhase 4.1.1.2 Post Placement Timing Optimization | Checksum: a310f503
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:47 ; elapsed = 00:00:50 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4168 ; free virtual = 11037h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:47 ; elapsed = 00:00:50 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4168 ; free virtual = 11037h px� 
S
%s*common2:
8Phase 4.1 Post Commit Optimization | Checksum: a310f503
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:47 ; elapsed = 00:00:50 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4167 ; free virtual = 11037h px� 
U

Phase %s%s
101*constraints2
4.2 2
Post Placement CleanupZ18-101h px� 
Q
%s*common28
6Phase 4.2 Post Placement Cleanup | Checksum: a310f503
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:47 ; elapsed = 00:00:51 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4167 ; free virtual = 11037h px� 
O

Phase %s%s
101*constraints2
4.3 2
Placer ReportingZ18-101h px� 
[

Phase %s%s
101*constraints2
4.3.1 2
Print Estimated CongestionZ18-101h px� 
�
'Post-Placement Estimated Congestion %s
38*	placeflow2�
�
 ____________________________________________________
|           | Global Congestion | Short Congestion  |
| Direction | Region Size       | Region Size       |
|___________|___________________|___________________|
|      North|                2x2|                8x8|
|___________|___________________|___________________|
|      South|                2x2|                4x4|
|___________|___________________|___________________|
|       East|                8x8|                8x8|
|___________|___________________|___________________|
|       West|                1x1|                1x1|
|___________|___________________|___________________|
Z30-612h px� 
W
%s*common2>
<Phase 4.3.1 Print Estimated Congestion | Checksum: a310f503
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:47 ; elapsed = 00:00:51 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4167 ; free virtual = 11037h px� 
K
%s*common22
0Phase 4.3 Placer Reporting | Checksum: a310f503
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:48 ; elapsed = 00:00:51 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4167 ; free virtual = 11037h px� 
V

Phase %s%s
101*constraints2
4.4 2
Final Placement CleanupZ18-101h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2
00:00:00.012

00:00:002

3375.2702
0.0002
41672
11037Z17-722h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:48 ; elapsed = 00:00:51 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4167 ; free virtual = 11037h px� 
b
%s*common2I
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 113520ee4
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:48 ; elapsed = 00:00:51 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4167 ; free virtual = 11037h px� 
D
%s*common2+
)Ending Placer Task | Checksum: 101b4ca13
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:48 ; elapsed = 00:00:51 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4167 ; free virtual = 11037h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
662
12
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
place_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
place_design: 2

00:01:512

00:00:522

3375.2702
0.0002
41672
11037Z17-722h px� 
�
)Running report commands "%s" in parallel.56334*	planAhead24
2report_control_sets, report_io, report_utilizationZ12-24838h px� 
Y
+Running report generation with %s threads.
56333*	planAhead2
3Z12-24831h px� 
q
Executing command : %s
56330*	planAhead2/
-report_io -file cva6_zybo_z7_20_io_placed.rptZ12-24828h px� 
�
�report_io: Time (s): cpu = 00:00:00.19 ; elapsed = 00:00:00.14 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4141 ; free virtual = 11011
*commonh px� 
�
Executing command : %s
56330*	planAhead2L
Jreport_control_sets -verbose -file cva6_zybo_z7_20_control_sets_placed.rptZ12-24828h px� 
�
�report_control_sets: Time (s): cpu = 00:00:00.24 ; elapsed = 00:00:00.18 . Memory (MB): peak = 3375.270 ; gain = 0.000 ; free physical = 4153 ; free virtual = 11023
*commonh px� 
�
Executing command : %s
56330*	planAhead2k
ireport_utilization -file cva6_zybo_z7_20_utilization_placed.rpt -pb cva6_zybo_z7_20_utilization_placed.pbZ12-24828h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2
00:00:00.252
00:00:00.062

3375.2702
0.0002
41402
11016Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote PlaceDB: 2

00:00:032

00:00:012

3375.2702
0.0002
41092
11025Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote PulsedLatchDB: 2

00:00:002

00:00:002

3375.2702
0.0002
41092
11025Z17-722h px� 
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
00:00:00.092
00:00:00.062

3375.2702
0.0002
41092
11025Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote Netlist Cache: 2
00:00:00.062
00:00:00.032

3375.2702
0.0002
40942
11013Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote Device Cache: 2
00:00:00.012
00:00:00.012

3375.2702
0.0002
40942
11014Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write Physdb Complete: 2

00:00:042

00:00:012

3375.2702
0.0002
40942
11014Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2z
x/home/utilisateur/Bureau/projet_M2/cva6-softcore-contest/corev_apu/fpga/cva6_fpga.runs/impl_1/cva6_zybo_z7_20_placed.dcpZ17-1381h px� 


End Record