create_mw_lib -technology $techfile -mw_reference_library $ref_lib SAED_LIB
open_mw_lib SAED_LIB
set_tlu_plus_files -max_tluplus $tlupmax -min_tluplus $tlupmin -tech2itf_map $tech2itf


analyze -format verilog {../src/node_Adders/node_modules.v}

set all_modules { _gpx _4g2p_R4 _4p_Q4 _4R2Q_R4 _D16 _Jsum _1R4Q_Q4 _D64_1 _D64_2 _2g_R2 _2p_Q2 _4g2p_H4 _P4 _4G3P_G4 _Lsum _2g_H2 _Psum _2g1p_G2 _Psum_sparse2 _Lsum_sparse2 _Jsum_sparse2 _Psum_sparse4 _Lsum_sparse4 _Jsum_sparse4} 
foreach module $all_modules {
    elaborate $module
    current_design $module
    link
    compile_ultra
    report_timing > reports/$module.log
    report_area >> reports/$module.log
    set_dont_touch $module
}


set all_adders { P8_node_adder P16_node_adder P32_node_adder P64_node_adder L8_node_adder L16_node_adder L32_node_adder L64_node_adder J8_node_adder J16_node_adder J32_node_adder J64_node_adder }
foreach adder $all_adders {

    read_verilog ../src/node_Adders/$adder.v
    elaborate $adder
    current_design $adder
    link
    
    set_driving_cell -lib_cell DFFX1_RVT -pin Q [all_inputs]
    set_load [expr [load_of saed32rvt_tt1p05v25c/DFFX1_RVT/D]] [all_outputs]
    compile_ultra
    
    set_max_area 0
    compile_ultra -incremental

    report_timing -significant 3 > reports/$adder.log
    report_area -hierarchy >> reports/$adder.log
    report_power >> reports/$adder.log
}



set all_adders { P8_node_adder P16_node_adder P32_node_adder P64_node_adder L8_node_adder L16_node_adder L32_node_adder L64_node_adder J8_node_adder J16_node_adder J32_node_adder J64_node_adder }
foreach adder $all_adders {

    read_verilog ../src/sparse_Adders/$adder.v
    elaborate $adder
    current_design $adder
    link
    
    set_driving_cell -lib_cell DFFX1_RVT -pin Q [all_inputs]
    set_load [expr [load_of saed32rvt_tt1p05v25c/DFFX1_RVT/D]] [all_outputs]
    compile_ultra
    
    set_max_area 0
    compile_ultra -incremental

    report_timing -significant 3 > reports_sparse2/$adder.log
    report_area -hierarchy >> reports_sparse2/$adder.log
    report_power >> reports_sparse2/$adder.log
}



set all_adders { P8_node_adder P16_node_adder P32_node_adder P64_node_adder L8_node_adder L16_node_adder L32_node_adder L64_node_adder J8_node_adder J16_node_adder J32_node_adder J64_node_adder }
foreach adder $all_adders {

    read_verilog ../src/sparse4_Adders/$adder.v
    elaborate $adder
    current_design $adder
    link
    
    set_driving_cell -lib_cell DFFX1_RVT -pin Q [all_inputs]
    set_load [expr [load_of saed32rvt_tt1p05v25c/DFFX1_RVT/D]] [all_outputs]
    compile_ultra
    
    set_max_area 0
    compile_ultra -incremental

    report_timing -significant 3 > reports_sparse4/$adder.log
    report_area -hierarchy >> reports_sparse4/$adder.log
    report_power >> reports_sparse4/$adder.log
}



quit