


# Read the design
# ----------------------------------------------------
read_verilog ../src/J8_adder.v

set all_blocks {J8_stage_1 J8_stage_2 J8_stage_3}
# Map and optimize the design
# ----------------------------------------------------
# compile each subblock independently
foreach block $all_blocks {
    current_design $block
    link
    compile_ultra
    set_dont_touch $block
}

current_design J8_adder
link
compile_ultra

# Analyze and debug the design
# ----------------------------------------------------
report_timing > reports/J8_timing.rpt
report_area >> reports/J8_timing.rpt
report_power >> reports/J8_timing.rpt

exit 