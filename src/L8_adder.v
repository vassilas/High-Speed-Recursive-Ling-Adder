// 2^N-1 Adders as proposed in :
// NEW ARCHITECTURES FOR MODULO 2^N-1 ADDERS
// By : G. Dimitrakopoulos, D. G. Nikolos, H. T. Vergos, D. Nikolos , C. Efstathiou
// Using Ling recursion

// 8-bit Modulo adder 
//--------------------------------------------------------------------------------------

// Stage 1
module L8_stage_1(a, b, g, p, H1, Pr1);
    
    input [7:0]a;
    input [7:0]b;
    output [7:0]g;
    output [7:0]p;
    output [7:0]H1;  //Ling-carry
    output [7:0]Pr1; // Group propagate
    
    assign g[7:0] = a[7:0] & b[7:0] ;
    assign p[7:0] = a[7:0] | b[7:0] ;
    
    assign H1[7:0] = g[7:0] | {g[6:0],g[7]} ;
    assign Pr1[7:0] = p[7:0] & {p[6:0],p[7]} ;
    
endmodule


// Stage 2
module L8_stage_2(H1, Pr1, H2, Pr2);
    
    input [7:0]H1;
    input [7:0]Pr1;
    output [7:0]H2;
    output [7:0]Pr2;
    
    assign H2[7:0] = H1[7:0] | {Pr1[6:0],Pr1[7]} & {H1[5:0],H1[7:6]} ;
    assign Pr2[7:0] = Pr1[7:0] & {Pr1[5:0],Pr1[7:6]};
    
endmodule


// Stage 3
module L8_stage_3(H2, Pr2, H3);
    
    input [7:0]H2;
    input [7:0]Pr2;
    output [7:0]H3;

    
    assign H3[7:0] = H2[7:0] | {Pr2[6:0],Pr2[7]} & {H2[3:0],H2[7:4]} ;
    
endmodule


// Stage 4
module L8_adder(a, b, sum);

    input [7:0]a;
    input [7:0]b;
    output [7:0]sum;
    
    wire [7:0]g;
    wire [7:0]p;
    wire [7:0]H1;
    wire [7:0]Pr1;
    wire [7:0]H2;
    wire [7:0]Pr2;
    wire [7:0]H3;
    
    L8_stage_1 CUT1(a, b, g, p, H1, Pr1);
    L8_stage_2 CUT2(H1, Pr1, H2, Pr2);
    L8_stage_3 CUT3(H2, Pr2, H3);
    
    assign sum[7:0] = ~{H3[6:0],H3[7]} & (a[7:0]^b[7:0]) | {H3[6:0],H3[7]} & (a[7:0]^b[7:0]^{p[6:0],p[7]});
    //assign sum[7:0] = {H3[6:0],H3[7]} ? a[7:0]^b[7:0]^{p[6:0],p[7]} : a[7:0]^b[7:0] ;


endmodule




// 8-bit Modulo adder 2x4
//--------------------------------------------------------------------------------------


// Stage 1
module L2x4_stage_1(a, b, g, p, x);
    
    input [7:0]a;
    input [7:0]b;
    output [7:0]g;
    output [7:0]p;
    output [7:0]x;
    
    assign g[7:0] = a[7:0] & b[7:0] ;
    assign p[7:0] = a[7:0] | b[7:0] ;
    assign x[7:0] = a[7:0] ^ b[7:0] ;
    

    
endmodule

// Stage 2
module L2x4_stage_2(g, p, H1, Pr1);
    input [7:0]g;
    input [7:0]p;    
    output [7:0]H1;
    output [7:0]Pr1;

    assign H1[7:0] = g[7:0] | {g[6:0],g[7]} ;
    assign Pr1[7:0] = p[7:0] & {p[6:0],p[7]} ;
    
endmodule

// Stage 2
module L2x4_stage_3(H1, Pr1, H2);
    
    input [7:0]H1;
    input [7:0]Pr1;
    output [7:0]H2;

    
    assign H2[7:0] = H1[7:0] | 
                     {Pr1[6:0],Pr1[7]} & {H1[5:0],H1[7:6]} |
                     {Pr1[6:0],Pr1[7]} & {Pr1[4:0],Pr1[7:5]} & {H1[3:0],H1[7:4]} |
                     {Pr1[6:0],Pr1[7]} & {Pr1[4:0],Pr1[7:5]} & {Pr1[2:0],Pr1[7:3]} & {H1[1:0],H1[7:2]} ;

    
endmodule


// Stage 3
module L2x4_adder(a, b, sum);

    input [7:0]a;
    input [7:0]b;
    output [7:0]sum;
    
    wire [7:0]g;
    wire [7:0]p;
    wire [7:0]x;
    wire [7:0]H1;
    wire [7:0]Pr1;
    wire [7:0]H2;

    L2x4_stage_1 CUT1(a, b, g, p, x);
    L2x4_stage_2 CUT2(g, p, H1, Pr1);
    L2x4_stage_3 CUT3(H1, Pr1, H2);

    
    assign sum[7:0] = ~{H2[6:0],H2[7]} & x[7:0] | {H2[6:0],H2[7]} & (x[7:0]^{p[6:0],p[7]});



endmodule