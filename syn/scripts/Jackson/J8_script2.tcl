create_mw_lib -technology $techfile -mw_reference_library $ref_lib SAED_LIB
open_mw_lib SAED_LIB
set_tlu_plus_files -max_tluplus $tlupmax -min_tluplus $tlupmin -tech2itf_map $tech2itf


analyze -format verilog {../src/J8_adder.v}


set all_modules {J8_stage_1 J8_stage_2 } 
foreach module $all_modules {
    elaborate $module
    current_design $module
    link
    set_max_delay 0.03 -from [all_inputs] -to [all_outputs]
    set_max_area 0
    compile_ultra
#    report_timing > $module.log
#    report_area >> $module.log
    set_dont_touch $module
}


elaborate J8_adder
current_design J8_adder
link
set_max_delay 0.11 -from [all_inputs] -to [all_outputs]
set_max_area 0
set_driving_cell -lib_cell DFFX1_RVT -pin Q [all_inputs]
set_load [expr [load_of saed32rvt_tt1p05v25c/DFFX1_RVT/D]] [all_outputs]
compile_ultra
set_max_area 0
compile_ultra -incremental

report_timing -significant 3 > J8_adder.log
report_area -hierarchy >> J8_adder.log

set_switching_activity -static 0.5 [all_inputs]

report_power >> J8_adder.log

quit