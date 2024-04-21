
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name ssynth -dir "C:/Users/giulio/Desktop/sumavg/ssynth/planAhead_run_1" -part xc6slx45csg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property top sumavg_dp $srcset
set_param project.paUcfFile  "sumavg_dp.ucf"
set hdlfile [add_files [list {../code/dividerDP.vhdl}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../code/dividerCU.vhdl}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../code/divider.vhdl}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../code/sumavgDP.vhdl}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
add_files "sumavg_dp.ucf" -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx45csg324-3
