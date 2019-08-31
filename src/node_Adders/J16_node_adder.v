module J16_node_adder(a, b, sum);
    input [15:0]a;
    input [15:0]b;
    output [15:0]sum;
    wire [15:0]g ;
    wire [15:0]p ;
    wire [15:0]x ;
    wire [15:0]R1 ;
    wire [15:0]R2 ;
    wire [15:0]Q1 ;
    wire [15:0]D ;

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

    _4g2p_R4 _4g2p_R4_0	( {g[0],g[15],g[14],g[13]} ,	{p[15],p[14]} ,	R1[0] ) ;
    _4g2p_R4 _4g2p_R4_1	( {g[1],g[0],g[15],g[14]} ,	{p[0],p[15]} ,	R1[1] ) ;
    _4g2p_R4 _4g2p_R4_2	( {g[2],g[1],g[0],g[15]} ,	{p[1],p[0]} ,	R1[2] ) ;
    _4g2p_R4 _4g2p_R4_3	( {g[3],g[2],g[1],g[0]} ,	{p[2],p[1]} ,	R1[3] ) ;
    _4g2p_R4 _4g2p_R4_4	( {g[4],g[3],g[2],g[1]} ,	{p[3],p[2]} ,	R1[4] ) ;
    _4g2p_R4 _4g2p_R4_5	( {g[5],g[4],g[3],g[2]} ,	{p[4],p[3]} ,	R1[5] ) ;
    _4g2p_R4 _4g2p_R4_6	( {g[6],g[5],g[4],g[3]} ,	{p[5],p[4]} ,	R1[6] ) ;
    _4g2p_R4 _4g2p_R4_7	( {g[7],g[6],g[5],g[4]} ,	{p[6],p[5]} ,	R1[7] ) ;
    _4g2p_R4 _4g2p_R4_8	( {g[8],g[7],g[6],g[5]} ,	{p[7],p[6]} ,	R1[8] ) ;
    _4g2p_R4 _4g2p_R4_9	( {g[9],g[8],g[7],g[6]} ,	{p[8],p[7]} ,	R1[9] ) ;
    _4g2p_R4 _4g2p_R4_10	( {g[10],g[9],g[8],g[7]} ,	{p[9],p[8]} ,	R1[10] ) ;
    _4g2p_R4 _4g2p_R4_11	( {g[11],g[10],g[9],g[8]} ,	{p[10],p[9]} ,	R1[11] ) ;
    _4g2p_R4 _4g2p_R4_12	( {g[12],g[11],g[10],g[9]} ,	{p[11],p[10]} ,	R1[12] ) ;
    _4g2p_R4 _4g2p_R4_13	( {g[13],g[12],g[11],g[10]} ,	{p[12],p[11]} ,	R1[13] ) ;
    _4g2p_R4 _4g2p_R4_14	( {g[14],g[13],g[12],g[11]} ,	{p[13],p[12]} ,	R1[14] ) ;
    _4g2p_R4 _4g2p_R4_15	( {g[15],g[14],g[13],g[12]} ,	{p[14],p[13]} ,	R1[15] ) ;

    _4p_Q4 _4p_Q4_0	({p[0],	p[15],	p[14],	p[13]} ,	Q1[0] ) ;
    _4p_Q4 _4p_Q4_1	({p[1],	p[0],	p[15],	p[14]} ,	Q1[1] ) ;
    _4p_Q4 _4p_Q4_2	({p[2],	p[1],	p[0],	p[15]} ,	Q1[2] ) ;
    _4p_Q4 _4p_Q4_3	({p[3],	p[2],	p[1],	p[0]} ,	Q1[3] ) ;
    _4p_Q4 _4p_Q4_4	({p[4],	p[3],	p[2],	p[1]} ,	Q1[4] ) ;
    _4p_Q4 _4p_Q4_5	({p[5],	p[4],	p[3],	p[2]} ,	Q1[5] ) ;
    _4p_Q4 _4p_Q4_6	({p[6],	p[5],	p[4],	p[3]} ,	Q1[6] ) ;
    _4p_Q4 _4p_Q4_7	({p[7],	p[6],	p[5],	p[4]} ,	Q1[7] ) ;
    _4p_Q4 _4p_Q4_8	({p[8],	p[7],	p[6],	p[5]} ,	Q1[8] ) ;
    _4p_Q4 _4p_Q4_9	({p[9],	p[8],	p[7],	p[6]} ,	Q1[9] ) ;
    _4p_Q4 _4p_Q4_10	({p[10],	p[9],	p[8],	p[7]} ,	Q1[10] ) ;
    _4p_Q4 _4p_Q4_11	({p[11],	p[10],	p[9],	p[8]} ,	Q1[11] ) ;
    _4p_Q4 _4p_Q4_12	({p[12],	p[11],	p[10],	p[9]} ,	Q1[12] ) ;
    _4p_Q4 _4p_Q4_13	({p[13],	p[12],	p[11],	p[10]} ,	Q1[13] ) ;
    _4p_Q4 _4p_Q4_14	({p[14],	p[13],	p[12],	p[11]} ,	Q1[14] ) ;
    _4p_Q4 _4p_Q4_15	({p[15],	p[14],	p[13],	p[12]} ,	Q1[15] ) ;

    _4R2Q_R4 _4R2Q_R4_0( {R1[0],R1[12],R1[8],R1[4] }, {Q1[11],Q1[7]} ,R2[0] ) ;
    _4R2Q_R4 _4R2Q_R4_1( {R1[1],R1[13],R1[9],R1[5] }, {Q1[12],Q1[8]} ,R2[1] ) ;
    _4R2Q_R4 _4R2Q_R4_2( {R1[2],R1[14],R1[10],R1[6] }, {Q1[13],Q1[9]} ,R2[2] ) ;
    _4R2Q_R4 _4R2Q_R4_3( {R1[3],R1[15],R1[11],R1[7] }, {Q1[14],Q1[10]} ,R2[3] ) ;
    _4R2Q_R4 _4R2Q_R4_4( {R1[4],R1[0],R1[12],R1[8] }, {Q1[15],Q1[11]} ,R2[4] ) ;
    _4R2Q_R4 _4R2Q_R4_5( {R1[5],R1[1],R1[13],R1[9] }, {Q1[0],Q1[12]} ,R2[5] ) ;
    _4R2Q_R4 _4R2Q_R4_6( {R1[6],R1[2],R1[14],R1[10] }, {Q1[1],Q1[13]} ,R2[6] ) ;
    _4R2Q_R4 _4R2Q_R4_7( {R1[7],R1[3],R1[15],R1[11] }, {Q1[2],Q1[14]} ,R2[7] ) ;
    _4R2Q_R4 _4R2Q_R4_8( {R1[8],R1[4],R1[0],R1[12] }, {Q1[3],Q1[15]} ,R2[8] ) ;
    _4R2Q_R4 _4R2Q_R4_9( {R1[9],R1[5],R1[1],R1[13] }, {Q1[4],Q1[0]} ,R2[9] ) ;
    _4R2Q_R4 _4R2Q_R4_10( {R1[10],R1[6],R1[2],R1[14] }, {Q1[5],Q1[1]} ,R2[10] ) ;
    _4R2Q_R4 _4R2Q_R4_11( {R1[11],R1[7],R1[3],R1[15] }, {Q1[6],Q1[2]} ,R2[11] ) ;
    _4R2Q_R4 _4R2Q_R4_12( {R1[12],R1[8],R1[4],R1[0] }, {Q1[7],Q1[3]} ,R2[12] ) ;
    _4R2Q_R4 _4R2Q_R4_13( {R1[13],R1[9],R1[5],R1[1] }, {Q1[8],Q1[4]} ,R2[13] ) ;
    _4R2Q_R4 _4R2Q_R4_14( {R1[14],R1[10],R1[6],R1[2] }, {Q1[9],Q1[5]} ,R2[14] ) ;
    _4R2Q_R4 _4R2Q_R4_15( {R1[15],R1[11],R1[7],R1[3] }, {Q1[10],Q1[6]} ,R2[15] ) ;

    _D16 _D16_0( {p[0] ,p[12]} ,R1[0],Q1[0], D[0] ) ;
    _D16 _D16_1( {p[1] ,p[13]} ,R1[1],Q1[1], D[1] ) ;
    _D16 _D16_2( {p[2] ,p[14]} ,R1[2],Q1[2], D[2] ) ;
    _D16 _D16_3( {p[3] ,p[15]} ,R1[3],Q1[3], D[3] ) ;
    _D16 _D16_4( {p[4] ,p[0]} ,R1[4],Q1[4], D[4] ) ;
    _D16 _D16_5( {p[5] ,p[1]} ,R1[5],Q1[5], D[5] ) ;
    _D16 _D16_6( {p[6] ,p[2]} ,R1[6],Q1[6], D[6] ) ;
    _D16 _D16_7( {p[7] ,p[3]} ,R1[7],Q1[7], D[7] ) ;
    _D16 _D16_8( {p[8] ,p[4]} ,R1[8],Q1[8], D[8] ) ;
    _D16 _D16_9( {p[9] ,p[5]} ,R1[9],Q1[9], D[9] ) ;
    _D16 _D16_10( {p[10] ,p[6]} ,R1[10],Q1[10], D[10] ) ;
    _D16 _D16_11( {p[11] ,p[7]} ,R1[11],Q1[11], D[11] ) ;
    _D16 _D16_12( {p[12] ,p[8]} ,R1[12],Q1[12], D[12] ) ;
    _D16 _D16_13( {p[13] ,p[9]} ,R1[13],Q1[13], D[13] ) ;
    _D16 _D16_14( {p[14] ,p[10]} ,R1[14],Q1[14], D[14] ) ;
    _D16 _D16_15( {p[15] ,p[11]} ,R1[15],Q1[15], D[15] ) ;

    _Jsum _Jsum_0( R2[15], D[15] , x[0] , sum[0] ) ;
    _Jsum _Jsum_1( R2[0], D[0] , x[1] , sum[1] ) ;
    _Jsum _Jsum_2( R2[1], D[1] , x[2] , sum[2] ) ;
    _Jsum _Jsum_3( R2[2], D[2] , x[3] , sum[3] ) ;
    _Jsum _Jsum_4( R2[3], D[3] , x[4] , sum[4] ) ;
    _Jsum _Jsum_5( R2[4], D[4] , x[5] , sum[5] ) ;
    _Jsum _Jsum_6( R2[5], D[5] , x[6] , sum[6] ) ;
    _Jsum _Jsum_7( R2[6], D[6] , x[7] , sum[7] ) ;
    _Jsum _Jsum_8( R2[7], D[7] , x[8] , sum[8] ) ;
    _Jsum _Jsum_9( R2[8], D[8] , x[9] , sum[9] ) ;
    _Jsum _Jsum_10( R2[9], D[9] , x[10] , sum[10] ) ;
    _Jsum _Jsum_11( R2[10], D[10] , x[11] , sum[11] ) ;
    _Jsum _Jsum_12( R2[11], D[11] , x[12] , sum[12] ) ;
    _Jsum _Jsum_13( R2[12], D[12] , x[13] , sum[13] ) ;
    _Jsum _Jsum_14( R2[13], D[13] , x[14] , sum[14] ) ;
    _Jsum _Jsum_15( R2[14], D[14] , x[15] , sum[15] ) ;

endmodule
