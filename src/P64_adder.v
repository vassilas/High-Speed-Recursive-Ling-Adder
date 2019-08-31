// Prefix addition

// 64-bit Modulo adder 
//--------------------------------------------------------------------------------------

// Stage 1
module P64_stage_1(a, b, g, p, G1, Pr1);
    
    input [63:0]a;
    input [63:0]b;
    output [63:0]g;
    output [63:0]p;
    output [63:0]G1;    //Group Generate
    output [63:0]Pr1;   // Group Rropagate
    
    assign g[63:0] = a[63:0] & b[63:0] ;
    assign p[63:0] = a[63:0] | b[63:0] ;  

    assign G1[63:0] = g[63:0] | p[63:0] & {g[62:0],g[63]} ;
    assign Pr1[63:0] = p[63:0] & {p[62:0],p[63]} ;
    
endmodule


// Stage 2
module P64_stage_2(G1, Pr1, G2, Pr2);
    
    input [63:0]G1;
    input [63:0]Pr1;
    output [63:0]G2;
    output [63:0]Pr2;
    
    assign G2[63:0] = G1[63:0] | Pr1[63:0] & {G1[61:0],G1[63:62]} ;
    assign Pr2[63:0] = Pr1[63:0] & {Pr1[61:0],Pr1[63:62]} ;

endmodule



// Stage 3
module P64_stage_3(G2, Pr2, G3, Pr3);
    
    input [63:0]G2;
    input [63:0]Pr2;
    output [63:0]G3;
    output [63:0]Pr3;
    
    assign G3[63:0] = G2[63:0] | Pr2[63:0] & {G2[59:0],G2[63:60]} ;
    assign Pr3[63:0] = Pr2[63:0] & {Pr2[59:0],Pr2[63:60]} ;

endmodule



// Stage 4
module P64_stage_4(G3, Pr3, G4, Pr4);
    
    input [63:0]G3;
    input [63:0]Pr3;
    output [63:0]G4;
    output [63:0]Pr4;
    
    assign G4[63:0] = G3[63:0] | Pr3[63:0] & {G3[55:0],G3[63:56]} ;
    assign Pr4[63:0] = Pr3[63:0] & {Pr3[55:0],Pr3[63:56]} ;

endmodule



// Stage 5
module P64_stage_5(G4, Pr4, G5, Pr5);
    
    input [63:0]G4;
    input [63:0]Pr4;
    output [63:0]G5;
    output [63:0]Pr5; 
    
    assign G5[63:0] = G4[63:0] | Pr4[63:0] & {G4[47:0],G4[63:48]} ;
    assign Pr5[63:0] = Pr4[63:0] & {Pr4[47:0],Pr4[63:48]} ;
endmodule



// Stage 6
module P64_stage_6(G5, Pr5, G6);
    
    input [63:0]G5;
    input [63:0]Pr5;
    output [63:0]G6;
    
    assign G6[63:0] = G5[63:0] | Pr5[63:0] & {G5[31:0],G5[63:32]} ;

endmodule



// Stage 7
module P64_adder(a, b, sum);
    
    input [63:0]a;
    input [63:0]b;
    output [63:0]sum;
    
    wire [63:0]g;
    wire [63:0]p;    
    
    wire [63:0]G1;
    wire [63:0]Pr1;
    wire [63:0]G2;
    wire [63:0]Pr2;
    wire [63:0]G3;
    wire [63:0]Pr3;
    wire [63:0]G4;
    wire [63:0]Pr4;
    wire [63:0]G5;    
    wire [63:0]Pr5;
    wire [63:0]G6; 
    
    P64_stage_1 CUT1(a, b, g, p, G1, Pr1);
    P64_stage_2 CUT2(G1, Pr1, G2, Pr2);
    P64_stage_3 CUT3(G2, Pr2, G3, Pr3);
    P64_stage_4 CUT4(G3, Pr3, G4, Pr4);
    P64_stage_5 CUT5(G4, Pr4, G5, Pr5);
    P64_stage_6 CUT6(G5, Pr5, G6);
    
    assign sum[63:0] = a[63:0] ^ b[63:0] ^ {G6[62:0],G5[63]} ; 
    
endmodule









// 32-bit Modulo adder 
// 2x4x4 Architecture
//--------------------------------------------------------------------------------------

// stage 1 is the same 



module P2x4x4x2_stage_2(G1, Pr1, G2, Pr2);
    
    input [63:0]G1;
    input [63:0]Pr1;
    output [63:0]G2;
    output [63:0]Pr2;
    
    assign G2[63:0] =   G1[63:0] | 
                        Pr1[63:0] & {G1[61:0],G1[63:62]} | 
                        Pr1[63:0] & {Pr1[61:0],Pr1[63:62]} & {G1[59:0],G1[63:60]} |
                        Pr1[63:0] & {Pr1[61:0],Pr1[63:62]} & {Pr1[59:0],Pr1[63:60]} & {G1[57:0],G1[63:58]} ;
    
    assign Pr2[63:0] = Pr1[63:0] & {Pr1[61:0],Pr1[63:62]} & {Pr1[59:0],Pr1[63:60]} & {Pr1[57:0],Pr1[63:58]} ;

endmodule


