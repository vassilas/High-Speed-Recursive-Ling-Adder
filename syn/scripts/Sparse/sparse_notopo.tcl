read_verilog ../src/node_Adders/node_modules.v


set all_modules { _gpx _4g2p_R4 _4p_Q4 _4R2Q_R4 _D16 _Jsum _1R4Q_Q4 _D64_1 _D64_2 _2g_R2 _2p_Q2 _4g2p_H4 _P4 _4G3P_G4 _Lsum _2g_H2 _Psum _2g1p_G2 _2p_P2 _Psum_sparse2 _Lsum_sparse2 _Jsum_sparse2} 
foreach module $all_modules {

    current_design $module
    link
    compile
    report_timing > reports/$module.rpt
    report_area >> reports/$module.rpt
    report_power >> reports/$module.rpt
    report_cell -connections >> reports/$module.rpt
    set_dont_touch $module
}


set all_adders {P8_node_adder P16_node_adder P32_node_adder P64_node_adder L8_node_adder L16_node_adder L32_node_adder L64_node_adder J8_node_adder J16_node_adder J32_node_adder J64_node_adder}
foreach adder $all_adders {

    read_verilog ../src/sparse_Adders/$adder.v
    current_design $adder
    link

    compile

    report_timing > reports/$adder.rpt
    report_area >> reports/$adder.rpt
    report_power >> reports/$adder.rpt
}


quit
