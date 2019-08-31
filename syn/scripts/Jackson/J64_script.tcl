

# Read the design
# ----------------------------------------------------

read_verilog ../src/J64_adder.v

# ----------------------------------------------------



set all_blocks {J64_stage_1 J64_stage_2 J64_stage_3 J64_stage_4 J64_D_recursion} 


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

current_design J64_adder
link
compile_ultra



# Analyze and debug the design
# ----------------------------------------------------
report_timing > reports/J64_timing.rpt
report_area >> reports/J64_timing.rpt
report_power >> reports/J64_timing.rpt



exit
