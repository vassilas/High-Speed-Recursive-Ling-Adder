# Read the design
# ----------------------------------------------------
read_verilog ../src/J16_adder.v

set all_blocks {J4x4_stage_1 J4x4_stage_2 J4x4_D_recursion}
# Map and optimize the design
# ----------------------------------------------------
# compile each subblock independently
foreach block $all_blocks {
    current_design $block
    link
    compile_ultra
    set_dont_touch $block
}

current_design J4x4_adder
link
compile_ultra

# Analyze and debug the design
# ----------------------------------------------------
report_timing > reports/J4x4_timing.rpt
report_area >> reports/J4x4_timing.rpt
report_power >> reports/J4x4_timing.rpt

exit 