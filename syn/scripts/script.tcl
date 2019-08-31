
# -------------------------------------------------------------------
# Prefix Adders
# -------------------------------------------------------------------

# P2x4
# -------------------------------------------------------------------
read_verilog ../src/P8_adder.v

set all_blocks {P8_stage_1 P2x4_stage_2}
foreach block $all_blocks {
    current_design $block
    link
    compile_ultra
    set_dont_touch $block
}
current_design P2x4_adder
link
compile_ultra

report_timing > reports/P2x4_adder.log
report_area >> reports/P2x4_adder.log
report_power >> reports/P2x4_adder.log

# P4x4
# -------------------------------------------------------------------
read_verilog ../src/P16_adder.v

set all_blocks {P4x4_stage_1 P4x4_stage_2 }
foreach block $all_blocks {
    current_design $block
    link
    compile_ultra
    set_dont_touch $block
}
current_design P4x4_adder
link
compile_ultra

report_timing > reports/P4x4_adder.log
report_area >> reports/P4x4_adder.log
report_power >> reports/P4x4_adder.log

# P2x4x4
# -------------------------------------------------------------------
read_verilog ../src/P32_adder.v

set all_blocks {P32_stage_1 P2x4x4_stage_2 P2x4x4_stage_3 }
foreach block $all_blocks {
    current_design $block
    link
    compile_ultra
    set_dont_touch $block
}
current_design P2x4x4_adder
link
compile_ultra

report_timing > reports/P2x4x4_adder.log
report_area >> reports/P2x4x4_adder.log
report_power >> reports/P2x4x4_adder.log

# P4x4x4
# -------------------------------------------------------------------
read_verilog ../src/P64_adder.v

set all_blocks {P4x4x4_stage_1 P4x4x4_stage_2 P4x4x4_stage_3 }
foreach block $all_blocks {
    current_design $block
    link
    compile_ultra
    set_dont_touch $block
}
current_design P4x4x4_adder
link
compile_ultra

report_timing > reports/P4x4x4_adder.log
report_area >> reports/P4x4x4_adder.log
report_power >> reports/P4x4x4_adder.log









# -------------------------------------------------------------------
# Ling Adders
# -------------------------------------------------------------------

# L2x4
# -------------------------------------------------------------------
read_verilog ../src/L8_adder.v

set all_blocks {L8_stage_1 L2x4_stage_2 }
foreach block $all_blocks {
    current_design $block
    link
    compile_ultra
    set_dont_touch $block
}
current_design L2x4_adder
link
compile_ultra

report_timing > reports/L2x4_adder.log
report_area >> reports/L2x4_adder.log
report_power >> reports/L2x4_adder.log

# L4x4
# -------------------------------------------------------------------
read_verilog ../src/L16_adder.v

set all_blocks {L4x4_stage_1 L4x4_stage_2 }
foreach block $all_blocks {
    current_design $block
    link
    compile_ultra
    set_dont_touch $block
}
current_design L4x4_adder
link
compile_ultra

report_timing > reports/L4x4_adder.log
report_area >> reports/L4x4_adder.log
report_power >> reports/L4x4_adder.log

# L2x4x4
# -------------------------------------------------------------------
read_verilog ../src/L32_adder.v

set all_blocks {L32_stage_1 L2x4x4_stage_2 L2x4x4_stage_3 }
foreach block $all_blocks {
    current_design $block
    link
    compile_ultra
    set_dont_touch $block
}
current_design L2x4x4_adder
link
compile_ultra

report_timing > reports/L2x4x4_adder.log
report_area >> reports/L2x4x4_adder.log
report_power >> reports/L2x4x4_adder.log

# L4x4x4
# -------------------------------------------------------------------
read_verilog ../src/L64_adder.v

set all_blocks {L4x4x4_stage_1 L4x4x4_stage_2 L4x4x4_stage_3 }
foreach block $all_blocks {
    current_design $block
    link
    compile_ultra
    set_dont_touch $block
}
current_design L4x4x4_adder
link
compile_ultra

report_timing > reports/L4x4x4_adder.log
report_area >> reports/L4x4x4_adder.log
report_power >> reports/L4x4x4_adder.log










# -------------------------------------------------------------------
# Jackson Adders
# -------------------------------------------------------------------

# J2x4
# -------------------------------------------------------------------
read_verilog ../src/J8_adder.v

set all_blocks {J8_stage_1 J8_stage_2 }
foreach block $all_blocks {
    current_design $block
    link
    compile_ultra
    set_dont_touch $block
}
current_design J8_adder
link
compile_ultra

report_timing > reports/J8_adder.log
report_area >> reports/J8_adder.log
report_power >> reports/J8_adder.log

# J4x4
# -------------------------------------------------------------------
read_verilog ../src/J16_adder.v

set all_blocks {J4x4_stage_1 J4x4_stage_2 J4x4_D_recursion }
foreach block $all_blocks {
    current_design $block
    link
    compile_ultra
    set_dont_touch $block
}
current_design J4x4_adder
link
compile_ultra

report_timing > reports/J4x4_adder.log
report_area >> reports/J4x4_adder.log
report_power >> reports/J4x4_adder.log

# J2x4x4
# -------------------------------------------------------------------
read_verilog ../src/J32_adder.v

set all_blocks {J32_stage_1 J32_stage_2 J32_stage_3 J32_D_recursion }
foreach block $all_blocks {
    current_design $block
    link
    compile_ultra
    set_dont_touch $block
}
current_design J32_adder
link
compile_ultra

report_timing > reports/J32_adder.log
report_area >> reports/J32_adder.log
report_power >> reports/J32_adder.log

# J4x4x4
# -------------------------------------------------------------------
read_verilog ../src/J64_adder.v

set all_blocks {J4x4x4_stage_1 J4x4x4_stage_2 J4x4x4_stage_3 J4x4x4_D_recursion }
foreach block $all_blocks {
    current_design $block
    link
    compile_ultra
    set_dont_touch $block
}
current_design J4x4x4_adder
link
compile_ultra

report_timing > reports/J4x4x4_adder.log
report_area >> reports/J4x4x4_adder.log
report_power >> reports/J4x4x4_adder.log
