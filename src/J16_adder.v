
// Stage 1
//--------------------------------------------------------------------------------------
module J16_stage_1(a, b, g, p, R1, Q1);
//
//
//
    input [15:0]a ;
    input [15:0]b ;
    output [15:0]g ;
    output [15:0]p ;
    output [15:0]R1 ;
    output [15:0]Q1 ;
    
    
    //or or1(p[15:0],a[15:0],b[15:0]);
    assign p[15:0] = a[15:0] | b[15:0] ;
    
    //and and1(g[15:0],a[15:0],b[15:0]);
    assign g[15:0] = a[15:0] & b[15:0] ;
    
    //or or2(R1[15:0],g[15:0],{g[14:0],g[15]}) ;
    assign R1[15:0] = g[15:0] | {g[14:0],g[15]};
    
    //and and2(Q1[15:0],p[15:0],{p[14:0],p[15]}) ;
    assign Q1[15:0] = p[15:0] & {p[14:0],p[15]} ;
    
endmodule





// Stage 2
//--------------------------------------------------------------------------------------
module J16_stage_2(R1, Q1, R2, Q2);
//
//
//
    input [15:0]R1;
    input [15:0]Q1;
    output [15:0]R2;
    output [15:0]Q2;

    assign R2[15:0] = R1[15:0] | {R1[13:0],R1[15:14]} | ( {Q1[12:0],Q1[15:13]} & {R1[11:0],R1[15:12]} ) | ( {Q1[12:0],Q1[15:13]} & {Q1[10:0],Q1[15:11]} & {R1[9:0],R1[15:10]} ) ;
    assign Q2[15:0] = Q1[15:0] & {Q1[13:0],Q1[15:14]} & {Q1[11:0],Q1[15:12]} & ({R1[10:0],R1[15:11]} | {Q1[9:0],Q1[15:10]}) ;


endmodule





// Stage 3
//--------------------------------------------------------------------------------------
module J16_stage_3(R2,Q2,R3);
//
//
//
    input [15:0]R2;
    input [15:0]Q2;
    output [15:0]R3;
    
    assign R3[15:0] = R2[15:0] | ( {Q2[12:0],Q2[15:13]} & {R2[7:0],R2[15:8]} ) ; 
    
endmodule





// Adder
//--------------------------------------------------------------------------------------
module J16_adder(a, b, sum);
//
//
//
    input [15:0]a;
    input [15:0]b;
    output [15:0]sum;
    
    wire [15:0] g ;
    wire [15:0] p ;
    wire [15:0] R1 ;
    wire [15:0] R2 ;
    wire [15:0] R3 ;
    wire [15:0] Q1 ;
    wire [15:0] Q2 ;
    wire [15:0] D ;
    
    J16_stage_1 CUT1(a, b, g, p, R1, Q1);
    J16_stage_2 CUT2(R1, Q1, R2, Q2);
    J16_stage_3 CUT3(R2,Q2,R3);
    
    assign D[15:0] = g[15:0] | ( p[15:0] & {g[14:0],g[15]} ) | ( p[15:0] & {p[14:0],p[15]} & {p[13:0],p[15:14]} ) ;
    assign sum[15:0] = ~{R3[14:0],R3[15]} & (a[15:0]^b[15:0]) | {R3[14:0],R3[15]} & ( a[15:0]^b[15:0]^{D[14:0],D[15]} ) ;
    
endmodule













module J4x4_stage_1(a, b, g, p, x, R1, Q1);

    input [15:0]a ;
    input [15:0]b ;
    output [15:0]g ;
    output [15:0]p ;
    output [15:0]x ;
    output [15:0]R1 ;
    output [15:0]Q1 ;
    
    

    assign p[15:0] = a[15:0] | b[15:0] ;
    assign g[15:0] = a[15:0] & b[15:0] ;
    assign x[15:0] = a[15:0] ^ b[15:0] ;    

    
    assign R1[15:0] =   g[15:0] | 
                        {g[14:0],g[15]} |
                        {p[14:0],p[15]} & {g[13:0],g[15:14]} |
                        {p[14:0],p[15]} & {p[13:0],p[15:14]} & {g[12:0],g[15:13]} ; 
                    
    assign Q1[15:0] =    p[15:0] & 
                        {p[14:0],p[15]} &
                        {p[13:0],p[15:14]} &
                        {p[12:0],p[15:13]} ;
    
endmodule





module J4x4_stage_2(R1, Q1, R2);
    
    input [15:0]R1 ;
    input [15:0]Q1 ;
    output [15:0]R2 ;

    
    assign R2[15:0] =   R1[15:0] |
                        {R1[11:0],R1[15:12]} |
                        {Q1[10:0],Q1[15:11]} & {R1[7:0],R1[15:8]} |
                        {Q1[10:0],Q1[15:11]} & {Q1[6:0],Q1[15:7]} & {R1[3:0],R1[15:4]} ;
                        
endmodule




module J4x4_D_recursion(p,x,R1,Q1,xD);
    
    
    input [15:0]p;
    input [15:0]x;
    input [15:0]R1;
    input [15:0]Q1;    
    output [15:0]xD;
    
    wire [15:0]D ;
    
    
    assign D[15:0] =    p[15:0] & R1[15:0] |
                        {p[11:0],p[15:12]} & Q1[15:0] ;
    
    assign xD[15:0] = {D[14:0],D[15]} ^ x[15:0] ; 
    
endmodule





module J4x4_adder(a, b, sum);

    input [15:0]a;
    input [15:0]b;
    output [15:0]sum;
    
    wire [15:0] g ;
    wire [15:0] p ;
    wire [15:0] x ;
    wire [15:0] R1 ;
    wire [15:0] R2 ;
    wire [15:0] Q1 ;
    wire [15:0] xD ;
    
    J4x4_stage_1 CUT1(a, b, g, p, x, R1, Q1);
    J4x4_stage_2 CUT2(R1, Q1, R2);
    J4x4_D_recursion CUT3(p,x,R1,Q1,xD);
    

    assign sum[15:0] = ~{R2[14:0],R2[15]} & (x[15:0]) | {R2[14:0],R2[15]} & xD[15:0] ;
    
endmodule











