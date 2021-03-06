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

    _2g_R2 _2g_R2_1( {g[1],g[0] } , R1[1] ) ;
    _2g_R2 _2g_R2_3( {g[3],g[2] } , R1[3] ) ;
    _2g_R2 _2g_R2_5( {g[5],g[4] } , R1[5] ) ;
    _2g_R2 _2g_R2_7( {g[7],g[6] } , R1[7] ) ;
    _2g_R2 _2g_R2_9( {g[9],g[8] } , R1[9] ) ;
    _2g_R2 _2g_R2_11( {g[11],g[10] } , R1[11] ) ;
    _2g_R2 _2g_R2_13( {g[13],g[12] } , R1[13] ) ;
    _2g_R2 _2g_R2_15( {g[15],g[14] } , R1[15] ) ;
    _2g_R2 _2g_R2_17( {g[17],g[16] } , R1[17] ) ;
    _2g_R2 _2g_R2_19( {g[19],g[18] } , R1[19] ) ;
    _2g_R2 _2g_R2_21( {g[21],g[20] } , R1[21] ) ;
    _2g_R2 _2g_R2_23( {g[23],g[22] } , R1[23] ) ;
    _2g_R2 _2g_R2_25( {g[25],g[24] } , R1[25] ) ;
    _2g_R2 _2g_R2_27( {g[27],g[26] } , R1[27] ) ;
    _2g_R2 _2g_R2_29( {g[29],g[28] } , R1[29] ) ;
    _2g_R2 _2g_R2_31( {g[31],g[30] } , R1[31] ) ;

    _2p_Q2 _2p_Q2_0( {p[0],p[31] } , Q1[0] ) ;
    _2p_Q2 _2p_Q2_2( {p[2],p[1] } , Q1[2] ) ;
    _2p_Q2 _2p_Q2_4( {p[4],p[3] } , Q1[4] ) ;
    _2p_Q2 _2p_Q2_6( {p[6],p[5] } , Q1[6] ) ;
    _2p_Q2 _2p_Q2_8( {p[8],p[7] } , Q1[8] ) ;
    _2p_Q2 _2p_Q2_10( {p[10],p[9] } , Q1[10] ) ;
    _2p_Q2 _2p_Q2_12( {p[12],p[11] } , Q1[12] ) ;
    _2p_Q2 _2p_Q2_14( {p[14],p[13] } , Q1[14] ) ;
    _2p_Q2 _2p_Q2_16( {p[16],p[15] } , Q1[16] ) ;
    _2p_Q2 _2p_Q2_18( {p[18],p[17] } , Q1[18] ) ;
    _2p_Q2 _2p_Q2_20( {p[20],p[19] } , Q1[20] ) ;
    _2p_Q2 _2p_Q2_22( {p[22],p[21] } , Q1[22] ) ;
    _2p_Q2 _2p_Q2_24( {p[24],p[23] } , Q1[24] ) ;
    _2p_Q2 _2p_Q2_26( {p[26],p[25] } , Q1[26] ) ;
    _2p_Q2 _2p_Q2_28( {p[28],p[27] } , Q1[28] ) ;
    _2p_Q2 _2p_Q2_30( {p[30],p[29] } , Q1[30] ) ;

    _4R2Q_R4 _4R2Q_R4_3( {R1[3],R1[1],R1[31],R1[29] }, {Q1[0],Q1[30]} ,R2[3] ) ;
    _4R2Q_R4 _4R2Q_R4_7( {R1[7],R1[5],R1[3],R1[1] }, {Q1[4],Q1[2]} ,R2[7] ) ;
    _4R2Q_R4 _4R2Q_R4_11( {R1[11],R1[9],R1[7],R1[5] }, {Q1[8],Q1[6]} ,R2[11] ) ;
    _4R2Q_R4 _4R2Q_R4_15( {R1[15],R1[13],R1[11],R1[9] }, {Q1[12],Q1[10]} ,R2[15] ) ;
    _4R2Q_R4 _4R2Q_R4_19( {R1[19],R1[17],R1[15],R1[13] }, {Q1[16],Q1[14]} ,R2[19] ) ;
    _4R2Q_R4 _4R2Q_R4_23( {R1[23],R1[21],R1[19],R1[17] }, {Q1[20],Q1[18]} ,R2[23] ) ;
    _4R2Q_R4 _4R2Q_R4_27( {R1[27],R1[25],R1[23],R1[21] }, {Q1[24],Q1[22]} ,R2[27] ) ;
    _4R2Q_R4 _4R2Q_R4_31( {R1[31],R1[29],R1[27],R1[25] }, {Q1[28],Q1[26]} ,R2[31] ) ;

    _1R4Q_Q4 _1R4Q_Q4_0(R1[27], {Q1[0],Q1[30],Q1[28],Q1[26]}, Q2[0] ) ;
    _1R4Q_Q4 _1R4Q_Q4_4(R1[31], {Q1[4],Q1[2],Q1[0],Q1[30]}, Q2[4] ) ;
    _1R4Q_Q4 _1R4Q_Q4_8(R1[3], {Q1[8],Q1[6],Q1[4],Q1[2]}, Q2[8] ) ;
    _1R4Q_Q4 _1R4Q_Q4_12(R1[7], {Q1[12],Q1[10],Q1[8],Q1[6]}, Q2[12] ) ;
    _1R4Q_Q4 _1R4Q_Q4_16(R1[11], {Q1[16],Q1[14],Q1[12],Q1[10]}, Q2[16] ) ;
    _1R4Q_Q4 _1R4Q_Q4_20(R1[15], {Q1[20],Q1[18],Q1[16],Q1[14]}, Q2[20] ) ;
    _1R4Q_Q4 _1R4Q_Q4_24(R1[19], {Q1[24],Q1[22],Q1[20],Q1[18]}, Q2[24] ) ;
    _1R4Q_Q4 _1R4Q_Q4_28(R1[23], {Q1[28],Q1[26],Q1[24],Q1[22]}, Q2[28] ) ;

    _4R2Q_R4 _4R2Q_R4_35( {R2[3],R2[27],R2[19],R2[11] }, {Q2[24],Q2[16]} ,R3[3] ) ;
    _4R2Q_R4 _4R2Q_R4_39( {R2[7],R2[31],R2[23],R2[15] }, {Q2[28],Q2[20]} ,R3[7] ) ;
    _4R2Q_R4 _4R2Q_R4_43( {R2[11],R2[3],R2[27],R2[19] }, {Q2[0],Q2[24]} ,R3[11] ) ;
    _4R2Q_R4 _4R2Q_R4_47( {R2[15],R2[7],R2[31],R2[23] }, {Q2[4],Q2[28]} ,R3[15] ) ;
    _4R2Q_R4 _4R2Q_R4_51( {R2[19],R2[11],R2[3],R2[27] }, {Q2[8],Q2[0]} ,R3[19] ) ;
    _4R2Q_R4 _4R2Q_R4_55( {R2[23],R2[15],R2[7],R2[31] }, {Q2[12],Q2[4]} ,R3[23] ) ;
    _4R2Q_R4 _4R2Q_R4_59( {R2[27],R2[19],R2[11],R2[3] }, {Q2[16],Q2[8]} ,R3[27] ) ;
    _4R2Q_R4 _4R2Q_R4_63( {R2[31],R2[23],R2[15],R2[7] }, {Q2[20],Q2[12]} ,R3[31] ) ;

    _D64_1 _D64_1_3( {p[3],p[2],p[1]}, {g[3],g[2]}, D1[3] ) ;
    _D64_1 _D64_1_7( {p[7],p[6],p[5]}, {g[7],g[6]}, D1[7] ) ;
    _D64_1 _D64_1_11( {p[11],p[10],p[9]}, {g[11],g[10]}, D1[11] ) ;
    _D64_1 _D64_1_15( {p[15],p[14],p[13]}, {g[15],g[14]}, D1[15] ) ;
    _D64_1 _D64_1_19( {p[19],p[18],p[17]}, {g[19],g[18]}, D1[19] ) ;
    _D64_1 _D64_1_23( {p[23],p[22],p[21]}, {g[23],g[22]}, D1[23] ) ;
    _D64_1 _D64_1_27( {p[27],p[26],p[25]}, {g[27],g[26]}, D1[27] ) ;
    _D64_1 _D64_1_31( {p[31],p[30],p[29]}, {g[31],g[30]}, D1[31] ) ;

    _D64_2 _D64_2_35(D1[3] ,R2[3] ,Q2[0] ,D2[3] ) ;
    _D64_2 _D64_2_39(D1[7] ,R2[7] ,Q2[4] ,D2[7] ) ;
    _D64_2 _D64_2_43(D1[11] ,R2[11] ,Q2[8] ,D2[11] ) ;
    _D64_2 _D64_2_47(D1[15] ,R2[15] ,Q2[12] ,D2[15] ) ;
    _D64_2 _D64_2_51(D1[19] ,R2[19] ,Q2[16] ,D2[19] ) ;
    _D64_2 _D64_2_55(D1[23] ,R2[23] ,Q2[20] ,D2[23] ) ;
    _D64_2 _D64_2_59(D1[27] ,R2[27] ,Q2[24] ,D2[27] ) ;
    _D64_2 _D64_2_63(D1[31] ,R2[31] ,Q2[28] ,D2[31] ) ;

    _Jsum_sparse4 _Jsum_sparse4_0( {g[2],g[1],g[0]} , {p[2],p[1],p[0]} , R3[31], D2[31] , {x[3],x[2],x[1],x[0]} , {sum[3],sum[2],sum[1],sum[0]} ) ;
    _Jsum_sparse4 _Jsum_sparse4_4( {g[6],g[5],g[4]} , {p[6],p[5],p[4]} , R3[3], D2[3] , {x[7],x[6],x[5],x[4]} , {sum[7],sum[6],sum[5],sum[4]} ) ;
    _Jsum_sparse4 _Jsum_sparse4_8( {g[10],g[9],g[8]} , {p[10],p[9],p[8]} , R3[7], D2[7] , {x[11],x[10],x[9],x[8]} , {sum[11],sum[10],sum[9],sum[8]} ) ;
    _Jsum_sparse4 _Jsum_sparse4_12( {g[14],g[13],g[12]} , {p[14],p[13],p[12]} , R3[11], D2[11] , {x[15],x[14],x[13],x[12]} , {sum[15],sum[14],sum[13],sum[12]} ) ;
    _Jsum_sparse4 _Jsum_sparse4_16( {g[18],g[17],g[16]} , {p[18],p[17],p[16]} , R3[15], D2[15] , {x[19],x[18],x[17],x[16]} , {sum[19],sum[18],sum[17],sum[16]} ) ;
    _Jsum_sparse4 _Jsum_sparse4_20( {g[22],g[21],g[20]} , {p[22],p[21],p[20]} , R3[19], D2[19] , {x[23],x[22],x[21],x[20]} , {sum[23],sum[22],sum[21],sum[20]} ) ;
    _Jsum_sparse4 _Jsum_sparse4_24( {g[26],g[25],g[24]} , {p[26],p[25],p[24]} , R3[23], D2[23] , {x[27],x[26],x[25],x[24]} , {sum[27],sum[26],sum[25],sum[24]} ) ;
    _Jsum_sparse4 _Jsum_sparse4_28( {g[30],g[29],g[28]} , {p[30],p[29],p[28]} , R3[27], D2[27] , {x[31],x[30],x[29],x[28]} , {sum[31],sum[30],sum[29],sum[28]} ) ;

endmodule
