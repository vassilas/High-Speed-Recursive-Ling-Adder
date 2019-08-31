
# Read the design
# ----------------------------------------------------
read_verilog ../src/P16_adder.v

set all_blocks {P4x4_stage_1 P4x4_stage_2 P4x4_stage_3 } 


foreach block $all_blocks {
    current_design $block
    link
    compile_ultra
    set_dont_touch $block
}

current_design P4x4_adder
link
compile_ultra



# Analyze and debug the design
# ----------------------------------------------------
report_timing > reports/P4x4_report.log
report_area >> reports/P4x4_report.log
report_power >> reports/P4x4_report.log

exit