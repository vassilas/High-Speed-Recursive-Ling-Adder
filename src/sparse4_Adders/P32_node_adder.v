module P32_node_adder(a, b, sum);
    input [31:0]a;
    input [31:0]b;
    output [31:0]sum;
    wire [31:0]g ;
    wire [31:0]p ;
    wire [31:0]x ;
    wire [31:0]G1 ;
    wire [31:0]G2 ;
    wire [31:0]G3 ;
    wire [31:0]Pr1 ;
    wire [31:0]Pr2 ;

    _gpx _gpx_0	(a[0],	b[0],	g[0], 	p[0], 	x[0]) ;
    _gpx _gpx_1	(a[1],	b[1],	g[1], 	p[1], 	x[1]) ;
    _gpx _gpx_2	(a[2],	b[2],	g[2], 	p[2], 	x[2]) ;
    _gpx _gpx_3	(a[3],	b[3],	g[3], 	p[3], 	x[3]) ;
    _gpx _gpx_4	(a[4],	b[4],	g[4], 	p[4], 	x[4]) ;
    _gpx _gpx_5	(a[5],	b[5],	g[5], 	p[5], 	x[5]) ;
    _gpx _gpx_6	(a[6],	b[6],	g[6], 	p[6], 	x[6]) ;
    _gpx _gpx_7	(a[7],	b[7],	g[7], 	p[7], 	x[7]) ;
    _gpx _gpx_8	(a[8],	b[8],	g[8], 	p[8], 	x[8]) ;
    _gpx _gpx_9	(a[9],	b[9],	g[9], 	p[9], 	x[9]) ;
    _gpx _gpx_10	(a[10],	b[10],	g[10], 	p[10], 	x[10]) ;
    _gpx _gpx_11	(a[11],	b[11],	g[11], 	p[11], 	x[11]) ;
    _gpx _gpx_12	(a[12],	b[12],	g[12], 	p[12], 	x[12]) ;
    _gpx _gpx_13	(a[13],	b[13],	g[13], 	p[13], 	x[13]) ;
    _gpx _gpx_14	(a[14],	b[14],	g[14], 	p[14], 	x[14]) ;
    _gpx _gpx_15	(a[15],	b[15],	g[15], 	p[15], 	x[15]) ;
    _gpx _gpx_16	(a[16],	b[16],	g[16], 	p[16], 	x[16]) ;
    _gpx _gpx_17	(a[17],	b[17],	g[17], 	p[17], 	x[17]) ;
    _gpx _gpx_18	(a[18],	b[18],	g[18], 	p[18], 	x[18]) ;
    _gpx _gpx_19	(a[19],	b[19],	g[19], 	p[19], 	x[19]) ;
    _gpx _gpx_20	(a[20],	b[20],	g[20], 	p[20], 	x[20]) ;
    _gpx _gpx_21	(a[21],	b[21],	g[21], 	p[21], 	x[21]) ;
    _gpx _gpx_22	(a[22],	b[22],	g[22], 	p[22], 	x[22]) ;
    _gpx _gpx_23	(a[23],	b[23],	g[23], 	p[23], 	x[23]) ;
    _gpx _gpx_24	(a[24],	b[24],	g[24], 	p[24], 	x[24]) ;
    _gpx _gpx_25	(a[25],	b[25],	g[25], 	p[25], 	x[25]) ;
    _gpx _gpx_26	(a[26],	b[26],	g[26], 	p[26], 	x[26]) ;
    _gpx _gpx_27	(a[27],	b[27],	g[27], 	p[27], 	x[27]) ;
    _gpx _gpx_28	(a[28],	b[28],	g[28], 	p[28], 	x[28]) ;
    _gpx _gpx_29	(a[29],	b[29],	g[29], 	p[29], 	x[29]) ;
    _gpx _gpx_30	(a[30],	b[30],	g[30], 	p[30], 	x[30]) ;
    _gpx _gpx_31	(a[31],	b[31],	g[31], 	p[31], 	x[31]) ;

    _2g1p_G2 _2g1p_G2_1( {g[1],g[0]} , p[1] , G1[1] ) ;
    _2g1p_G2 _2g1p_G2_3( {g[3],g[2]} , p[3] , G1[3] ) ;
    _2g1p_G2 _2g1p_G2_5( {g[5],g[4]} , p[5] , G1[5] ) ;
    _2g1p_G2 _2g1p_G2_7( {g[7],g[6]} , p[7] , G1[7] ) ;
    _2g1p_G2 _2g1p_G2_9( {g[9],g[8]} , p[9] , G1[9] ) ;
    _2g1p_G2 _2g1p_G2_11( {g[11],g[10]} , p[11] , G1[11] ) ;
    _2g1p_G2 _2g1p_G2_13( {g[13],g[12]} , p[13] , G1[13] ) ;
    _2g1p_G2 _2g1p_G2_15( {g[15],g[14]} , p[15] , G1[15] ) ;
    _2g1p_G2 _2g1p_G2_17( {g[17],g[16]} , p[17] , G1[17] ) ;
    _2g1p_G2 _2g1p_G2_19( {g[19],g[18]} , p[19] , G1[19] ) ;
    _2g1p_G2 _2g1p_G2_21( {g[21],g[20]} , p[21] , G1[21] ) ;
    _2g1p_G2 _2g1p_G2_23( {g[23],g[22]} , p[23] , G1[23] ) ;
    _2g1p_G2 _2g1p_G2_25( {g[25],g[24]} , p[25] , G1[25] ) ;
    _2g1p_G2 _2g1p_G2_27( {g[27],g[26]} , p[27] , G1[27] ) ;
    _2g1p_G2 _2g1p_G2_29( {g[29],g[28]} , p[29] , G1[29] ) ;
    _2g1p_G2 _2g1p_G2_31( {g[31],g[30]} , p[31] , G1[31] ) ;

    _2p_P2 _2p_P2_1( {p[1],p[0]} , Pr1[1] ) ;
    _2p_P2 _2p_P2_3( {p[3],p[2]} , Pr1[3] ) ;
    _2p_P2 _2p_P2_5( {p[5],p[4]} , Pr1[5] ) ;
    _2p_P2 _2p_P2_7( {p[7],p[6]} , Pr1[7] ) ;
    _2p_P2 _2p_P2_9( {p[9],p[8]} , Pr1[9] ) ;
    _2p_P2 _2p_P2_11( {p[11],p[10]} , Pr1[11] ) ;
    _2p_P2 _2p_P2_13( {p[13],p[12]} , Pr1[13] ) ;
    _2p_P2 _2p_P2_15( {p[15],p[14]} , Pr1[15] ) ;
    _2p_P2 _2p_P2_17( {p[17],p[16]} , Pr1[17] ) ;
    _2p_P2 _2p_P2_19( {p[19],p[18]} , Pr1[19] ) ;
    _2p_P2 _2p_P2_21( {p[21],p[20]} , Pr1[21] ) ;
    _2p_P2 _2p_P2_23( {p[23],p[22]} , Pr1[23] ) ;
    _2p_P2 _2p_P2_25( {p[25],p[24]} , Pr1[25] ) ;
    _2p_P2 _2p_P2_27( {p[27],p[26]} , Pr1[27] ) ;
    _2p_P2 _2p_P2_29( {p[29],p[28]} , Pr1[29] ) ;
    _2p_P2 _2p_P2_31( {p[31],p[30]} , Pr1[31] ) ;

    _4G3P_G4 _4G3P_G4_3( {G1[3],G1[1],G1[31],G1[29]} , {Pr1[3],Pr1[1],Pr1[31]} ,G2[3] ) ;
    _4G3P_G4 _4G3P_G4_7( {G1[7],G1[5],G1[3],G1[1]} , {Pr1[7],Pr1[5],Pr1[3]} ,G2[7] ) ;
    _4G3P_G4 _4G3P_G4_11( {G1[11],G1[9],G1[7],G1[5]} , {Pr1[11],Pr1[9],Pr1[7]} ,G2[11] ) ;
    _4G3P_G4 _4G3P_G4_15( {G1[15],G1[13],G1[11],G1[9]} , {Pr1[15],Pr1[13],Pr1[11]} ,G2[15] ) ;
    _4G3P_G4 _4G3P_G4_19( {G1[19],G1[17],G1[15],G1[13]} , {Pr1[19],Pr1[17],Pr1[15]} ,G2[19] ) ;
    _4G3P_G4 _4G3P_G4_23( {G1[23],G1[21],G1[19],G1[17]} , {Pr1[23],Pr1[21],Pr1[19]} ,G2[23] ) ;
    _4G3P_G4 _4G3P_G4_27( {G1[27],G1[25],G1[23],G1[21]} , {Pr1[27],Pr1[25],Pr1[23]} ,G2[27] ) ;
    _4G3P_G4 _4G3P_G4_31( {G1[31],G1[29],G1[27],G1[25]} , {Pr1[31],Pr1[29],Pr1[27]} ,G2[31] ) ;

    _P4 _P4_3( {Pr1[3],Pr1[1],Pr1[31],Pr1[29]} ,Pr2[3] ) ;
    _P4 _P4_7( {Pr1[7],Pr1[5],Pr1[3],Pr1[1]} ,Pr2[7] ) ;
    _P4 _P4_11( {Pr1[11],Pr1[9],Pr1[7],Pr1[5]} ,Pr2[11] ) ;
    _P4 _P4_15( {Pr1[15],Pr1[13],Pr1[11],Pr1[9]} ,Pr2[15] ) ;
    _P4 _P4_19( {Pr1[19],Pr1[17],Pr1[15],Pr1[13]} ,Pr2[19] ) ;
    _P4 _P4_23( {Pr1[23],Pr1[21],Pr1[19],Pr1[17]} ,Pr2[23] ) ;
    _P4 _P4_27( {Pr1[27],Pr1[25],Pr1[23],Pr1[21]} ,Pr2[27] ) ;
    _P4 _P4_31( {Pr1[31],Pr1[29],Pr1[27],Pr1[25]} ,Pr2[31] ) ;

    _4G3P_G4 _4G3P_G4_35( {G2[3],G2[27],G2[19],G2[11]} , {Pr2[3],Pr2[27],Pr2[19]} ,G3[3] ) ;
    _4G3P_G4 _4G3P_G4_39( {G2[7],G2[31],G2[23],G2[15]} , {Pr2[7],Pr2[31],Pr2[23]} ,G3[7] ) ;
    _4G3P_G4 _4G3P_G4_43( {G2[11],G2[3],G2[27],G2[19]} , {Pr2[11],Pr2[3],Pr2[27]} ,G3[11] ) ;
    _4G3P_G4 _4G3P_G4_47( {G2[15],G2[7],G2[31],G2[23]} , {Pr2[15],Pr2[7],Pr2[31]} ,G3[15] ) ;
    _4G3P_G4 _4G3P_G4_51( {G2[19],G2[11],G2[3],G2[27]} , {Pr2[19],Pr2[11],Pr2[3]} ,G3[19] ) ;
    _4G3P_G4 _4G3P_G4_55( {G2[23],G2[15],G2[7],G2[31]} , {Pr2[23],Pr2[15],Pr2[7]} ,G3[23] ) ;
    _4G3P_G4 _4G3P_G4_59( {G2[27],G2[19],G2[11],G2[3]} , {Pr2[27],Pr2[19],Pr2[11]} ,G3[27] ) ;
    _4G3P_G4 _4G3P_G4_63( {G2[31],G2[23],G2[15],G2[7]} , {Pr2[31],Pr2[23],Pr2[15]} ,G3[31] ) ;

    _Psum_sparse4 _Psum_sparse4_0( {x[3],x[2],x[1],x[0]} ,  {g[2],g[1],g[0]} , {p[2],p[1],p[0]} , G3[31] , {sum[3],sum[2],sum[1],sum[0]} ) ;
    _Psum_sparse4 _Psum_sparse4_4( {x[7],x[6],x[5],x[4]} ,  {g[6],g[5],g[4]} , {p[6],p[5],p[4]} , G3[3] , {sum[7],sum[6],sum[5],sum[4]} ) ;
    _Psum_sparse4 _Psum_sparse4_8( {x[11],x[10],x[9],x[8]} ,  {g[10],g[9],g[8]} , {p[10],p[9],p[8]} , G3[7] , {sum[11],sum[10],sum[9],sum[8]} ) ;
    _Psum_sparse4 _Psum_sparse4_12( {x[15],x[14],x[13],x[12]} ,  {g[14],g[13],g[12]} , {p[14],p[13],p[12]} , G3[11] , {sum[15],sum[14],sum[13],sum[12]} ) ;
    _Psum_sparse4 _Psum_sparse4_16( {x[19],x[18],x[17],x[16]} ,  {g[18],g[17],g[16]} , {p[18],p[17],p[16]} , G3[15] , {sum[19],sum[18],sum[17],sum[16]} ) ;
    _Psum_sparse4 _Psum_sparse4_20( {x[23],x[22],x[21],x[20]} ,  {g[22],g[21],g[20]} , {p[22],p[21],p[20]} , G3[19] , {sum[23],sum[22],sum[21],sum[20]} ) ;
    _Psum_sparse4 _Psum_sparse4_24( {x[27],x[26],x[25],x[24]} ,  {g[26],g[25],g[24]} , {p[26],p[25],p[24]} , G3[23] , {sum[27],sum[26],sum[25],sum[24]} ) ;
    _Psum_sparse4 _Psum_sparse4_28( {x[31],x[30],x[29],x[28]} ,  {g[30],g[29],g[28]} , {p[30],p[29],p[28]} , G3[27] , {sum[31],sum[30],sum[29],sum[28]} ) ;

endmodule
