// Stage 1
//--------------------------------------------------------------------------------------
module J8_stage_1(a, b, g, p, x, R1, Q1);
//
//
//
    input [7:0]a ;
    input [7:0]b ;
    output [7:0]g ;
    output [7:0]p ;
    output [7:0]x ;
    output [7:0]R1 ;
    output [7:0]Q1 ;
    

    assign p[7:0] = a[7:0] | b[7:0] ;
    assign g[7:0] = a[7:0] & b[7:0] ;
    
    assign x[7:0] = a[7:0] ^ b[7:0] ;

    assign R1[7:0] = g[7:0] | {g[6:0],g[7]} ;
    assign Q1[7:0] = p[7:0] & {p[6:0],p[7]} ;

endmodule




module J8_stage_2(R1, Q1, R2);

    input [7:0]R1;
    input [7:0]Q1;
    output [7:0]R2; 

    assign R2[7:0] = R1[7:0] | {R1[5:0],R1[7:6]} | ( {Q1[4:0],Q1[7:5]} & {R1[3:0],R1[7:4]} ) | ( {Q1[4:0],Q1[7:5]} & {Q1[2:0],Q1[7:3]} & {R1[1:0],R1[7:2]} ) ;
    
//assign Q2[7:0] = Q1[7:0] & {Q1[5:0],Q1[7:6]} & {Q1[3:0],Q1[7:4]} & {R1[2:0],R1[7:3]} & {Q1[1:0],Q1[7:2]} ;
     
endmodule




module J8_stage_3(p,g,D);
    input [7:0]p;
    input [7:0]g;
    output [7:0]D;

    assign D[7:0] = g[7:0] | p[7:0] & {g[6:0],g[7]} | p[7:0] & {p[6:0],p[7]} & {p[5:0],p[7:6]};

endmodule



module J8_adder(a, b, sum);
    input [7:0]b;
    input [7:0]a;
    output [7:0]sum;

    wire [7:0]p;
    wire [7:0]g;
    wire [7:0]x;
    wire [7:0]R1;
    wire [7:0]Q1;
    wire [7:0]R2;
    wire [7:0]D;

    J8_stage_1 CUT1(a, b, g, p, x, R1, Q1);
    J8_stage_2 CUT2(R1, Q1, R2);
    J8_stage_3 CUT3(p,g,D);
    
//    assign D[7:0] = g[7:0] | p[7:0] & {g[6:0],g[7]} | p[7:0] & {p[6:0],p[7]} & {p[5:0],p[7:6]};
    
    assign sum[7:0] = ~{R2[6:0],R2[7]}&x[7:0] | {R2[6:0],R2[7]}&(x[7:0]^{D[6:0],D[7]});

endmodule