# Specify the libraries
# ----------------------------------------------------
set_app_var search_path ". ../lib/SAED32/libraries"
set_app_var target_library "../lib/SAED32/libraries/saed32rvt_tt1p05v25c.db"
set_app_var link_library "$target_library"
#set_app_var techfile "../lib/SAED32/libraries/saed32nm_1p9m_mw.tf"
#set_app_var ref_lib "../lib/SAED32/libraries/saed32nm_rvt_1p9m"
#set_app_var tlupmax "../lib/SAED32/libraries/saed32nm_1p9m_Cmax.tluplus"
#set_app_var tlupmin "../lib/SAED32/libraries/saed32nm_1p9m_Cmin.tluplus"
#set_app_var tech2itf "../lib/SAED32/libraries/saed32nm_tf_itf_tluplus.map"





# Read the design
# ----------------------------------------------------
read_verilog ../src/mod_Adder.v
#read_verilog ../src/J8_adder.v
#read_verilog ../src/J16_adder.v
#read_verilog ../src/J32_adder.v 
# J32_stage_1 J32_stage_2 J32_stage_3 J32_D_recursion J32_adder
#read_verilog ../src/J64_adder.v
#read_verilog ../src/L8_adder.v
#read_verilog ../src/L16_adder.v
#read_verilog ../src/L32_adder.v
#read_verilog ../src/L64_adder.v \

# Define the design environment
# ----------------------------------------------------



# Set the optimization constraints
# ----------------------------------------------------





# Map and optimize the design
# ----------------------------------------------------
# compile
current_design mod32_adder
link
compile_ultra



# Analyze and debug the design
# ----------------------------------------------------
report_timing > reports/mod32_timing.rpt



# Save the design database
# ----------------------------------------------------

exit

