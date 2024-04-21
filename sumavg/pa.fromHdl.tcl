
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name sumavg -dir "C:/Users/giulio/Desktop/sumavg/sumavg/planAhead_run_1" -part xc6slx45csg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property top dispatcher $srcset
set_param project.paUcfFile  "dispatcher.ucf"
set hdlfile [add_files [list {../code/dispatcherDP.vhdl}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../code/dispatcherCU.vhdl}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../code/dispatcher.vhdl}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
add_files "dispatcher.ucf" -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx45csg324-3
