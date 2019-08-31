// Prefix addition

// 8-bit Modulo adder 
//--------------------------------------------------------------------------------------

// Stage 1
module P8_stage_1(a, b, g, p, G1, Pr1);
    
    input [7:0]a;
    input [7:0]b;
    output [7:0]g;
    output [7:0]p;
    output [7:0]G1;    //Group Generate
    output [7:0]Pr1;   // Group Rropagate
    
    assign g[7:0] = a[7:0] & b[7:0] ;
    assign p[7:0] = a[7:0] | b[7:0] ;  

    assign G1[7:0] = g[7:0] | p[7:0] & {g[6:0],g[7]} ;
    assign Pr1[7:0] = p[7:0] & {p[6:0],p[7]} ;
    
endmodule


// Stage 2
module P8_stage_2(G1, Pr1, G2, Pr2);
    
    input [7:0]G1;
    input [7:0]Pr1;
    output [7:0]G2;
    output [7:0]Pr2;
    
    assign G2[7:0] = G1[7:0] | Pr1[7:0] & {G1[5:0],G1[7:6]} ;
    assign Pr2[7:0] = Pr1[7:0] & {Pr1[5:0],Pr1[7:6]} ;

endmodule



// Stage 3
module P8_stage_3(G2, Pr2, G3);
    
    input [7:0]G2;
    input [7:0]Pr2;
    output [7:0]G3;

    
    assign G3[7:0] = G2[7:0] | Pr2[7:0] & {G2[3:0],G2[7:4]} ;


endmodule



// Stage 4
module P8_adder(a, b, sum);
    
    input [7:0]a;
    input [7:0]b;
    output [7:0]sum;
    
    wire [7:0]g;
    wire [7:0]p;    
    
    wire [7:0]G1;
    wire [7:0]Pr1;
    wire [7:0]G2;
    wire [7:0]Pr2;
    wire [7:0]G3;
    
    
    P8_stage_1 CUT1(a, b, g, p, G1, Pr1);
    P8_stage_2 CUT2(G1, Pr1, G2, Pr2);
    P8_stage_3 CUT3(G2, Pr2, G3);

    
    assign sum[7:0] = a[7:0] ^ b[7:0] ^ {G3[6:0],G3[7]} ; 
    
endmodule








// 8-bit Modulo adder 2x4
//--------------------------------------------------------------------------------------

// Stage 1
module P2x4_stage_1(a, b, g, p, x);
    
    input [7:0]a;
    input [7:0]b;
    output [7:0]g;
    output [7:0]p;
    output [7:0]x;
    
    assign g[7:0] = a[7:0] & b[7:0] ;
    assign p[7:0] = a[7:0] | b[7:0] ;  
    assign x[7:0] = a[7:0] ^ b[7:0] ;

    
endmodule


module P2x4_stage_2(g, p, G1, Pr1);
    
    input [7:0]g;
    input [7:0]p;
    output [7:0]G1;
    output [7:0]Pr1;

    assign G1[7:0] = g[7:0] | p[7:0] & {g[6:0],g[7]} ;
    assign Pr1[7:0] = p[7:0] & {p[6:0],p[7]} ;    

endmodule


// Stage 2
module P2x4_stage_3(G1, Pr1, G2);
    
    input [7:0]G1;
    input [7:0]Pr1;
    output [7:0]G2;

    
    assign G2[7:0] =    G1[7:0] | 
                        Pr1[7:0] & {G1[5:0],G1[7:6]} |
                        Pr1[7:0] & {Pr1[5:0],Pr1[7:6]} & {G1[3:0],G1[7:4]} |
                        Pr1[7:0] & {Pr1[5:0],Pr1[7:6]} & {Pr1[3:0],Pr1[7:4]} & {G1[1:0],G1[7:2]};

endmodule


// Stage 3
module P2x4_adder(a, b, sum);
    
    input [7:0]a;
    input [7:0]b;
    output [7:0]sum;
    
    wire [7:0]g;
    wire [7:0]p; 
    wire [7:0]x;
    
    wire [7:0]G1;
    wire [7:0]Pr1;
    wire [7:0]G2;

    
    
    P2x4_stage_1 CUT1(a, b, g, p, x);
    P2x4_stage_2 CUT2(g, p, G1, Pr1);
    P2x4_stage_3 CUT3(G1, Pr1, G2);

    
    assign sum[7:0] = x[7:0] ^ {G2[6:0],G2[7]} ; 
    
endmodule
