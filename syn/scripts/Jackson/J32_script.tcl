



# Read the design
# ----------------------------------------------------

read_verilog ../src/J32_adder.v 


set all_blocks {J32_stage_1 J32_stage_2 J32_stage_3 J32_D_recursion} 


foreach block $all_blocks {
    current_design $block
    link
    compile_ultra
    set_dont_touch $block
}

current_design J32_adder
link
compile_ultra



# Analyze and debug the design
# ----------------------------------------------------
report_timing > reports/J32_timing.rpt
report_area >> reports/J32_timing.rpt
report_power >> reports/J32_timing.rpt

exit