module P2x4x4x2_stage_3(G2, Pr2, G3, Pr3);
    
    input [63:0]G2;
    input [63:0]Pr2;
    output [63:0]G3;
    output [63:0]Pr3;
    
    assign G3[63:0] =   G2[63:0] | 
                        Pr2[63:0] & {G2[55:0],G2[63:56]} | 
                        Pr2[63:0] & {Pr2[55:0],Pr2[63:56]} & {G2[47:0],G2[63:48]} |
                        Pr2[63:0] & {Pr2[55:0],Pr2[63:56]} & {Pr2[47:0],Pr2[63:48]} & {G2[39:0],G2[63:40]} ;
    
    assign Pr3[63:0] = Pr2[63:0] & {Pr2[55:0],Pr2[63:56]} & {Pr2[47:0],Pr2[63:48]} & {Pr2[39:0],Pr2[63:40]} ;

endmodule


module P2x4x4x2_stage_4(G3, Pr3, G4);
    
    input [63:0]G3;
    input [63:0]Pr3;
    output [63:0]G4;
    
    assign G4[63:0] =   G3[63:0] | Pr3[63:0] & {G3[31:0],G3[63:32]} ;

endmodule



module P2x4x4x2_adder(a, b, sum);
    
    input [63:0]a;
    input [63:0]b;
    output [63:0]sum;
    
    wire [63:0]g;
    wire [63:0]p;    
    
    wire [63:0]G1;
    wire [63:0]Pr1;
    wire [63:0]G2;
    wire [63:0]Pr2;
    wire [63:0]G3;
    wire [63:0]Pr3;
    wire [63:0]G4;
    
    P64_stage_1 CUT1(a, b, g, p, G1, Pr1);
    P2x4x4x2_stage_2 CUT2(G1, Pr1, G2, Pr2);
    P2x4x4x2_stage_3 CUT3(G2, Pr2, G3, Pr3);
    P2x4x4x2_stage_4 CUT4(G3, Pr3, G4);
    
    assign sum[63:0] = a[63:0] ^ b[63:0] ^ {G4[62:0],G4[63]} ; 
    
endmodule







// 64-bit Modulo adder 4x4x4
//--------------------------------------------------------------------------------------

// Stage 1
module P4x4x4_stage_1(a, b, g, p, x);
    
    input [63:0]a;
    input [63:0]b;
    
    output [63:0]g;
    output [63:0]p;
    output [63:0]x;  
    
    assign g[63:0] = a[63:0] & b[63:0] ;
    assign p[63:0] = a[63:0] | b[63:0] ;
    assign x[63:0] = a[63:0] ^ b[63:0] ;

    

endmodule

// Stage 2
module P4x4x4_stage_2(g, p, G1, Pr1);
    
    input [63:0]g;
    input [63:0]p;
    output [63:0]G1;
    output [63:0]Pr1;

    
    assign G1[63:0] =   g[63:0] |
                        p[63:0] & {g[62:0],g[63]} |
                        p[63:0] & {p[62:0],p[63]} & {g[61:0],g[63:62]} | 
                        p[63:0] & {p[62:0],p[63]} & {p[61:0],p[63:62]} & {g[60:0],g[63:61]} ;
                        
    assign Pr1[63:0] =  p[63:0] & 
                        {p[62:0],p[63]} & 
                        {p[61:0],p[63:62]} &
                        {p[60:0],p[63:61]} ; 
    
    
endmodule



// Stage 3
module P4x4x4_stage_3(G1, Pr1, G2, Pr2);
    
    input [63:0]G1;
    input [63:0]Pr1;
    output [63:0]G2;
    output [63:0]Pr2;

    
    assign G2[63:0] =   G1[63:0] |
                        Pr1[63:0] & {G1[59:0],G1[63:60]} |
                        Pr1[63:0] & {Pr1[59:0],Pr1[63:60]} & {G1[55:0],G1[63:56]} | 
                        Pr1[63:0] & {Pr1[59:0],Pr1[63:60]} & {Pr1[55:0],Pr1[63:56]} & {G1[51:0],G1[63:52]} ;
                        
    assign Pr2[63:0] =  Pr1[63:0] &
                        {Pr1[59:0],Pr1[63:60]} &
                        {Pr1[55:0],Pr1[63:56]} &
                        {Pr1[51:0],Pr1[63:52]}; 
    
endmodule



// Stage 4
module P4x4x4_stage_4(G2, Pr2, G3);
    
    input [63:0]G2;
    input [63:0]Pr2;
    output [63:0]G3;

    
    assign G3[63:0] =   G2[63:0] |
                        Pr2[63:0] & {G2[47:0],G2[63:48]} |
                        Pr2[63:0] & {Pr2[47:0],Pr2[63:48]} & {G2[31:0],G2[63:32]} | 
                        Pr2[63:0] & {Pr2[47:0],Pr2[63:48]} & {Pr2[31:0],Pr2[63:32]} & {G2[15:0],G2[63:16]} ;

                    
endmodule




module P4x4x4_adder(a, b, sum);
    
    input [63:0]a;
    input [63:0]b;
    output [63:0]sum;
    
    wire [63:0]g;
    wire [63:0]p;    
    wire [63:0]x;     
    wire [63:0]G1;
    wire [63:0]Pr1;
    wire [63:0]G2;
    wire [63:0]Pr2;
    wire [63:0]G3;

    
    P4x4x4_stage_1 CUT1(a, b, g, p, x);
    P4x4x4_stage_2 CUT2(g, p, G1, Pr1);
    P4x4x4_stage_3 CUT3(G1, Pr1, G2, Pr2);
    P4x4x4_stage_4 CUT4(G2, Pr2, G3);
    
    assign sum[63:0] = x[63:0] ^ {G3[62:0],G3[63]} ; 
    
endmodule










