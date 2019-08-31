
# Read the design
# ----------------------------------------------------
read_verilog ../src/P32_adder.v

set all_blocks {P2x4x4_stage_1 P2x4x4_stage_2 P2x4x4_stage_3 P2x4x4_stage_4} 




# Map and optimize the design
# ----------------------------------------------------
# compile
# compile each subblock independently
foreach block $all_blocks {
    current_design $block
    link
    compile_ultra
    set_dont_touch $block
}

current_design P2x4x4_adder
link
compile_ultra



# Analyze and debug the design
# ----------------------------------------------------
report_timing > reports/P2x4x4_report.log
report_area >> reports/P2x4x4_report.log
report_power >> reports/P2x4x4_report.log

exit
