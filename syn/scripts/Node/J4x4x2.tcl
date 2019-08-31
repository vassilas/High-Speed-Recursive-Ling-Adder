read_verilog ../src/node_Adders/node_modules.v


set all_modules { _gpx _4g2p_R4 _4p_Q4 _4R2Q_R4 _D16 _Jsum _1R4Q_Q4 _D64_1 _D64_2 _2g_R2 _2p_Q2 _4g2p_H4 _P4 _4G3P_G4 _Lsum _2g_H2 _Psum _2g1p_G2 _2p_P2 _2R1Q_R2} 
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


set all_adders { J32_node_adder J4x4x2_32_node_adder  }
foreach adder $all_adders {

    read_verilog ../src/node_Adders/$adder.v
    current_design $adder
    link

    compile

    report_timing > reports/$adder.rpt
    report_area >> reports/$adder.rpt
    report_power >> reports/$adder.rpt
}


quit
