module L8_node_adder(a, b, sum);
    input [7:0]a;
    input [7:0]b;
    output [7:0]sum;
    wire [7:0]g ;
    wire [7:0]p ;
    wire [7:0]x ;
    wire [7:0]H1 ;
    wire [7:0]H2 ;
    wire [7:0]Pr1 ;

    _gpx _gpx_0	(a[0],	b[0],	g[0], 	p[0], 	x[0]) ;
    _gpx _gpx_1	(a[1],	b[1],	g[1], 	p[1], 	x[1]) ;
    _gpx _gpx_2	(a[2],	b[2],	g[2], 	p[2], 	x[2]) ;
    _gpx _gpx_3	(a[3],	b[3],	g[3], 	p[3], 	x[3]) ;
    _gpx _gpx_4	(a[4],	b[4],	g[4], 	p[4], 	x[4]) ;
    _gpx _gpx_5	(a[5],	b[5],	g[5], 	p[5], 	x[5]) ;
    _gpx _gpx_6	(a[6],	b[6],	g[6], 	p[6], 	x[6]) ;
    _gpx _gpx_7	(a[7],	b[7],	g[7], 	p[7], 	x[7]) ;


    _2g_H2 _2g_H2_1( {g[1],g[0]} , H1[1] ) ;
    _2g_H2 _2g_H2_3( {g[3],g[2]} , H1[3] ) ;
    _2g_H2 _2g_H2_5( {g[5],g[4]} , H1[5] ) ;
    _2g_H2 _2g_H2_7( {g[7],g[6]} , H1[7] ) ;

    _2p_P2 _2p_P2_0( {p[0],p[7]} , Pr1[0] ) ;
    _2p_P2 _2p_P2_2( {p[2],p[1]} , Pr1[2] ) ;
    _2p_P2 _2p_P2_4( {p[4],p[3]} , Pr1[4] ) ;
    _2p_P2 _2p_P2_6( {p[6],p[5]} , Pr1[6] ) ;

    _4G3P_G4 _4G3P_G4_1( {H1[1],H1[7],H1[5],H1[3]} , {Pr1[0],Pr1[6],Pr1[4]} ,H2[1] ) ;
    _4G3P_G4 _4G3P_G4_3( {H1[3],H1[1],H1[7],H1[5]} , {Pr1[2],Pr1[0],Pr1[6]} ,H2[3] ) ;
    _4G3P_G4 _4G3P_G4_5( {H1[5],H1[3],H1[1],H1[7]} , {Pr1[4],Pr1[2],Pr1[0]} ,H2[5] ) ;
    _4G3P_G4 _4G3P_G4_7( {H1[7],H1[5],H1[3],H1[1]} , {Pr1[6],Pr1[4],Pr1[2]} ,H2[7] ) ;

    _Lsum_sparse2 _Lsum_0( x[1:0] , g[0] , {p[0],p[7]} , H2[7] , sum[1:0]  ) ;
    _Lsum_sparse2 _Lsum_2( x[3:2] , g[2] , {p[2],p[1]} , H2[1] , sum[3:2]  ) ;
    _Lsum_sparse2 _Lsum_4( x[5:4] , g[4] , {p[4],p[3]} , H2[3] , sum[5:4]  ) ;
    _Lsum_sparse2 _Lsum_6( x[7:6] , g[6] , {p[6],p[5]} , H2[5] , sum[7:6]  ) ;


endmodule
