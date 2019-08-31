// Using Ling recursion

// 64-bit Modulo adder 
//--------------------------------------------------------------------------------------

// Stage 1
module L64_stage_1(a, b, g, p, x, xp, H1, Pr1);
    
    input [63:0]a;
    input [63:0]b;
    output [63:0]g;
    output [63:0]p;
    output [63:0]x;
    output [63:0]xp;
    output [63:0]H1;  //Ling-carry
    output [63:0]Pr1; // Group propagate
    
    assign g[63:0] = a[63:0] & b[63:0] ;
    assign p[63:0] = a[63:0] | b[63:0] ;
    assign x[63:0] = a[63:0] ^ b[63:0] ;
    assign xp[63:0] = x[63:0] ^ {p[62:0],p[63]} ;
    
    assign H1[63:0] = g[63:0] | {g[62:0],g[63]} ;
    assign Pr1[63:0] = p[63:0] & {p[62:0],p[63]} ;
    
endmodule


// Stage 2
module L64_stage_2(H1, Pr1, H2, Pr2);
    
    input [63:0]H1;
    input [63:0]Pr1;
    output [63:0]H2;
    output [63:0]Pr2;
    
    assign H2[63:0] = H1[63:0] | {Pr1[62:0],Pr1[63]} & {H1[61:0],H1[63:62]} ;
    assign Pr2[63:0] = Pr1[63:0] & {Pr1[61:0],Pr1[63:62]};
    
endmodule



// Stage 3
module L64_stage_3(H2, Pr2, H3, Pr3);
    
    input [63:0]H2;
    input [63:0]Pr2;
    output [63:0]H3;
    output [63:0]Pr3;

    
    assign H3[63:0] = H2[63:0] | {Pr2[62:0],Pr2[63]} & {H2[59:0],H2[63:60]} ;
    assign Pr3[63:0] = Pr2[63:0] & {Pr2[59:0],Pr2[63:60]} ;
    
endmodule




// Stage 4
module L64_stage_4(H3, Pr3, H4, Pr4);
    
    input [63:0]H3;
    input [63:0]Pr3;
    output [63:0]H4;
    output [63:0]Pr4;
    
    assign H4[63:0] = H3[63:0] | {Pr3[62:0],Pr3[63]} & {H3[55:0],H3[63:56]} ;
    assign Pr4[63:0] = Pr3[63:0] & {Pr3[55:0],Pr3[63:56]} ;
    
endmodule



// Stage 5
module L64_stage_5(H4, Pr4, H5, Pr5);
    
    input [63:0]H4;
    input [63:0]Pr4;
    output [63:0]H5;
    output [63:0]Pr5;
    
    assign H5[63:0] = H4[63:0] | {Pr4[62:0],Pr4[63]} & {H4[47:0],H4[63:48]} ;
    assign Pr5[63:0] = Pr4[63:0] & {Pr4[47:0],Pr4[63:48]} ;
    
endmodule




// Stage 6
module L64_stage_6(H5, Pr5, H6);
    
    input [63:0]H5;
    input [63:0]Pr5;
    output [63:0]H6;

    assign H6[63:0] = H5[63:0] | {Pr5[62:0],Pr5[63]} & {H5[31:0],H5[63:32]} ;

endmodule


// Stage 7
module L64_adder(a, b, sum);

    input [63:0]a;
    input [63:0]b;
    output [63:0]sum;
    
    wire [63:0]g;
    wire [63:0]p;
    wire [63:0]x;
    wire [63:0]xp;    
    wire [63:0]H1;
    wire [63:0]Pr1;
    wire [63:0]H2;
    wire [63:0]Pr2;
    wire [63:0]H3;
    wire [63:0]Pr3;
    wire [63:0]H4;
    wire [63:0]Pr4;
    wire [63:0]H5;
    wire [63:0]Pr5;
    wire [63:0]H6;
    
    L64_stage_1 CUT1(a, b, g, p, x, xp, H1, Pr1);
    L64_stage_2 CUT2(H1, Pr1, H2, Pr2);
    L64_stage_3 CUT3(H2, Pr2, H3, Pr3);
    L64_stage_4 CUT4(H3, Pr3, H4, Pr4);
    L64_stage_5 CUT5(H4, Pr4, H5, Pr5);
    L64_stage_6 CUT6(H5, Pr5, H6);

    assign sum[63:0] = ~{H5[62:0],H5[63]} & x[63:0] | {H5[62:0],H5[63]} & xp[63:0] ;

endmodule



// 64-bit Modulo adder 2x4x4x2
//--------------------------------------------------------------------------------------
// Stage 1 is the same

//Stage 2
module L2x4x4x2_stage_2(H1, Pr1, H2, Pr2);
    
    input [63:0]H1;
    input [63:0]Pr1;
    output [63:0]H2;
    output [63:0]Pr2;
    
    assign H2[63:0] =   H1[63:0] | 
                        {Pr1[62:0],Pr1[63]} & {H1[61:0],H1[63:62]} | 
                        {Pr1[62:0],Pr1[63]} & {Pr1[60:0],Pr1[63:61]} & {H1[59:0],H1[63:60]} |
                        {Pr1[62:0],Pr1[63]} & {Pr1[60:0],Pr1[63:61]} & {Pr1[58:0],Pr1[63:59]} & {H1[57:0],H1[63:58]} ;
                        
    assign Pr2[63:0] = Pr1[63:0] & {Pr1[61:0],Pr1[63:62]} & {Pr1[59:0],Pr1[63:60]} & {Pr1[57:0],Pr1[63:58]};
    
endmodule


