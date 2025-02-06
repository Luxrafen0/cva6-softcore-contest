namespace eval ::optrace {
  variable script "/nfs/home/camsi6/Documents/Projet_CVA6/cva6-softcore-contest/corev_apu/fpga/cva6_fpga.runs/impl_1/cva6_zybo_z7_20.tcl"
  variable category "vivado_impl"
}

# Try to connect to running dispatch if we haven't done so already.
# This code assumes that the Tcl interpreter is not using threads,
# since the ::dispatch::connected variable isn't mutex protected.
if {![info exists ::dispatch::connected]} {
  namespace eval ::dispatch {
    variable connected false
    if {[llength [array get env XILINX_CD_CONNECT_ID]] > 0} {
      set result "true"
      if {[catch {
        if {[lsearch -exact [package names] DispatchTcl] < 0} {
          set result [load librdi_cd_clienttcl[info sharedlibextension]] 
        }
        if {$result eq "false"} {
          puts "WARNING: Could not load dispatch client library"
        }
        set connect_id [ ::dispatch::init_client -mode EXISTING_SERVER ]
        if { $connect_id eq "" } {
          puts "WARNING: Could not initialize dispatch client"
        } else {
          puts "INFO: Dispatch client connection id - $connect_id"
          set connected true
        }
      } catch_res]} {
        puts "WARNING: failed to connect to dispatch server - $catch_res"
      }
    }
  }
}
if {$::dispatch::connected} {
  # Remove the dummy proc if it exists.
  if { [expr {[llength [info procs ::OPTRACE]] > 0}] } {
    rename ::OPTRACE ""
  }
  proc ::OPTRACE { task action {tags {} } } {
    ::vitis_log::op_trace "$task" $action -tags $tags -script $::optrace::script -category $::optrace::category
  }
  # dispatch is generic. We specifically want to attach logging.
  ::vitis_log::connect_client
} else {
  # Add dummy proc if it doesn't exist.
  if { [expr {[llength [info procs ::OPTRACE]] == 0}] } {
    proc ::OPTRACE {{arg1 \"\" } {arg2 \"\"} {arg3 \"\" } {arg4 \"\"} {arg5 \"\" } {arg6 \"\"}} {
        # Do nothing
    }
  }
}

proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    } elseif { [info exist ::env(HOST)] } {
      set host $::env(HOST)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
OPTRACE "impl_1" END { }
}

set_msg_config  -id {[Synth 8-5858]}  -new_severity {INFO} 

OPTRACE "impl_1" START { ROLLUP_1 }
OPTRACE "Phase: Init Design" START { ROLLUP_AUTO }
start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param chipscope.maxJobs 4
  set_param runs.launchOptions { -jobs 8  }
OPTRACE "create in-memory project" START { }
  create_project -in_memory -part xc7z020clg400-1
  set_property board_part_repo_paths {/nfs/xilinx/vivado-boards/new/board_files} [current_project]
  set_property board_part digilentinc.com:zybo-z7-20:part0:1.2 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
OPTRACE "create in-memory project" END { }
OPTRACE "set parameters" START { }
  set_property webtalk.parent_dir /nfs/home/camsi6/Documents/Projet_CVA6/cva6-softcore-contest/corev_apu/fpga/cva6_fpga.cache/wt [current_project]
  set_property parent.project_path /nfs/home/camsi6/Documents/Projet_CVA6/cva6-softcore-contest/corev_apu/fpga/cva6_fpga.xpr [current_project]
  set_property ip_output_repo /nfs/home/camsi6/Documents/Projet_CVA6/cva6-softcore-contest/corev_apu/fpga/cva6_fpga.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
OPTRACE "set parameters" END { }
OPTRACE "add files" START { }
  add_files -quiet /nfs/home/camsi6/Documents/Projet_CVA6/cva6-softcore-contest/corev_apu/fpga/cva6_fpga.runs/synth_1/cva6_zybo_z7_20.dcp
  read_ip -quiet /nfs/home/camsi6/Documents/Projet_CVA6/cva6-softcore-contest/corev_apu/fpga/xilinx/xlnx_axi_dwidth_converter_dm_master/xlnx_axi_dwidth_converter_dm_master.srcs/sources_1/ip/xlnx_axi_dwidth_converter_dm_master/xlnx_axi_dwidth_converter_dm_master.xci
  read_ip -quiet /nfs/home/camsi6/Documents/Projet_CVA6/cva6-softcore-contest/corev_apu/fpga/xilinx/xlnx_axi_dwidth_converter_dm_slave/xlnx_axi_dwidth_converter_dm_slave.srcs/sources_1/ip/xlnx_axi_dwidth_converter_dm_slave/xlnx_axi_dwidth_converter_dm_slave.xci
  read_ip -quiet /nfs/home/camsi6/Documents/Projet_CVA6/cva6-softcore-contest/corev_apu/fpga/xilinx/xlnx_blk_mem_gen/xlnx_blk_mem_gen.srcs/sources_1/ip/xlnx_blk_mem_gen/xlnx_blk_mem_gen.xci
  read_ip -quiet /nfs/home/camsi6/Documents/Projet_CVA6/cva6-softcore-contest/corev_apu/fpga/xilinx/xlnx_clk_gen/xlnx_clk_gen.srcs/sources_1/ip/xlnx_clk_gen/xlnx_clk_gen.xci
