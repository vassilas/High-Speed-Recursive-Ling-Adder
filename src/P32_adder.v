// Prefix addition
// 32-bit Modulo adder 
//--------------------------------------------------------------------------------------

// Stage 1
module P32_stage_1(a, b, g, p, x, G1, Pr1);
    
    input [31:0]a;
    input [31:0]b;
    output [31:0]g;
    output [31:0]p;
    output [31:0]x;
    output [31:0]G1;    //Group Generate
    output [31:0]Pr1;   // Group Rropagate
    
    assign g[31:0] = a[31:0] & b[31:0] ;
    assign p[31:0] = a[31:0] | b[31:0] ;  
    assign x[31:0] = a[31:0] ^ b[31:0] ;
    
    assign G1[31:0] = g[31:0] | p[31:0] & {g[30:0],g[31]} ;
    assign Pr1[31:0] = p[31:0] & {p[30:0],p[31]} ;
    
endmodule


// Stage 2
module P32_stage_2(G1, Pr1, G2, Pr2);
    
    input [31:0]G1;
    input [31:0]Pr1;
    output [31:0]G2;
    output [31:0]Pr2;
    
    assign G2[31:0] = G1[31:0] | Pr1[31:0] & {G1[29:0],G1[31:30]} ;
    assign Pr2[31:0] = Pr1[31:0] & {Pr1[29:0],Pr1[31:30]} ;

endmodule



// Stage 3
module P32_stage_3(G2, Pr2, G3, Pr3);
    
    input [31:0]G2;
    input [31:0]Pr2;
    output [31:0]G3;
    output [31:0]Pr3;
    
    assign G3[31:0] = G2[31:0] | Pr2[31:0] & {G2[27:0],G2[31:28]} ;
    assign Pr3[31:0] = Pr2[31:0] & {Pr2[27:0],Pr2[31:28]} ;

endmodule



// Stage 4
module P32_stage_4(G3, Pr3, G4, Pr4);
    
    input [31:0]G3;
    input [31:0]Pr3;
    output [31:0]G4;
    output [31:0]Pr4;
    
    assign G4[31:0] = G3[31:0] | Pr3[31:0] & {G3[23:0],G3[31:24]} ;
    assign Pr4[31:0] = Pr3[31:0] & {Pr3[23:0],Pr3[31:24]} ;

endmodule



// Stage 5
module P32_stage_5(G4, Pr4, G5);
    
    input [31:0]G4;
    input [31:0]Pr4;
    output [31:0]G5;
    
    assign G5[31:0] = G4[31:0] | Pr4[31:0] & {G4[15:0],G4[31:16]} ;

endmodule




// Stage 6
module P32_adder(a, b, sum);
    
    input [31:0]a;
    input [31:0]b;
    output [31:0]sum;
    
    wire [31:0]g;
    wire [31:0]p;    
    wire [31:0]x;
    
    wire [31:0]G1;
    wire [31:0]Pr1;
    wire [31:0]G2;
    wire [31:0]Pr2;
    wire [31:0]G3;
    wire [31:0]Pr3;
    wire [31:0]G4;
    wire [31:0]Pr4;
    wire [31:0]G5;    
    
    P32_stage_1 CUT1(a, b, g, p, x, G1, Pr1);
    P32_stage_2 CUT2(G1, Pr1, G2, Pr2);
    P32_stage_3 CUT3(G2, Pr2, G3, Pr3);
    P32_stage_4 CUT4(G3, Pr3, G4, Pr4);
    P32_stage_5 CUT5(G4, Pr4, G5);
    
    assign sum[31:0] = x[31:0] ^ {G5[30:0],G5[31]} ; 
    
endmodule








// 32-bit Modulo adder 
// 2x4x4 Architecture
//--------------------------------------------------------------------------------------

// stage 1 is the same 
// Stage 1
module P2x4x4_stage_1(a, b, g, p, x);
    
    input [31:0]a;
    input [31:0]b;
    output [31:0]g;
    output [31:0]p;
    output [31:0]x;

    
    assign g[31:0] = a[31:0] & b[31:0] ;
    assign p[31:0] = a[31:0] | b[31:0] ;  
    assign x[31:0] = a[31:0] ^ b[31:0] ;

    
endmodule

module P2x4x4_stage_2(g, p, G1, Pr1);
    input [31:0]g;
    input [31:0]p;
    output [31:0]G1;
    output [31:0]Pr1;

    assign G1[31:0] = g[31:0] | p[31:0] & {g[30:0],g[31]} ;
    assign Pr1[31:0] = p[31:0] & {p[30:0],p[31]} ;

endmodule


module P2x4x4_stage_3(G1, Pr1, G2, Pr2);
    
    input [31:0]G1;
    input [31:0]Pr1;
    output [31:0]G2;
    output [31:0]Pr2;
    
    assign G2[31:0] =   G1[31:0] | 
                        Pr1[31:0] & {G1[29:0],G1[31:30]} | 
                        Pr1[31:0] & {Pr1[29:0],Pr1[31:30]} & {G1[27:0],G1[31:28]} |
                        Pr1[31:0] & {Pr1[29:0],Pr1[31:30]} & {Pr1[27:0],Pr1[31:28]} & {G1[25:0],G1[31:26]} ;
    
    assign Pr2[31:0] = Pr1[31:0] & {Pr1[29:0],Pr1[31:30]} & {Pr1[27:0],Pr1[31:28]} & {Pr1[25:0],Pr1[31:26]} ;

endmodule


module P2x4x4_stage_4(G2, Pr2, G3);
    
    input [31:0]G2;
    input [31:0]Pr2;
    output [31:0]G3;
    
    assign G3[31:0] =   G2[31:0] | 
                        Pr2[31:0] & {G2[23:0],G2[31:24]} | 
                        Pr2[31:0] & {Pr2[23:0],Pr2[31:24]} & {G2[15:0],G2[31:16]} |
                        Pr2[31:0] & {Pr2[23:0],Pr2[31:24]} & {Pr2[15:0],Pr2[31:16]} & {G2[7:0],G2[31:8]} ;

endmodule


module P2x4x4_adder(a, b, sum);
    
    input [31:0]a;
    input [31:0]b;
    output [31:0]sum;
    
    wire [31:0]g;
    wire [31:0]p;    
    wire [31:0]x;
    
    wire [31:0]G1;
    wire [31:0]Pr1;
    wire [31:0]G2;
    wire [31:0]Pr2;
    wire [31:0]G3;
   
    
    P2x4x4_stage_1 CUT1(a, b, g, p, x);
    P2x4x4_stage_2 CUT2(g, p, G1, Pr1);
    P2x4x4_stage_3 CUT3(G1, Pr1, G2, Pr2);
    P2x4x4_stage_4 CUT4(G2, Pr2, G3);

    
    assign sum[31:0] = x[31:0] ^ {G3[30:0],G3[31]} ; 
    
endmodule















