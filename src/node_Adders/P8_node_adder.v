module P8_node_adder(a, b, sum);
    input [7:0]a;
    input [7:0]b;
    output [7:0]sum;
    wire [7:0]g ;
    wire [7:0]p ;
    wire [7:0]x ;
    wire [7:0]G1 ;
    wire [7:0]G2 ;
    wire [7:0]Pr1 ;

    _gpx _gpx_0	(a[0],	b[0],	g[0], 	p[0], 	x[0]) ;
    _gpx _gpx_1	(a[1],	b[1],	g[1], 	p[1], 	x[1]) ;
    _gpx _gpx_2	(a[2],	b[2],	g[2], 	p[2], 	x[2]) ;
    _gpx _gpx_3	(a[3],	b[3],	g[3], 	p[3], 	x[3]) ;
    _gpx _gpx_4	(a[4],	b[4],	g[4], 	p[4], 	x[4]) ;
    _gpx _gpx_5	(a[5],	b[5],	g[5], 	p[5], 	x[5]) ;
    _gpx _gpx_6	(a[6],	b[6],	g[6], 	p[6], 	x[6]) ;
    _gpx _gpx_7	(a[7],	b[7],	g[7], 	p[7], 	x[7]) ;

    _2g1p_G2 _2g1p_G2_0( {g[0],g[7]} , p[0] , G1[0] ) ;
    _2g1p_G2 _2g1p_G2_1( {g[1],g[0]} , p[1] , G1[1] ) ;
    _2g1p_G2 _2g1p_G2_2( {g[2],g[1]} , p[2] , G1[2] ) ;
    _2g1p_G2 _2g1p_G2_3( {g[3],g[2]} , p[3] , G1[3] ) ;
    _2g1p_G2 _2g1p_G2_4( {g[4],g[3]} , p[4] , G1[4] ) ;
    _2g1p_G2 _2g1p_G2_5( {g[5],g[4]} , p[5] , G1[5] ) ;
    _2g1p_G2 _2g1p_G2_6( {g[6],g[5]} , p[6] , G1[6] ) ;
    _2g1p_G2 _2g1p_G2_7( {g[7],g[6]} , p[7] , G1[7] ) ;

    _2p_P2 _2p_P2_0( {p[0],p[7]} , Pr1[0] ) ;
    _2p_P2 _2p_P2_1( {p[1],p[0]} , Pr1[1] ) ;
    _2p_P2 _2p_P2_2( {p[2],p[1]} , Pr1[2] ) ;
    _2p_P2 _2p_P2_3( {p[3],p[2]} , Pr1[3] ) ;
    _2p_P2 _2p_P2_4( {p[4],p[3]} , Pr1[4] ) ;
    _2p_P2 _2p_P2_5( {p[5],p[4]} , Pr1[5] ) ;
    _2p_P2 _2p_P2_6( {p[6],p[5]} , Pr1[6] ) ;
    _2p_P2 _2p_P2_7( {p[7],p[6]} , Pr1[7] ) ;

    _4G3P_G4 _4G3P_G4_0( {G1[0],G1[6],G1[4],G1[2]} , {Pr1[0],Pr1[6],Pr1[4]} ,G2[0] ) ;
    _4G3P_G4 _4G3P_G4_1( {G1[1],G1[7],G1[5],G1[3]} , {Pr1[1],Pr1[7],Pr1[5]} ,G2[1] ) ;
    _4G3P_G4 _4G3P_G4_2( {G1[2],G1[0],G1[6],G1[4]} , {Pr1[2],Pr1[0],Pr1[6]} ,G2[2] ) ;
    _4G3P_G4 _4G3P_G4_3( {G1[3],G1[1],G1[7],G1[5]} , {Pr1[3],Pr1[1],Pr1[7]} ,G2[3] ) ;
    _4G3P_G4 _4G3P_G4_4( {G1[4],G1[2],G1[0],G1[6]} , {Pr1[4],Pr1[2],Pr1[0]} ,G2[4] ) ;
    _4G3P_G4 _4G3P_G4_5( {G1[5],G1[3],G1[1],G1[7]} , {Pr1[5],Pr1[3],Pr1[1]} ,G2[5] ) ;
    _4G3P_G4 _4G3P_G4_6( {G1[6],G1[4],G1[2],G1[0]} , {Pr1[6],Pr1[4],Pr1[2]} ,G2[6] ) ;
    _4G3P_G4 _4G3P_G4_7( {G1[7],G1[5],G1[3],G1[1]} , {Pr1[7],Pr1[5],Pr1[3]} ,G2[7] ) ;

    _Psum _Psum_0( x[0] , G2[7] , sum[0] ) ;
    _Psum _Psum_1( x[1] , G2[0] , sum[1] ) ;
    _Psum _Psum_2( x[2] , G2[1] , sum[2] ) ;
    _Psum _Psum_3( x[3] , G2[2] , sum[3] ) ;
    _Psum _Psum_4( x[4] , G2[3] , sum[4] ) ;
    _Psum _Psum_5( x[5] , G2[4] , sum[5] ) ;
    _Psum _Psum_6( x[6] , G2[5] , sum[6] ) ;
    _Psum _Psum_7( x[7] , G2[6] , sum[7] ) ;

endmodule