OPTRACE "read constraints: implementation" START { }
  read_xdc /nfs/home/camsi6/Documents/Projet_CVA6/cva6-softcore-contest/corev_apu/fpga/constraints/zybo_z7_20.xdc
  read_xdc /nfs/home/camsi6/Documents/Projet_CVA6/cva6-softcore-contest/corev_apu/fpga/constraints/cva6_fpga.xdc
OPTRACE "read constraints: implementation" END { }
OPTRACE "read constraints: implementation_pre" START { }
OPTRACE "read constraints: implementation_pre" END { }
OPTRACE "add files" END { }
OPTRACE "link_design" START { }
  link_design -top cva6_zybo_z7_20 -part xc7z020clg400-1 
OPTRACE "link_design" END { }
OPTRACE "gray box cells" START { }
OPTRACE "gray box cells" END { }
OPTRACE "init_design_reports" START { REPORT }
OPTRACE "init_design_reports" END { }
OPTRACE "init_design_write_hwdef" START { }
OPTRACE "init_design_write_hwdef" END { }
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

OPTRACE "Phase: Init Design" END { }
OPTRACE "Phase: Opt Design" START { ROLLUP_AUTO }
start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
OPTRACE "read constraints: opt_design" START { }
OPTRACE "read constraints: opt_design" END { }
OPTRACE "opt_design" START { }
  opt_design 
OPTRACE "opt_design" END { }
OPTRACE "read constraints: opt_design_post" START { }
OPTRACE "read constraints: opt_design_post" END { }
OPTRACE "opt_design reports" START { REPORT }
  set_param project.isImplRun true
  generate_parallel_reports -reports { "report_drc -file cva6_zybo_z7_20_drc_opted.rpt -pb cva6_zybo_z7_20_drc_opted.pb -rpx cva6_zybo_z7_20_drc_opted.rpx"  }
  set_param project.isImplRun false
OPTRACE "opt_design reports" END { }
OPTRACE "Opt Design: write_checkpoint" START { CHECKPOINT }
  write_checkpoint -force cva6_zybo_z7_20_opt.dcp
OPTRACE "Opt Design: write_checkpoint" END { }
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

OPTRACE "Phase: Opt Design" END { }
OPTRACE "Phase: Place Design" START { ROLLUP_AUTO }
start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
OPTRACE "read constraints: place_design" START { }
OPTRACE "read constraints: place_design" END { }
  if { [llength [get_debug_cores -quiet] ] > 0 }  { 
OPTRACE "implement_debug_core" START { }
    implement_debug_core 
OPTRACE "implement_debug_core" END { }
  } 
OPTRACE "place_design" START { }
  place_design -directive RuntimeOptimized
OPTRACE "place_design" END { }
OPTRACE "read constraints: place_design_post" START { }
OPTRACE "read constraints: place_design_post" END { }
OPTRACE "place_design reports" START { REPORT }
  set_param project.isImplRun true
  generate_parallel_reports -reports { "report_io -file cva6_zybo_z7_20_io_placed.rpt" "report_utilization -file cva6_zybo_z7_20_utilization_placed.rpt -pb cva6_zybo_z7_20_utilization_placed.pb" "report_control_sets -verbose -file cva6_zybo_z7_20_control_sets_placed.rpt"  }
  set_param project.isImplRun false
OPTRACE "place_design reports" END { }
OPTRACE "Place Design: write_checkpoint" START { CHECKPOINT }
  write_checkpoint -force cva6_zybo_z7_20_placed.dcp
OPTRACE "Place Design: write_checkpoint" END { }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

OPTRACE "Phase: Place Design" END { }
OPTRACE "Phase: Physical Opt Design" START { ROLLUP_AUTO }
start_step phys_opt_design
set ACTIVE_STEP phys_opt_design
set rc [catch {
  create_msg_db phys_opt_design.pb
OPTRACE "read constraints: phys_opt_design" START { }
OPTRACE "read constraints: phys_opt_design" END { }
OPTRACE "phys_opt_design" START { }
  phys_opt_design 
OPTRACE "phys_opt_design" END { }
OPTRACE "read constraints: phys_opt_design_post" START { }
OPTRACE "read constraints: phys_opt_design_post" END { }
OPTRACE "phys_opt_design report" START { REPORT }
OPTRACE "phys_opt_design report" END { }
OPTRACE "Post-Place Phys Opt Design: write_checkpoint" START { CHECKPOINT }
  write_checkpoint -force cva6_zybo_z7_20_physopt.dcp
OPTRACE "Post-Place Phys Opt Design: write_checkpoint" END { }
  close_msg_db -file phys_opt_design.pb
} RESULT]
if {$rc} {
  step_failed phys_opt_design
  return -code error $RESULT
} else {
  end_step phys_opt_design
  unset ACTIVE_STEP 
}

