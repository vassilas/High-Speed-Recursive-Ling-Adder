module P16_node_adder(a, b, sum);
    input [15:0]a;
    input [15:0]b;
    output [15:0]sum;
    wire [15:0]g ;
    wire [15:0]p ;
    wire [15:0]x ;
    wire [15:0]G1 ;
    wire [15:0]G2 ;
    wire [15:0]Pr1 ;

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

    _4G3P_G4 _4G3P_G4_0( {g[0],g[15],g[14],g[13]} , {p[0],p[15],p[14]} ,G1[0] ) ;
    _4G3P_G4 _4G3P_G4_1( {g[1],g[0],g[15],g[14]} , {p[1],p[0],p[15]} ,G1[1] ) ;
    _4G3P_G4 _4G3P_G4_2( {g[2],g[1],g[0],g[15]} , {p[2],p[1],p[0]} ,G1[2] ) ;
    _4G3P_G4 _4G3P_G4_3( {g[3],g[2],g[1],g[0]} , {p[3],p[2],p[1]} ,G1[3] ) ;
    _4G3P_G4 _4G3P_G4_4( {g[4],g[3],g[2],g[1]} , {p[4],p[3],p[2]} ,G1[4] ) ;
    _4G3P_G4 _4G3P_G4_5( {g[5],g[4],g[3],g[2]} , {p[5],p[4],p[3]} ,G1[5] ) ;
    _4G3P_G4 _4G3P_G4_6( {g[6],g[5],g[4],g[3]} , {p[6],p[5],p[4]} ,G1[6] ) ;
    _4G3P_G4 _4G3P_G4_7( {g[7],g[6],g[5],g[4]} , {p[7],p[6],p[5]} ,G1[7] ) ;
    _4G3P_G4 _4G3P_G4_8( {g[8],g[7],g[6],g[5]} , {p[8],p[7],p[6]} ,G1[8] ) ;
    _4G3P_G4 _4G3P_G4_9( {g[9],g[8],g[7],g[6]} , {p[9],p[8],p[7]} ,G1[9] ) ;
    _4G3P_G4 _4G3P_G4_10( {g[10],g[9],g[8],g[7]} , {p[10],p[9],p[8]} ,G1[10] ) ;
    _4G3P_G4 _4G3P_G4_11( {g[11],g[10],g[9],g[8]} , {p[11],p[10],p[9]} ,G1[11] ) ;
    _4G3P_G4 _4G3P_G4_12( {g[12],g[11],g[10],g[9]} , {p[12],p[11],p[10]} ,G1[12] ) ;
    _4G3P_G4 _4G3P_G4_13( {g[13],g[12],g[11],g[10]} , {p[13],p[12],p[11]} ,G1[13] ) ;
    _4G3P_G4 _4G3P_G4_14( {g[14],g[13],g[12],g[11]} , {p[14],p[13],p[12]} ,G1[14] ) ;
    _4G3P_G4 _4G3P_G4_15( {g[15],g[14],g[13],g[12]} , {p[15],p[14],p[13]} ,G1[15] ) ;

    _P4 _P4_0( {p[0],p[15],p[14],p[13]} ,Pr1[0] ) ;
    _P4 _P4_1( {p[1],p[0],p[15],p[14]} ,Pr1[1] ) ;
    _P4 _P4_2( {p[2],p[1],p[0],p[15]} ,Pr1[2] ) ;
    _P4 _P4_3( {p[3],p[2],p[1],p[0]} ,Pr1[3] ) ;
    _P4 _P4_4( {p[4],p[3],p[2],p[1]} ,Pr1[4] ) ;
    _P4 _P4_5( {p[5],p[4],p[3],p[2]} ,Pr1[5] ) ;
    _P4 _P4_6( {p[6],p[5],p[4],p[3]} ,Pr1[6] ) ;
    _P4 _P4_7( {p[7],p[6],p[5],p[4]} ,Pr1[7] ) ;
    _P4 _P4_8( {p[8],p[7],p[6],p[5]} ,Pr1[8] ) ;
    _P4 _P4_9( {p[9],p[8],p[7],p[6]} ,Pr1[9] ) ;
    _P4 _P4_10( {p[10],p[9],p[8],p[7]} ,Pr1[10] ) ;
    _P4 _P4_11( {p[11],p[10],p[9],p[8]} ,Pr1[11] ) ;
    _P4 _P4_12( {p[12],p[11],p[10],p[9]} ,Pr1[12] ) ;
    _P4 _P4_13( {p[13],p[12],p[11],p[10]} ,Pr1[13] ) ;
    _P4 _P4_14( {p[14],p[13],p[12],p[11]} ,Pr1[14] ) ;
    _P4 _P4_15( {p[15],p[14],p[13],p[12]} ,Pr1[15] ) ;

    _4G3P_G4 _4G3P_G4_16( {G1[0],G1[12],G1[8],G1[4]} , {Pr1[0],Pr1[12],Pr1[8]} ,G2[0] ) ;
    _4G3P_G4 _4G3P_G4_17( {G1[1],G1[13],G1[9],G1[5]} , {Pr1[1],Pr1[13],Pr1[9]} ,G2[1] ) ;
    _4G3P_G4 _4G3P_G4_18( {G1[2],G1[14],G1[10],G1[6]} , {Pr1[2],Pr1[14],Pr1[10]} ,G2[2] ) ;
    _4G3P_G4 _4G3P_G4_19( {G1[3],G1[15],G1[11],G1[7]} , {Pr1[3],Pr1[15],Pr1[11]} ,G2[3] ) ;
    _4G3P_G4 _4G3P_G4_20( {G1[4],G1[0],G1[12],G1[8]} , {Pr1[4],Pr1[0],Pr1[12]} ,G2[4] ) ;
    _4G3P_G4 _4G3P_G4_21( {G1[5],G1[1],G1[13],G1[9]} , {Pr1[5],Pr1[1],Pr1[13]} ,G2[5] ) ;
    _4G3P_G4 _4G3P_G4_22( {G1[6],G1[2],G1[14],G1[10]} , {Pr1[6],Pr1[2],Pr1[14]} ,G2[6] ) ;
    _4G3P_G4 _4G3P_G4_23( {G1[7],G1[3],G1[15],G1[11]} , {Pr1[7],Pr1[3],Pr1[15]} ,G2[7] ) ;
    _4G3P_G4 _4G3P_G4_24( {G1[8],G1[4],G1[0],G1[12]} , {Pr1[8],Pr1[4],Pr1[0]} ,G2[8] ) ;
    _4G3P_G4 _4G3P_G4_25( {G1[9],G1[5],G1[1],G1[13]} , {Pr1[9],Pr1[5],Pr1[1]} ,G2[9] ) ;
    _4G3P_G4 _4G3P_G4_26( {G1[10],G1[6],G1[2],G1[14]} , {Pr1[10],Pr1[6],Pr1[2]} ,G2[10] ) ;
    _4G3P_G4 _4G3P_G4_27( {G1[11],G1[7],G1[3],G1[15]} , {Pr1[11],Pr1[7],Pr1[3]} ,G2[11] ) ;
    _4G3P_G4 _4G3P_G4_28( {G1[12],G1[8],G1[4],G1[0]} , {Pr1[12],Pr1[8],Pr1[4]} ,G2[12] ) ;
    _4G3P_G4 _4G3P_G4_29( {G1[13],G1[9],G1[5],G1[1]} , {Pr1[13],Pr1[9],Pr1[5]} ,G2[13] ) ;
    _4G3P_G4 _4G3P_G4_30( {G1[14],G1[10],G1[6],G1[2]} , {Pr1[14],Pr1[10],Pr1[6]} ,G2[14] ) ;
    _4G3P_G4 _4G3P_G4_31( {G1[15],G1[11],G1[7],G1[3]} , {Pr1[15],Pr1[11],Pr1[7]} ,G2[15] ) ;

    _Psum _Psum_0( x[0] , G2[15] , sum[0] ) ;
    _Psum _Psum_1( x[1] , G2[0] , sum[1] ) ;
    _Psum _Psum_2( x[2] , G2[1] , sum[2] ) ;
    _Psum _Psum_3( x[3] , G2[2] , sum[3] ) ;
    _Psum _Psum_4( x[4] , G2[3] , sum[4] ) ;
    _Psum _Psum_5( x[5] , G2[4] , sum[5] ) ;
    _Psum _Psum_6( x[6] , G2[5] , sum[6] ) ;
    _Psum _Psum_7( x[7] , G2[6] , sum[7] ) ;
    _Psum _Psum_8( x[8] , G2[7] , sum[8] ) ;
    _Psum _Psum_9( x[9] , G2[8] , sum[9] ) ;
    _Psum _Psum_10( x[10] , G2[9] , sum[10] ) ;
    _Psum _Psum_11( x[11] , G2[10] , sum[11] ) ;
    _Psum _Psum_12( x[12] , G2[11] , sum[12] ) ;
    _Psum _Psum_13( x[13] , G2[12] , sum[13] ) ;
    _Psum _Psum_14( x[14] , G2[13] , sum[14] ) ;
    _Psum _Psum_15( x[15] , G2[14] , sum[15] ) ;

endmodule