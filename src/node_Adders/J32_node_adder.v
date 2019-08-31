module J32_node_adder(a, b, sum);
    input [31:0]a;
    input [31:0]b;
    output [31:0]sum;
    wire [31:0]g ;
    wire [31:0]p ;
    wire [31:0]x ;
    wire [31:0]R1 ;
    wire [31:0]R2 ;
    wire [31:0]R3 ;
    wire [31:0]Q1 ;
    wire [31:0]Q2 ;
    wire [31:0]D1 ;
    wire [31:0]D2 ;

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

    _2g_R2 _2g_R2_0( {g[0],g[31] } , R1[0] ) ;
    _2g_R2 _2g_R2_1( {g[1],g[0] } , R1[1] ) ;
    _2g_R2 _2g_R2_2( {g[2],g[1] } , R1[2] ) ;
    _2g_R2 _2g_R2_3( {g[3],g[2] } , R1[3] ) ;
    _2g_R2 _2g_R2_4( {g[4],g[3] } , R1[4] ) ;
    _2g_R2 _2g_R2_5( {g[5],g[4] } , R1[5] ) ;
    _2g_R2 _2g_R2_6( {g[6],g[5] } , R1[6] ) ;
    _2g_R2 _2g_R2_7( {g[7],g[6] } , R1[7] ) ;
    _2g_R2 _2g_R2_8( {g[8],g[7] } , R1[8] ) ;
    _2g_R2 _2g_R2_9( {g[9],g[8] } , R1[9] ) ;
    _2g_R2 _2g_R2_10( {g[10],g[9] } , R1[10] ) ;
    _2g_R2 _2g_R2_11( {g[11],g[10] } , R1[11] ) ;
    _2g_R2 _2g_R2_12( {g[12],g[11] } , R1[12] ) ;
    _2g_R2 _2g_R2_13( {g[13],g[12] } , R1[13] ) ;
    _2g_R2 _2g_R2_14( {g[14],g[13] } , R1[14] ) ;
    _2g_R2 _2g_R2_15( {g[15],g[14] } , R1[15] ) ;
    _2g_R2 _2g_R2_16( {g[16],g[15] } , R1[16] ) ;
    _2g_R2 _2g_R2_17( {g[17],g[16] } , R1[17] ) ;
    _2g_R2 _2g_R2_18( {g[18],g[17] } , R1[18] ) ;
    _2g_R2 _2g_R2_19( {g[19],g[18] } , R1[19] ) ;
    _2g_R2 _2g_R2_20( {g[20],g[19] } , R1[20] ) ;
    _2g_R2 _2g_R2_21( {g[21],g[20] } , R1[21] ) ;
    _2g_R2 _2g_R2_22( {g[22],g[21] } , R1[22] ) ;
    _2g_R2 _2g_R2_23( {g[23],g[22] } , R1[23] ) ;
    _2g_R2 _2g_R2_24( {g[24],g[23] } , R1[24] ) ;
    _2g_R2 _2g_R2_25( {g[25],g[24] } , R1[25] ) ;
    _2g_R2 _2g_R2_26( {g[26],g[25] } , R1[26] ) ;
    _2g_R2 _2g_R2_27( {g[27],g[26] } , R1[27] ) ;
    _2g_R2 _2g_R2_28( {g[28],g[27] } , R1[28] ) ;
    _2g_R2 _2g_R2_29( {g[29],g[28] } , R1[29] ) ;
    _2g_R2 _2g_R2_30( {g[30],g[29] } , R1[30] ) ;
    _2g_R2 _2g_R2_31( {g[31],g[30] } , R1[31] ) ;

    _2p_Q2 _2p_Q2_0( {p[0],p[31] } , Q1[0] ) ;
    _2p_Q2 _2p_Q2_1( {p[1],p[0] } , Q1[1] ) ;
    _2p_Q2 _2p_Q2_2( {p[2],p[1] } , Q1[2] ) ;
    _2p_Q2 _2p_Q2_3( {p[3],p[2] } , Q1[3] ) ;
    _2p_Q2 _2p_Q2_4( {p[4],p[3] } , Q1[4] ) ;
    _2p_Q2 _2p_Q2_5( {p[5],p[4] } , Q1[5] ) ;
    _2p_Q2 _2p_Q2_6( {p[6],p[5] } , Q1[6] ) ;
    _2p_Q2 _2p_Q2_7( {p[7],p[6] } , Q1[7] ) ;
    _2p_Q2 _2p_Q2_8( {p[8],p[7] } , Q1[8] ) ;
    _2p_Q2 _2p_Q2_9( {p[9],p[8] } , Q1[9] ) ;
    _2p_Q2 _2p_Q2_10( {p[10],p[9] } , Q1[10] ) ;
    _2p_Q2 _2p_Q2_11( {p[11],p[10] } , Q1[11] ) ;
    _2p_Q2 _2p_Q2_12( {p[12],p[11] } , Q1[12] ) ;
    _2p_Q2 _2p_Q2_13( {p[13],p[12] } , Q1[13] ) ;
    _2p_Q2 _2p_Q2_14( {p[14],p[13] } , Q1[14] ) ;
    _2p_Q2 _2p_Q2_15( {p[15],p[14] } , Q1[15] ) ;
    _2p_Q2 _2p_Q2_16( {p[16],p[15] } , Q1[16] ) ;
    _2p_Q2 _2p_Q2_17( {p[17],p[16] } , Q1[17] ) ;
    _2p_Q2 _2p_Q2_18( {p[18],p[17] } , Q1[18] ) ;
    _2p_Q2 _2p_Q2_19( {p[19],p[18] } , Q1[19] ) ;
    _2p_Q2 _2p_Q2_20( {p[20],p[19] } , Q1[20] ) ;
    _2p_Q2 _2p_Q2_21( {p[21],p[20] } , Q1[21] ) ;
    _2p_Q2 _2p_Q2_22( {p[22],p[21] } , Q1[22] ) ;
    _2p_Q2 _2p_Q2_23( {p[23],p[22] } , Q1[23] ) ;
    _2p_Q2 _2p_Q2_24( {p[24],p[23] } , Q1[24] ) ;
    _2p_Q2 _2p_Q2_25( {p[25],p[24] } , Q1[25] ) ;
    _2p_Q2 _2p_Q2_26( {p[26],p[25] } , Q1[26] ) ;
    _2p_Q2 _2p_Q2_27( {p[27],p[26] } , Q1[27] ) ;
    _2p_Q2 _2p_Q2_28( {p[28],p[27] } , Q1[28] ) ;
    _2p_Q2 _2p_Q2_29( {p[29],p[28] } , Q1[29] ) ;
    _2p_Q2 _2p_Q2_30( {p[30],p[29] } , Q1[30] ) ;
    _2p_Q2 _2p_Q2_31( {p[31],p[30] } , Q1[31] ) ;

    _4R2Q_R4 _4R2Q_R4_0( {R1[0],R1[30],R1[28],R1[26] }, {Q1[29],Q1[27]} ,R2[0] ) ;
    _4R2Q_R4 _4R2Q_R4_1( {R1[1],R1[31],R1[29],R1[27] }, {Q1[30],Q1[28]} ,R2[1] ) ;
    _4R2Q_R4 _4R2Q_R4_2( {R1[2],R1[0],R1[30],R1[28] }, {Q1[31],Q1[29]} ,R2[2] ) ;
    _4R2Q_R4 _4R2Q_R4_3( {R1[3],R1[1],R1[31],R1[29] }, {Q1[0],Q1[30]} ,R2[3] ) ;
    _4R2Q_R4 _4R2Q_R4_4( {R1[4],R1[2],R1[0],R1[30] }, {Q1[1],Q1[31]} ,R2[4] ) ;
    _4R2Q_R4 _4R2Q_R4_5( {R1[5],R1[3],R1[1],R1[31] }, {Q1[2],Q1[0]} ,R2[5] ) ;
    _4R2Q_R4 _4R2Q_R4_6( {R1[6],R1[4],R1[2],R1[0] }, {Q1[3],Q1[1]} ,R2[6] ) ;
    _4R2Q_R4 _4R2Q_R4_7( {R1[7],R1[5],R1[3],R1[1] }, {Q1[4],Q1[2]} ,R2[7] ) ;
    _4R2Q_R4 _4R2Q_R4_8( {R1[8],R1[6],R1[4],R1[2] }, {Q1[5],Q1[3]} ,R2[8] ) ;
    _4R2Q_R4 _4R2Q_R4_9( {R1[9],R1[7],R1[5],R1[3] }, {Q1[6],Q1[4]} ,R2[9] ) ;
    _4R2Q_R4 _4R2Q_R4_10( {R1[10],R1[8],R1[6],R1[4] }, {Q1[7],Q1[5]} ,R2[10] ) ;
    _4R2Q_R4 _4R2Q_R4_11( {R1[11],R1[9],R1[7],R1[5] }, {Q1[8],Q1[6]} ,R2[11] ) ;
    _4R2Q_R4 _4R2Q_R4_12( {R1[12],R1[10],R1[8],R1[6] }, {Q1[9],Q1[7]} ,R2[12] ) ;
    _4R2Q_R4 _4R2Q_R4_13( {R1[13],R1[11],R1[9],R1[7] }, {Q1[10],Q1[8]} ,R2[13] ) ;
    _4R2Q_R4 _4R2Q_R4_14( {R1[14],R1[12],R1[10],R1[8] }, {Q1[11],Q1[9]} ,R2[14] ) ;
    _4R2Q_R4 _4R2Q_R4_15( {R1[15],R1[13],R1[11],R1[9] }, {Q1[12],Q1[10]} ,R2[15] ) ;
    _4R2Q_R4 _4R2Q_R4_16( {R1[16],R1[14],R1[12],R1[10] }, {Q1[13],Q1[11]} ,R2[16] ) ;
    _4R2Q_R4 _4R2Q_R4_17( {R1[17],R1[15],R1[13],R1[11] }, {Q1[14],Q1[12]} ,R2[17] ) ;
    _4R2Q_R4 _4R2Q_R4_18( {R1[18],R1[16],R1[14],R1[12] }, {Q1[15],Q1[13]} ,R2[18] ) ;
    _4R2Q_R4 _4R2Q_R4_19( {R1[19],R1[17],R1[15],R1[13] }, {Q1[16],Q1[14]} ,R2[19] ) ;
    _4R2Q_R4 _4R2Q_R4_20( {R1[20],R1[18],R1[16],R1[14] }, {Q1[17],Q1[15]} ,R2[20] ) ;
    _4R2Q_R4 _4R2Q_R4_21( {R1[21],R1[19],R1[17],R1[15] }, {Q1[18],Q1[16]} ,R2[21] ) ;
    _4R2Q_R4 _4R2Q_R4_22( {R1[22],R1[20],R1[18],R1[16] }, {Q1[19],Q1[17]} ,R2[22] ) ;
    _4R2Q_R4 _4R2Q_R4_23( {R1[23],R1[21],R1[19],R1[17] }, {Q1[20],Q1[18]} ,R2[23] ) ;
    _4R2Q_R4 _4R2Q_R4_24( {R1[24],R1[22],R1[20],R1[18] }, {Q1[21],Q1[19]} ,R2[24] ) ;
    _4R2Q_R4 _4R2Q_R4_25( {R1[25],R1[23],R1[21],R1[19] }, {Q1[22],Q1[20]} ,R2[25] ) ;
    _4R2Q_R4 _4R2Q_R4_26( {R1[26],R1[24],R1[22],R1[20] }, {Q1[23],Q1[21]} ,R2[26] ) ;
    _4R2Q_R4 _4R2Q_R4_27( {R1[27],R1[25],R1[23],R1[21] }, {Q1[24],Q1[22]} ,R2[27] ) ;
    _4R2Q_R4 _4R2Q_R4_28( {R1[28],R1[26],R1[24],R1[22] }, {Q1[25],Q1[23]} ,R2[28] ) ;
    _4R2Q_R4 _4R2Q_R4_29( {R1[29],R1[27],R1[25],R1[23] }, {Q1[26],Q1[24]} ,R2[29] ) ;
    _4R2Q_R4 _4R2Q_R4_30( {R1[30],R1[28],R1[26],R1[24] }, {Q1[27],Q1[25]} ,R2[30] ) ;
    _4R2Q_R4 _4R2Q_R4_31( {R1[31],R1[29],R1[27],R1[25] }, {Q1[28],Q1[26]} ,R2[31] ) ;

    _1R4Q_Q4 _1R4Q_Q4_0(R1[27], {Q1[0],Q1[30],Q1[28],Q1[26]}, Q2[0] ) ;
    _1R4Q_Q4 _1R4Q_Q4_1(R1[28], {Q1[1],Q1[31],Q1[29],Q1[27]}, Q2[1] ) ;
    _1R4Q_Q4 _1R4Q_Q4_2(R1[29], {Q1[2],Q1[0],Q1[30],Q1[28]}, Q2[2] ) ;
    _1R4Q_Q4 _1R4Q_Q4_3(R1[30], {Q1[3],Q1[1],Q1[31],Q1[29]}, Q2[3] ) ;
    _1R4Q_Q4 _1R4Q_Q4_4(R1[31], {Q1[4],Q1[2],Q1[0],Q1[30]}, Q2[4] ) ;
    _1R4Q_Q4 _1R4Q_Q4_5(R1[0], {Q1[5],Q1[3],Q1[1],Q1[31]}, Q2[5] ) ;
    _1R4Q_Q4 _1R4Q_Q4_6(R1[1], {Q1[6],Q1[4],Q1[2],Q1[0]}, Q2[6] ) ;
    _1R4Q_Q4 _1R4Q_Q4_7(R1[2], {Q1[7],Q1[5],Q1[3],Q1[1]}, Q2[7] ) ;
    _1R4Q_Q4 _1R4Q_Q4_8(R1[3], {Q1[8],Q1[6],Q1[4],Q1[2]}, Q2[8] ) ;
    _1R4Q_Q4 _1R4Q_Q4_9(R1[4], {Q1[9],Q1[7],Q1[5],Q1[3]}, Q2[9] ) ;
    _1R4Q_Q4 _1R4Q_Q4_10(R1[5], {Q1[10],Q1[8],Q1[6],Q1[4]}, Q2[10] ) ;
    _1R4Q_Q4 _1R4Q_Q4_11(R1[6], {Q1[11],Q1[9],Q1[7],Q1[5]}, Q2[11] ) ;
    _1R4Q_Q4 _1R4Q_Q4_12(R1[7], {Q1[12],Q1[10],Q1[8],Q1[6]}, Q2[12] ) ;
    _1R4Q_Q4 _1R4Q_Q4_13(R1[8], {Q1[13],Q1[11],Q1[9],Q1[7]}, Q2[13] ) ;
    _1R4Q_Q4 _1R4Q_Q4_14(R1[9], {Q1[14],Q1[12],Q1[10],Q1[8]}, Q2[14] ) ;
    _1R4Q_Q4 _1R4Q_Q4_15(R1[10], {Q1[15],Q1[13],Q1[11],Q1[9]}, Q2[15] ) ;
    _1R4Q_Q4 _1R4Q_Q4_16(R1[11], {Q1[16],Q1[14],Q1[12],Q1[10]}, Q2[16] ) ;
    _1R4Q_Q4 _1R4Q_Q4_17(R1[12], {Q1[17],Q1[15],Q1[13],Q1[11]}, Q2[17] ) ;
    _1R4Q_Q4 _1R4Q_Q4_18(R1[13], {Q1[18],Q1[16],Q1[14],Q1[12]}, Q2[18] ) ;
    _1R4Q_Q4 _1R4Q_Q4_19(R1[14], {Q1[19],Q1[17],Q1[15],Q1[13]}, Q2[19] ) ;
    _1R4Q_Q4 _1R4Q_Q4_20(R1[15], {Q1[20],Q1[18],Q1[16],Q1[14]}, Q2[20] ) ;
    _1R4Q_Q4 _1R4Q_Q4_21(R1[16], {Q1[21],Q1[19],Q1[17],Q1[15]}, Q2[21] ) ;
    _1R4Q_Q4 _1R4Q_Q4_22(R1[17], {Q1[22],Q1[20],Q1[18],Q1[16]}, Q2[22] ) ;
    _1R4Q_Q4 _1R4Q_Q4_23(R1[18], {Q1[23],Q1[21],Q1[19],Q1[17]}, Q2[23] ) ;
    _1R4Q_Q4 _1R4Q_Q4_24(R1[19], {Q1[24],Q1[22],Q1[20],Q1[18]}, Q2[24] ) ;
    _1R4Q_Q4 _1R4Q_Q4_25(R1[20], {Q1[25],Q1[23],Q1[21],Q1[19]}, Q2[25] ) ;
    _1R4Q_Q4 _1R4Q_Q4_26(R1[21], {Q1[26],Q1[24],Q1[22],Q1[20]}, Q2[26] ) ;
    _1R4Q_Q4 _1R4Q_Q4_27(R1[22], {Q1[27],Q1[25],Q1[23],Q1[21]}, Q2[27] ) ;
    _1R4Q_Q4 _1R4Q_Q4_28(R1[23], {Q1[28],Q1[26],Q1[24],Q1[22]}, Q2[28] ) ;
    _1R4Q_Q4 _1R4Q_Q4_29(R1[24], {Q1[29],Q1[27],Q1[25],Q1[23]}, Q2[29] ) ;
    _1R4Q_Q4 _1R4Q_Q4_30(R1[25], {Q1[30],Q1[28],Q1[26],Q1[24]}, Q2[30] ) ;
    _1R4Q_Q4 _1R4Q_Q4_31(R1[26], {Q1[31],Q1[29],Q1[27],Q1[25]}, Q2[31] ) ;

    _4R2Q_R4 _4R2Q_R4_32( {R2[0],R2[24],R2[16],R2[8] }, {Q2[21],Q2[13]} ,R3[0] ) ;
    _4R2Q_R4 _4R2Q_R4_33( {R2[1],R2[25],R2[17],R2[9] }, {Q2[22],Q2[14]} ,R3[1] ) ;
    _4R2Q_R4 _4R2Q_R4_34( {R2[2],R2[26],R2[18],R2[10] }, {Q2[23],Q2[15]} ,R3[2] ) ;
    _4R2Q_R4 _4R2Q_R4_35( {R2[3],R2[27],R2[19],R2[11] }, {Q2[24],Q2[16]} ,R3[3] ) ;
    _4R2Q_R4 _4R2Q_R4_36( {R2[4],R2[28],R2[20],R2[12] }, {Q2[25],Q2[17]} ,R3[4] ) ;
    _4R2Q_R4 _4R2Q_R4_37( {R2[5],R2[29],R2[21],R2[13] }, {Q2[26],Q2[18]} ,R3[5] ) ;
    _4R2Q_R4 _4R2Q_R4_38( {R2[6],R2[30],R2[22],R2[14] }, {Q2[27],Q2[19]} ,R3[6] ) ;
    _4R2Q_R4 _4R2Q_R4_39( {R2[7],R2[31],R2[23],R2[15] }, {Q2[28],Q2[20]} ,R3[7] ) ;
    _4R2Q_R4 _4R2Q_R4_40( {R2[8],R2[0],R2[24],R2[16] }, {Q2[29],Q2[21]} ,R3[8] ) ;
    _4R2Q_R4 _4R2Q_R4_41( {R2[9],R2[1],R2[25],R2[17] }, {Q2[30],Q2[22]} ,R3[9] ) ;
    _4R2Q_R4 _4R2Q_R4_42( {R2[10],R2[2],R2[26],R2[18] }, {Q2[31],Q2[23]} ,R3[10] ) ;
    _4R2Q_R4 _4R2Q_R4_43( {R2[11],R2[3],R2[27],R2[19] }, {Q2[0],Q2[24]} ,R3[11] ) ;
    _4R2Q_R4 _4R2Q_R4_44( {R2[12],R2[4],R2[28],R2[20] }, {Q2[1],Q2[25]} ,R3[12] ) ;
    _4R2Q_R4 _4R2Q_R4_45( {R2[13],R2[5],R2[29],R2[21] }, {Q2[2],Q2[26]} ,R3[13] ) ;
    _4R2Q_R4 _4R2Q_R4_46( {R2[14],R2[6],R2[30],R2[22] }, {Q2[3],Q2[27]} ,R3[14] ) ;
    _4R2Q_R4 _4R2Q_R4_47( {R2[15],R2[7],R2[31],R2[23] }, {Q2[4],Q2[28]} ,R3[15] ) ;
    _4R2Q_R4 _4R2Q_R4_48( {R2[16],R2[8],R2[0],R2[24] }, {Q2[5],Q2[29]} ,R3[16] ) ;
    _4R2Q_R4 _4R2Q_R4_49( {R2[17],R2[9],R2[1],R2[25] }, {Q2[6],Q2[30]} ,R3[17] ) ;
    _4R2Q_R4 _4R2Q_R4_50( {R2[18],R2[10],R2[2],R2[26] }, {Q2[7],Q2[31]} ,R3[18] ) ;
    _4R2Q_R4 _4R2Q_R4_51( {R2[19],R2[11],R2[3],R2[27] }, {Q2[8],Q2[0]} ,R3[19] ) ;
    _4R2Q_R4 _4R2Q_R4_52( {R2[20],R2[12],R2[4],R2[28] }, {Q2[9],Q2[1]} ,R3[20] ) ;
    _4R2Q_R4 _4R2Q_R4_53( {R2[21],R2[13],R2[5],R2[29] }, {Q2[10],Q2[2]} ,R3[21] ) ;
    _4R2Q_R4 _4R2Q_R4_54( {R2[22],R2[14],R2[6],R2[30] }, {Q2[11],Q2[3]} ,R3[22] ) ;
    _4R2Q_R4 _4R2Q_R4_55( {R2[23],R2[15],R2[7],R2[31] }, {Q2[12],Q2[4]} ,R3[23] ) ;
    _4R2Q_R4 _4R2Q_R4_56( {R2[24],R2[16],R2[8],R2[0] }, {Q2[13],Q2[5]} ,R3[24] ) ;
    _4R2Q_R4 _4R2Q_R4_57( {R2[25],R2[17],R2[9],R2[1] }, {Q2[14],Q2[6]} ,R3[25] ) ;
    _4R2Q_R4 _4R2Q_R4_58( {R2[26],R2[18],R2[10],R2[2] }, {Q2[15],Q2[7]} ,R3[26] ) ;
    _4R2Q_R4 _4R2Q_R4_59( {R2[27],R2[19],R2[11],R2[3] }, {Q2[16],Q2[8]} ,R3[27] ) ;
    _4R2Q_R4 _4R2Q_R4_60( {R2[28],R2[20],R2[12],R2[4] }, {Q2[17],Q2[9]} ,R3[28] ) ;
    _4R2Q_R4 _4R2Q_R4_61( {R2[29],R2[21],R2[13],R2[5] }, {Q2[18],Q2[10]} ,R3[29] ) ;
    _4R2Q_R4 _4R2Q_R4_62( {R2[30],R2[22],R2[14],R2[6] }, {Q2[19],Q2[11]} ,R3[30] ) ;
    _4R2Q_R4 _4R2Q_R4_63( {R2[31],R2[23],R2[15],R2[7] }, {Q2[20],Q2[12]} ,R3[31] ) ;

    _D64_1 _D64_1_0( {p[0],p[31],p[30]}, {g[0],g[31]}, D1[0] ) ;
    _D64_1 _D64_1_1( {p[1],p[0],p[31]}, {g[1],g[0]}, D1[1] ) ;
    _D64_1 _D64_1_2( {p[2],p[1],p[0]}, {g[2],g[1]}, D1[2] ) ;
    _D64_1 _D64_1_3( {p[3],p[2],p[1]}, {g[3],g[2]}, D1[3] ) ;
    _D64_1 _D64_1_4( {p[4],p[3],p[2]}, {g[4],g[3]}, D1[4] ) ;
    _D64_1 _D64_1_5( {p[5],p[4],p[3]}, {g[5],g[4]}, D1[5] ) ;
    _D64_1 _D64_1_6( {p[6],p[5],p[4]}, {g[6],g[5]}, D1[6] ) ;
    _D64_1 _D64_1_7( {p[7],p[6],p[5]}, {g[7],g[6]}, D1[7] ) ;
    _D64_1 _D64_1_8( {p[8],p[7],p[6]}, {g[8],g[7]}, D1[8] ) ;
    _D64_1 _D64_1_9( {p[9],p[8],p[7]}, {g[9],g[8]}, D1[9] ) ;
    _D64_1 _D64_1_10( {p[10],p[9],p[8]}, {g[10],g[9]}, D1[10] ) ;
    _D64_1 _D64_1_11( {p[11],p[10],p[9]}, {g[11],g[10]}, D1[11] ) ;
    _D64_1 _D64_1_12( {p[12],p[11],p[10]}, {g[12],g[11]}, D1[12] ) ;
    _D64_1 _D64_1_13( {p[13],p[12],p[11]}, {g[13],g[12]}, D1[13] ) ;
    _D64_1 _D64_1_14( {p[14],p[13],p[12]}, {g[14],g[13]}, D1[14] ) ;
    _D64_1 _D64_1_15( {p[15],p[14],p[13]}, {g[15],g[14]}, D1[15] ) ;
    _D64_1 _D64_1_16( {p[16],p[15],p[14]}, {g[16],g[15]}, D1[16] ) ;
    _D64_1 _D64_1_17( {p[17],p[16],p[15]}, {g[17],g[16]}, D1[17] ) ;
    _D64_1 _D64_1_18( {p[18],p[17],p[16]}, {g[18],g[17]}, D1[18] ) ;
    _D64_1 _D64_1_19( {p[19],p[18],p[17]}, {g[19],g[18]}, D1[19] ) ;
    _D64_1 _D64_1_20( {p[20],p[19],p[18]}, {g[20],g[19]}, D1[20] ) ;
    _D64_1 _D64_1_21( {p[21],p[20],p[19]}, {g[21],g[20]}, D1[21] ) ;
    _D64_1 _D64_1_22( {p[22],p[21],p[20]}, {g[22],g[21]}, D1[22] ) ;
    _D64_1 _D64_1_23( {p[23],p[22],p[21]}, {g[23],g[22]}, D1[23] ) ;
    _D64_1 _D64_1_24( {p[24],p[23],p[22]}, {g[24],g[23]}, D1[24] ) ;
    _D64_1 _D64_1_25( {p[25],p[24],p[23]}, {g[25],g[24]}, D1[25] ) ;
    _D64_1 _D64_1_26( {p[26],p[25],p[24]}, {g[26],g[25]}, D1[26] ) ;
    _D64_1 _D64_1_27( {p[27],p[26],p[25]}, {g[27],g[26]}, D1[27] ) ;
    _D64_1 _D64_1_28( {p[28],p[27],p[26]}, {g[28],g[27]}, D1[28] ) ;
    _D64_1 _D64_1_29( {p[29],p[28],p[27]}, {g[29],g[28]}, D1[29] ) ;
    _D64_1 _D64_1_30( {p[30],p[29],p[28]}, {g[30],g[29]}, D1[30] ) ;
    _D64_1 _D64_1_31( {p[31],p[30],p[29]}, {g[31],g[30]}, D1[31] ) ;

    _D64_2 _D64_2_32(D1[0] ,R2[0] ,Q2[29] ,D2[0] ) ;
    _D64_2 _D64_2_33(D1[1] ,R2[1] ,Q2[30] ,D2[1] ) ;
    _D64_2 _D64_2_34(D1[2] ,R2[2] ,Q2[31] ,D2[2] ) ;
    _D64_2 _D64_2_35(D1[3] ,R2[3] ,Q2[0] ,D2[3] ) ;
    _D64_2 _D64_2_36(D1[4] ,R2[4] ,Q2[1] ,D2[4] ) ;
    _D64_2 _D64_2_37(D1[5] ,R2[5] ,Q2[2] ,D2[5] ) ;
    _D64_2 _D64_2_38(D1[6] ,R2[6] ,Q2[3] ,D2[6] ) ;
    _D64_2 _D64_2_39(D1[7] ,R2[7] ,Q2[4] ,D2[7] ) ;
    _D64_2 _D64_2_40(D1[8] ,R2[8] ,Q2[5] ,D2[8] ) ;
    _D64_2 _D64_2_41(D1[9] ,R2[9] ,Q2[6] ,D2[9] ) ;
    _D64_2 _D64_2_42(D1[10] ,R2[10] ,Q2[7] ,D2[10] ) ;
    _D64_2 _D64_2_43(D1[11] ,R2[11] ,Q2[8] ,D2[11] ) ;
    _D64_2 _D64_2_44(D1[12] ,R2[12] ,Q2[9] ,D2[12] ) ;
    _D64_2 _D64_2_45(D1[13] ,R2[13] ,Q2[10] ,D2[13] ) ;
    _D64_2 _D64_2_46(D1[14] ,R2[14] ,Q2[11] ,D2[14] ) ;
    _D64_2 _D64_2_47(D1[15] ,R2[15] ,Q2[12] ,D2[15] ) ;
    _D64_2 _D64_2_48(D1[16] ,R2[16] ,Q2[13] ,D2[16] ) ;
    _D64_2 _D64_2_49(D1[17] ,R2[17] ,Q2[14] ,D2[17] ) ;
    _D64_2 _D64_2_50(D1[18] ,R2[18] ,Q2[15] ,D2[18] ) ;
    _D64_2 _D64_2_51(D1[19] ,R2[19] ,Q2[16] ,D2[19] ) ;
    _D64_2 _D64_2_52(D1[20] ,R2[20] ,Q2[17] ,D2[20] ) ;
    _D64_2 _D64_2_53(D1[21] ,R2[21] ,Q2[18] ,D2[21] ) ;
    _D64_2 _D64_2_54(D1[22] ,R2[22] ,Q2[19] ,D2[22] ) ;
    _D64_2 _D64_2_55(D1[23] ,R2[23] ,Q2[20] ,D2[23] ) ;
    _D64_2 _D64_2_56(D1[24] ,R2[24] ,Q2[21] ,D2[24] ) ;
    _D64_2 _D64_2_57(D1[25] ,R2[25] ,Q2[22] ,D2[25] ) ;
    _D64_2 _D64_2_58(D1[26] ,R2[26] ,Q2[23] ,D2[26] ) ;
    _D64_2 _D64_2_59(D1[27] ,R2[27] ,Q2[24] ,D2[27] ) ;
    _D64_2 _D64_2_60(D1[28] ,R2[28] ,Q2[25] ,D2[28] ) ;
    _D64_2 _D64_2_61(D1[29] ,R2[29] ,Q2[26] ,D2[29] ) ;
    _D64_2 _D64_2_62(D1[30] ,R2[30] ,Q2[27] ,D2[30] ) ;
    _D64_2 _D64_2_63(D1[31] ,R2[31] ,Q2[28] ,D2[31] ) ;

    _Jsum _Jsum_0( R3[31], D2[31] , x[0] , sum[0] ) ;
    _Jsum _Jsum_1( R3[0], D2[0] , x[1] , sum[1] ) ;
    _Jsum _Jsum_2( R3[1], D2[1] , x[2] , sum[2] ) ;
    _Jsum _Jsum_3( R3[2], D2[2] , x[3] , sum[3] ) ;
    _Jsum _Jsum_4( R3[3], D2[3] , x[4] , sum[4] ) ;
    _Jsum _Jsum_5( R3[4], D2[4] , x[5] , sum[5] ) ;
    _Jsum _Jsum_6( R3[5], D2[5] , x[6] , sum[6] ) ;
    _Jsum _Jsum_7( R3[6], D2[6] , x[7] , sum[7] ) ;
    _Jsum _Jsum_8( R3[7], D2[7] , x[8] , sum[8] ) ;
    _Jsum _Jsum_9( R3[8], D2[8] , x[9] , sum[9] ) ;
    _Jsum _Jsum_10( R3[9], D2[9] , x[10] , sum[10] ) ;
    _Jsum _Jsum_11( R3[10], D2[10] , x[11] , sum[11] ) ;
    _Jsum _Jsum_12( R3[11], D2[11] , x[12] , sum[12] ) ;
    _Jsum _Jsum_13( R3[12], D2[12] , x[13] , sum[13] ) ;
    _Jsum _Jsum_14( R3[13], D2[13] , x[14] , sum[14] ) ;
    _Jsum _Jsum_15( R3[14], D2[14] , x[15] , sum[15] ) ;
    _Jsum _Jsum_16( R3[15], D2[15] , x[16] , sum[16] ) ;
    _Jsum _Jsum_17( R3[16], D2[16] , x[17] , sum[17] ) ;
    _Jsum _Jsum_18( R3[17], D2[17] , x[18] , sum[18] ) ;
    _Jsum _Jsum_19( R3[18], D2[18] , x[19] , sum[19] ) ;
    _Jsum _Jsum_20( R3[19], D2[19] , x[20] , sum[20] ) ;
    _Jsum _Jsum_21( R3[20], D2[20] , x[21] , sum[21] ) ;
    _Jsum _Jsum_22( R3[21], D2[21] , x[22] , sum[22] ) ;
    _Jsum _Jsum_23( R3[22], D2[22] , x[23] , sum[23] ) ;
    _Jsum _Jsum_24( R3[23], D2[23] , x[24] , sum[24] ) ;
    _Jsum _Jsum_25( R3[24], D2[24] , x[25] , sum[25] ) ;
    _Jsum _Jsum_26( R3[25], D2[25] , x[26] , sum[26] ) ;
    _Jsum _Jsum_27( R3[26], D2[26] , x[27] , sum[27] ) ;
    _Jsum _Jsum_28( R3[27], D2[27] , x[28] , sum[28] ) ;
    _Jsum _Jsum_29( R3[28], D2[28] , x[29] , sum[29] ) ;
    _Jsum _Jsum_30( R3[29], D2[29] , x[30] , sum[30] ) ;
    _Jsum _Jsum_31( R3[30], D2[30] , x[31] , sum[31] ) ;

endmodule