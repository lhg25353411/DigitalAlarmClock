# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param simulator.modelsimInstallPath D:/SoftWare/ModelSIm/win64
set_param synth.incrementalSynthesisCache C:/Users/Princeling/AppData/Roaming/Xilinx/Vivado/.Xil/Vivado-20324-LAPTOP-LTO7EJI2/incrSyn
set_param xicom.use_bs_reader 1
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/EELab/FPGA/HomeWork/Alarm_clock/Alarm_clock.cache/wt [current_project]
set_property parent.project_path D:/EELab/FPGA/HomeWork/Alarm_clock/Alarm_clock.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:nexys-a7-100t:part0:1.0 [current_project]
set_property ip_repo_paths d:/EELab/FPGA/PrincelingModuleHub/IP/vga_0 [current_project]
set_property ip_output_repo d:/EELab/FPGA/HomeWork/Alarm_clock/Alarm_clock.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  D:/EELab/FPGA/HomeWork/Alarm_clock/Alarm_clock.srcs/sources_1/new/check_alarm.v
  D:/EELab/FPGA/HomeWork/Alarm_clock/Alarm_clock.srcs/sources_1/new/clock_generator.v
  D:/EELab/FPGA/HomeWork/Alarm_clock/Alarm_clock.srcs/sources_1/new/counter_60.v
  D:/EELab/FPGA/HomeWork/Alarm_clock/Alarm_clock.srcs/sources_1/imports/debounce/counter_mod_m.v
  D:/EELab/FPGA/HomeWork/Alarm_clock/Alarm_clock.srcs/sources_1/imports/debounce/debounce.v
  D:/EELab/FPGA/HomeWork/Alarm_clock/Alarm_clock.srcs/sources_1/imports/src/display_clock.v
  D:/EELab/FPGA/HomeWork/Alarm_clock/Alarm_clock.srcs/sources_1/new/dot_mux.v
  D:/EELab/FPGA/HomeWork/Alarm_clock/Alarm_clock.srcs/sources_1/imports/edge_detect/edge_detect.v
  D:/EELab/FPGA/HomeWork/Alarm_clock/Alarm_clock.srcs/sources_1/imports/src/four_one_mux.v
  D:/EELab/FPGA/HomeWork/Alarm_clock/Alarm_clock.srcs/sources_1/imports/src/music_sheet.v
  D:/EELab/FPGA/HomeWork/Alarm_clock/Alarm_clock.srcs/sources_1/new/ram_set.v
  D:/EELab/FPGA/HomeWork/Alarm_clock/Alarm_clock.srcs/sources_1/new/rgb_out.v
  D:/EELab/FPGA/HomeWork/Alarm_clock/Alarm_clock.srcs/sources_1/new/set_alarm.v
  D:/EELab/FPGA/HomeWork/Alarm_clock/Alarm_clock.srcs/sources_1/new/set_signal_detect.v
  D:/EELab/FPGA/HomeWork/Alarm_clock/Alarm_clock.srcs/sources_1/new/set_time.v
  D:/EELab/FPGA/HomeWork/Alarm_clock/Alarm_clock.srcs/sources_1/imports/src/seven_seg_decoder.v
  D:/EELab/FPGA/HomeWork/Alarm_clock/Alarm_clock.srcs/sources_1/imports/src/seven_seg_display.v
  D:/EELab/FPGA/HomeWork/Alarm_clock/Alarm_clock.srcs/sources_1/imports/src/song_player.v
  D:/EELab/FPGA/HomeWork/Alarm_clock/Alarm_clock.srcs/sources_1/new/two_bit_counter.v
  D:/EELab/FPGA/HomeWork/Alarm_clock/Alarm_clock.srcs/sources_1/new/two_four_decoder.v
  D:/EELab/FPGA/HomeWork/Alarm_clock/Alarm_clock.srcs/sources_1/imports/VGA/vga_sync.v
  D:/EELab/FPGA/HomeWork/Alarm_clock/Alarm_clock.srcs/sources_1/new/alarm_clock_top.v
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/EELab/FPGA/HomeWork/Alarm_clock/Alarm_clock.srcs/constrs_1/imports/src/Nexys4DDR_Master.xdc
set_property used_in_implementation false [get_files D:/EELab/FPGA/HomeWork/Alarm_clock/Alarm_clock.srcs/constrs_1/imports/src/Nexys4DDR_Master.xdc]

set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top alarm_clock_top -part xc7a100tcsg324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef alarm_clock_top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file alarm_clock_top_utilization_synth.rpt -pb alarm_clock_top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