//Stage 3
module L2x4x4x2_stage_3(H2, Pr2, H3, Pr3);
    
    input [63:0]H2;
    input [63:0]Pr2;
    output [63:0]H3;
    input [63:0]Pr3;
    
    assign H3[63:0] =   H2[63:0] | 
                        {Pr2[62:0],Pr2[63]} & {H2[55:0],H2[63:56]} | 
                        {Pr2[62:0],Pr2[63]} & {Pr2[54:0],Pr2[63:55]} & {H2[47:0],H2[63:48]} |
                        {Pr2[62:0],Pr2[63]} & {Pr2[54:0],Pr2[63:55]} & {Pr2[46:0],Pr2[63:47]} & {H2[39:0],H2[63:40]} ;
                     
    assign Pr3[63:0]= Pr2[63:0] & {Pr2[55:0],Pr2[63:56]} & {Pr2[47:0],Pr2[63:48]} & {Pr2[39:0],Pr2[63:40]} ;
                        
endmodule


//Stage 4
module L2x4x4x2_stage_4(H3, Pr3, H4);
    
    input [63:0]H3;
    input [63:0]Pr3;
    output [63:0]H4;
    
    assign H4[63:0] =   H3[63:0] | {Pr3[62:0],Pr3[63]} & {H3[31:0],H3[63:32]} ;

                        
endmodule



// Stage 5
module L2x4x4x2_adder(a, b, sum);

    input [63:0]a;
    input [63:0]b;
    output [63:0]sum;
    
    wire [63:0]g;
    wire [63:0]p;
    wire [63:0]x;
    wire [63:0]xp;
    wire [63:0]H1;
    wire [63:0]Pr1;
    wire [63:0]H2;
    wire [63:0]Pr2;
    wire [63:0]H3;
    wire [63:0]Pr3;
    wire [63:0]H4;

    
    L64_stage_1 CUT1(a, b, g, p, x, xp, H1, Pr1);
    L2x4x4x2_stage_2 CUT2(H1, Pr1, H2, Pr2);
    L2x4x4x2_stage_3 CUT3(H2, Pr2, H3, Pr3);
    L2x4x4x2_stage_4 CUT4(H3, Pr3, H4);

    assign sum[63:0] = ~{H4[62:0],H4[63]} & x[63:0] | {H4[62:0],H4[63]} & xp[63:0] ;

endmodule







// 64-bit Modulo adder 4x4x4
//--------------------------------------------------------------------------------------

// Stage 1
module L4x4x4_stage_1(a, b, g, p, x);
    
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
module L4x4x4_stage_2(g, p, H1, Pr1);


    input [63:0]g;
    input [63:0]p;    
    output [63:0]H1;
    output [63:0]Pr1;

    assign H1[63:0] =   g[63:0] |
                        {g[62:0],g[63]} |
                        {p[62:0],p[63]} & {g[61:0],g[63:62]} | 
                        {p[62:0],p[63]} & {p[61:0],p[63:62]} & {g[60:0],g[63:61]} ;
                        
    assign Pr1[63:0] =  p[63:0] & 
                        {p[62:0],p[63]} & 
                        {p[61:0],p[63:62]} &
                        {p[60:0],p[63:61]} ;     

endmodule



// Stage 3
module L4x4x4_stage_3(H1, Pr1, H2, Pr2);
    
    input [63:0]H1;
    input [63:0]Pr1;
    output [63:0]H2;
    output [63:0]Pr2;

    
    assign H2[63:0] =   H1[63:0] |
                        {Pr1[62:0],Pr1[63]} & {H1[59:0],H1[63:60]} |
                        {Pr1[62:0],Pr1[63]} & {Pr1[58:0],Pr1[63:59]} & {H1[55:0],H1[63:56]} | 
                        {Pr1[62:0],Pr1[63]} & {Pr1[58:0],Pr1[63:59]} & {Pr1[54:0],Pr1[63:55]} & {H1[51:0],H1[63:52]} ;
                        
    assign Pr2[63:0] =  Pr1[63:0] &
                        {Pr1[59:0],Pr1[63:60]} &
                        {Pr1[55:0],Pr1[63:56]} &
                        {Pr1[51:0],Pr1[63:52]}; 
    
endmodule



// Stage 4
module L4x4x4_stage_4(H2, Pr2, H3);
    
    input [63:0]H2;
    input [63:0]Pr2;
    output [63:0]H3;

    
    assign H3[63:0] =   H2[63:0] |
                        {Pr2[62:0],Pr2[63]} & {H2[47:0],H2[63:48]} |
                        {Pr2[62:0],Pr2[63]} & {Pr2[46:0],Pr2[63:47]} & {H2[31:0],H2[63:32]} | 
                        {Pr2[62:0],Pr2[63]} & {Pr2[46:0],Pr2[63:47]} & {Pr2[30:0],Pr2[63:31]} & {H2[15:0],H2[63:16]} ;

                    
endmodule




// Stage 5
module L4x4x4_adder(a, b, sum);

    input [63:0]a;
    input [63:0]b;
    output [63:0]sum;
    
    wire [63:0]g;
    wire [63:0]p;
    wire [63:0]x;
    wire [63:0]H1;
    wire [63:0]Pr1;
    wire [63:0]H2;
    wire [63:0]Pr2;
    wire [63:0]H3;


    
    L4x4x4_stage_1 CUT1(a, b, g, p, x);
    L4x4x4_stage_2 CUT2(g, p, H1, Pr1);
    L4x4x4_stage_3 CUT3(H1, Pr1, H2, Pr2);
    L4x4x4_stage_4 CUT4(H2, Pr2, H3);

    assign sum[63:0] = ~{H3[62:0],H3[63]} & x[63:0] | {H3[62:0],H3[63]} & (x[63:0]^{p[62:0],p[63]}) ;

endmodule