OPTRACE "Phase: Physical Opt Design" END { }
OPTRACE "Phase: Route Design" START { ROLLUP_AUTO }
  set_msg_config -source 4 -id {Route 35-39} -severity "critical warning" -new_severity warning
start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
OPTRACE "read constraints: route_design" START { }
OPTRACE "read constraints: route_design" END { }
OPTRACE "route_design" START { }
  route_design -directive RuntimeOptimized
OPTRACE "route_design" END { }
OPTRACE "read constraints: route_design_post" START { }
OPTRACE "read constraints: route_design_post" END { }
OPTRACE "route_design reports" START { REPORT }
  set_param project.isImplRun true
  generate_parallel_reports -reports { "report_drc -file cva6_zybo_z7_20_drc_routed.rpt -pb cva6_zybo_z7_20_drc_routed.pb -rpx cva6_zybo_z7_20_drc_routed.rpx" "report_methodology -file cva6_zybo_z7_20_methodology_drc_routed.rpt -pb cva6_zybo_z7_20_methodology_drc_routed.pb -rpx cva6_zybo_z7_20_methodology_drc_routed.rpx" "report_power -file cva6_zybo_z7_20_power_routed.rpt -pb cva6_zybo_z7_20_power_summary_routed.pb -rpx cva6_zybo_z7_20_power_routed.rpx" "report_route_status -file cva6_zybo_z7_20_route_status.rpt -pb cva6_zybo_z7_20_route_status.pb" "report_timing_summary -max_paths 10 -report_unconstrained -file cva6_zybo_z7_20_timing_summary_routed.rpt -pb cva6_zybo_z7_20_timing_summary_routed.pb -rpx cva6_zybo_z7_20_timing_summary_routed.rpx" "report_incremental_reuse -file cva6_zybo_z7_20_incremental_reuse_routed.rpt" "report_clock_utilization -file cva6_zybo_z7_20_clock_utilization_routed.rpt" "report_bus_skew -warn_on_violation -file cva6_zybo_z7_20_bus_skew_routed.rpt -pb cva6_zybo_z7_20_bus_skew_routed.pb -rpx cva6_zybo_z7_20_bus_skew_routed.rpx"  }
  set_param project.isImplRun false
OPTRACE "route_design reports" END { }
OPTRACE "Route Design: write_checkpoint" START { CHECKPOINT }
  write_checkpoint -force cva6_zybo_z7_20_routed.dcp
OPTRACE "Route Design: write_checkpoint" END { }
OPTRACE "route_design misc" START { }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
OPTRACE "route_design write_checkpoint" START { CHECKPOINT }
OPTRACE "route_design write_checkpoint" END { }
  write_checkpoint -force cva6_zybo_z7_20_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

OPTRACE "route_design misc" END { }
OPTRACE "Phase: Route Design" END { }
OPTRACE "Phase: Phys-Opt Design" START { ROLLUP_AUTO }
start_step post_route_phys_opt_design
set ACTIVE_STEP post_route_phys_opt_design
set rc [catch {
  set tool_flow [get_property -quiet TOOL_FLOW [current_project -quiet]]
  if {$tool_flow eq {SDx}} {send_msg_id {101-1} {status} {Starting optional post-route physical design optimization.} }
  create_msg_db post_route_phys_opt_design.pb
OPTRACE "phys_opt_design" START { }
  phys_opt_design 
OPTRACE "phys_opt_design" END { }
OPTRACE "phys_opt_design reports" START { REPORT }
  set_param project.isImplRun true
  generate_parallel_reports -reports { "report_timing_summary -max_paths 10 -report_unconstrained -warn_on_violation -file cva6_zybo_z7_20_timing_summary_postroute_physopted.rpt -pb cva6_zybo_z7_20_timing_summary_postroute_physopted.pb -rpx cva6_zybo_z7_20_timing_summary_postroute_physopted.rpx" "report_bus_skew -warn_on_violation -file cva6_zybo_z7_20_bus_skew_postroute_physopted.rpt -pb cva6_zybo_z7_20_bus_skew_postroute_physopted.pb -rpx cva6_zybo_z7_20_bus_skew_postroute_physopted.rpx"  }
  set_param project.isImplRun false
OPTRACE "phys_opt_design reports" END { }
OPTRACE "Post-Route Phys Opt Design: write_checkpoint" START { CHECKPOINT }
  write_checkpoint -force cva6_zybo_z7_20_postroute_physopt.dcp
OPTRACE "Post-Route Phys Opt Design: write_checkpoint" END { }
OPTRACE "phys_opt_design misc" START { }
  close_msg_db -file post_route_phys_opt_design.pb
  set tool_flow [get_property TOOL_FLOW [current_project]]
  if {$tool_flow eq {SDx}} {send_msg_id {101-1} {status} {Finished optional post-route physical design optimization.} }
} RESULT]
if {$rc} {
  step_failed post_route_phys_opt_design
  return -code error $RESULT
} else {
  end_step post_route_phys_opt_design
  unset ACTIVE_STEP 
}

OPTRACE "phys_opt_design misc" END { }
OPTRACE "Phase: Phys-Opt Design" END { }
OPTRACE "impl_1" END { }
