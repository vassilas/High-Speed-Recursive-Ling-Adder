# Specify the libraries
# ----------------------------------------------------
set_app_var search_path ". ../lib/SAED32/libraries"
set_app_var target_library "../lib/SAED32/libraries/saed32rvt_tt1p05v25c.db"
set_app_var link_library "$target_library"


# Read the design
# ----------------------------------------------------
read_verilog ../src/P32_adder.v

set all_blocks {P32_stage_1 P32_stage_2 P32_stage_3 P32_stage_4 P32_stage_5} 




# Map and optimize the design
# ----------------------------------------------------
# compile
# compile each subblock independently
foreach block $all_blocks {
    current_design $block
    link
    compile_ultra
}
set_dont_touch P32_stage_1
set_dont_touch P32_stage_2
set_dont_touch P32_stage_3
set_dont_touch P32_stage_4
set_dont_touch P32_stage_5
current_design P32_adder
link
compile_ultra



# Analyze and debug the design
# ----------------------------------------------------
report_timing > reports/P32_timing.rpt


exit

