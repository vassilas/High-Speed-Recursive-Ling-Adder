# Specify the libraries
# ----------------------------------------------------
set_app_var search_path ". ../lib/SAED32/libraries"
set_app_var target_library "../lib/SAED32/libraries/saed32rvt_tt1p05v25c.db"
set_app_var link_library "$target_library"


# Read the design
# ----------------------------------------------------
read_verilog ../src/L64_adder.v

set all_blocks {L64_stage_1 L2x4x4x2_stage_2 L2x4x4x2_stage_3 L2x4x4x2_stage_4 } 




# Map and optimize the design
# ----------------------------------------------------
# compile
# compile each subblock independently
foreach block $all_blocks {
    current_design $block
    link
    compile_ultra
}
set_dont_touch L64_stage_1
set_dont_touch L2x4x4x2_stage_2
set_dont_touch L2x4x4x2_stage_3
set_dont_touch L2x4x4x2_stage_4
current_design L2x4x4x2_adder
link
compile_ultra



# Analyze and debug the design
# ----------------------------------------------------
report_timing > reports/L2x4x4x2_timing.rpt

exit