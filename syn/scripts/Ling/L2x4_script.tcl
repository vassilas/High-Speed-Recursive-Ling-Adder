
# Read the design
# ----------------------------------------------------
read_verilog ../src/L8_adder.v

set all_blocks {L2x4_stage_1 L2x4_stage_2 L2x4_stage_3 } 


foreach block $all_blocks {
    current_design $block
    link
    compile_ultra
    set_dont_touch $block
}

current_design L2x4_adder
link
compile_ultra



# Analyze and debug the design
# ----------------------------------------------------
report_timing > reports/L2x4_timing.rpt
report_area >> reports/L2x4_timing.rpt
report_power >> reports/L2x4_timing.rpt

exit
