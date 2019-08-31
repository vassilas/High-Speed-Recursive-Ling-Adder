// Prefix addition

// 16-bit Modulo adder 
//--------------------------------------------------------------------------------------

// Stage 1
module P16_stage_1(a, b, g, p, G1, Pr1);
    
    input [15:0]a;
    input [15:0]b;
    output [15:0]g;
    output [15:0]p;
    output [15:0]G1;    //Group Generate
    output [15:0]Pr1;   // Group Rropagate
    
    assign g[15:0] = a[15:0] & b[15:0] ;
    assign p[15:0] = a[15:0] | b[15:0] ;  

    assign G1[15:0] = g[15:0] | p[15:0] & {g[14:0],g[15]} ;
    assign Pr1[15:0] = p[15:0] & {p[14:0],p[15]} ;
    
endmodule


// Stage 2
module P16_stage_2(G1, Pr1, G2, Pr2);
    
    input [15:0]G1;
    input [15:0]Pr1;
    output [15:0]G2;
    output [15:0]Pr2;
    
    assign G2[15:0] = G1[15:0] | Pr1[15:0] & {G1[13:0],G1[15:14]} ;
    assign Pr2[15:0] = Pr1[15:0] & {Pr1[13:0],Pr1[15:14]} ;

endmodule



// Stage 3
module P16_stage_3(G2, Pr2, G3, Pr3);
    
    input [15:0]G2;
    input [15:0]Pr2;
    output [15:0]G3;
    output [15:0]Pr3;
    
    assign G3[15:0] = G2[15:0] | Pr2[15:0] & {G2[11:0],G2[15:12]} ;
    assign Pr3[15:0] = Pr2[15:0] & {Pr2[11:0],Pr2[15:12]} ;

endmodule



// Stage 4
module P16_stage_4(G3, Pr3, G4);
    
    input [15:0]G3;
    input [15:0]Pr3;
    output [15:0]G4;

    
    assign G4[15:0] = G3[15:0] | Pr3[15:0] & {G3[7:0],G3[15:8]} ;

endmodule





// Stage 6
module P16_adder(a, b, sum);
    
    input [15:0]a;
    input [15:0]b;
    output [15:0]sum;
    
    wire [15:0]g;
    wire [15:0]p;    
    
    wire [15:0]G1;
    wire [15:0]Pr1;
    wire [15:0]G2;
    wire [15:0]Pr2;
    wire [15:0]G3;
    wire [15:0]Pr3;
    wire [15:0]G4;
  
    
    P16_stage_1 CUT1(a, b, g, p, G1, Pr1);
    P16_stage_2 CUT2(G1, Pr1, G2, Pr2);
    P16_stage_3 CUT3(G2, Pr2, G3, Pr3);
    P16_stage_4 CUT4(G3, Pr3, G4);
    
    assign sum[15:0] = a[15:0] ^ b[15:0] ^ {G4[14:0],G4[15]} ; 
    
endmodule








// 16-bit Modulo adder 4x4
//--------------------------------------------------------------------------------------

// Stage 1
module P4x4_stage_1(a, b, g, p, x);
    
    input [15:0]a;
    input [15:0]b;
    output [15:0]g;
    output [15:0]p;
    output [15:0]x;
    
    assign g[15:0] = a[15:0] & b[15:0] ;
    assign p[15:0] = a[15:0] | b[15:0] ;  
    assign x[15:0] = a[15:0] ^ b[15:0];

    
endmodule


// Stage 2
module P4x4_stage_2(g, p, G1, Pr1);

    input [15:0]g;
    input [15:0]p;    
    output [15:0]G1;
    output [15:0]Pr1;

    assign G1[15:0] =   g[15:0] | 
                        p[15:0] & {g[14:0],g[15]} |
                        p[15:0] & {p[14:0],p[15]} & {g[13:0],g[15:14]} |
                        p[15:0] & {p[14:0],p[15]} & {p[13:0],p[15:14]} & {g[12:0],g[15:13]} ;
    
    assign Pr1[15:0] = p[15:0] & {p[14:0],p[15]} & {p[13:0],p[15:14]} & {p[12:0],p[15:13]} ;                        


endmodule


// Stage 2
module P4x4_stage_3(G1, Pr1, G2);
    
    input [15:0]G1;
    input [15:0]Pr1;
    output [15:0]G2;

    
    assign G2[15:0] =   G1[15:0] | 
                        Pr1[15:0] & {G1[11:0],G1[15:12]} |
                        Pr1[15:0] & {Pr1[11:0],Pr1[15:12]} & {G1[7:0],G1[15:8]} | 
                        Pr1[15:0] & {Pr1[11:0],Pr1[15:12]} & {Pr1[7:0],Pr1[15:8]} & {G1[3:0],G1[15:4]} ;
                        


endmodule





// Stage 6
module P4x4_adder(a, b, sum);
    
    input [15:0]a;
    input [15:0]b;
    output [15:0]sum;
    
    wire [15:0]g;
    wire [15:0]p;  
    wire [15:0]x;
    wire [15:0]G1;
    wire [15:0]Pr1;
    wire [15:0]G2;

  
    
    P4x4_stage_1 CUT1(a, b, g, p, x);
    P4x4_stage_2 CUT2(g, p, G1, Pr1);
    P4x4_stage_3 CUT3(G1, Pr1, G2);

    
    assign sum[15:0] = x[15:0] ^ {G2[14:0],G2[15]} ; 
    
endmodule
















