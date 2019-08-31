// Using Ling recursion

// 32-bit Modulo adder 
//--------------------------------------------------------------------------------------

// Stage 1
module L32_stage_1(a, b, g, p, x, xp, H1, Pr1);
    
    input [31:0]a;
    input [31:0]b;
    output [31:0]g;
    output [31:0]p;
    output [31:0]x;
    output [31:0]xp;     
    output [31:0]H1;  //Ling-carry
    output [31:0]Pr1; // Group propagate
    
    assign g[31:0] = a[31:0] & b[31:0] ;
    assign p[31:0] = a[31:0] | b[31:0] ;
    assign x[31:0] = a[31:0] ^ b[31:0] ;
    assign xp[31:0] = x[31:0] ^ {p[30:0],p[31]} ;    
    
    assign H1[31:0] = g[31:0] | {g[30:0],g[31]} ;
    assign Pr1[31:0] = p[31:0] & {p[30:0],p[31]} ;
    
endmodule


// Stage 2
module L32_stage_2(H1, Pr1, H2, Pr2);
    
    input [31:0]H1;
    input [31:0]Pr1;
    output [31:0]H2;
    output [31:0]Pr2;
    
    assign H2[31:0] = H1[31:0] | {Pr1[30:0],Pr1[31]} & {H1[29:0],H1[31:30]} ;
    assign Pr2[31:0] = Pr1[31:0] & {Pr1[29:0],Pr1[31:30]};
    
endmodule


// Stage 3
module L32_stage_3(H2, Pr2, H3, Pr3);
    
    input [31:0]H2;
    input [31:0]Pr2;
    output [31:0]H3;
    output [31:0]Pr3;

    
    assign H3[31:0] = H2[31:0] | {Pr2[30:0],Pr2[31]} & {H2[27:0],H2[31:28]} ;
    assign Pr3[31:0] = Pr2[31:0] & {Pr2[27:0],Pr2[31:28]} ;
    
endmodule


// Stage 4
module L32_stage_4(H3, Pr3, H4, Pr4);
    
    input [31:0]H3;
    input [31:0]Pr3;
    output [31:0]H4;
    output [31:0]Pr4;
    
    assign H4[31:0] = H3[31:0] | {Pr3[30:0],Pr3[31]} & {H3[23:0],H3[31:24]} ;
    assign Pr4[31:0] = Pr3[31:0] & {Pr3[23:0],Pr3[31:24]} ;
    
endmodule


// Stage 5
module L32_stage_5(H4, Pr4, H5);
    
    input [31:0]H4;
    input [31:0]Pr4;
    output [31:0]H5;
    
    assign H5[31:0] = H4[31:0] | {Pr4[30:0],Pr4[31]} & {H4[15:0],H4[31:16]} ;

endmodule


// Stage 6
module L32_adder(a, b, sum);

    input [31:0]a;
    input [31:0]b;
    output [31:0]sum;
    
    wire [31:0]g;
    wire [31:0]p;
    wire [31:0]x;
    wire [31:0]xp;
    wire [31:0]H1;
    wire [31:0]Pr1;
    wire [31:0]H2;
    wire [31:0]Pr2;
    wire [31:0]H3;
    wire [31:0]Pr3;
    wire [31:0]H4;
    wire [31:0]Pr4;
    wire [31:0]H5;

    L32_stage_1 CUT1(a, b, g, p, x, xp, H1, Pr1);
    L32_stage_2 CUT2(H1, Pr1, H2, Pr2);
    L32_stage_3 CUT3(H2, Pr2, H3, Pr3);
    L32_stage_4 CUT4(H3, Pr3, H4, Pr4);
    L32_stage_5 CUT5(H4, Pr4, H5);
    
    
   assign sum[31:0] = ~{H5[30:0],H5[31]} & x[31:0] | {H5[30:0],H5[31]} & xp[31:0];
   
    
endmodule




// 32-bit Modulo adder 2x4x4
//--------------------------------------------------------------------------------------
// Stage 1
module L2x4x4_stage_1(a, b, g, p, x);
    
    input [31:0]a;
    input [31:0]b;
    output [31:0]g;
    output [31:0]p;
    output [31:0]x;

    
    assign g[31:0] = a[31:0] & b[31:0] ;
    assign p[31:0] = a[31:0] | b[31:0] ;
    assign x[31:0] = a[31:0] ^ b[31:0] ;
    
endmodule


//Stage 2
module L2x4x4_stage_2(g, p, H1, Pr1);
    input [31:0]g;
    input [31:0]p;    
    output [31:0]H1;
    output [31:0]Pr1;

    assign H1[31:0] = g[31:0] | {g[30:0],g[31]} ;
    assign Pr1[31:0] = p[31:0] & {p[30:0],p[31]} ;    

    
endmodule


//Stage 3
module L2x4x4_stage_3(H1, Pr1, H2, Pr2);
    
    input [31:0]H1;
    input [31:0]Pr1;
    output [31:0]H2;
    output [31:0]Pr2;
    
    assign H2[31:0] =   H1[31:0] | 
                        {Pr1[30:0],Pr1[31]} & {H1[29:0],H1[31:30]} | 
                        {Pr1[30:0],Pr1[31]} & {Pr1[28:0],Pr1[31:29]} & {H1[27:0],H1[31:28]} |
                        {Pr1[30:0],Pr1[31]} & {Pr1[28:0],Pr1[31:29]} & {Pr1[26:0],Pr1[31:27]} & {H1[25:0],H1[31:26]} ;
                        
    assign Pr2[31:0] = Pr1[31:0] & {Pr1[29:0],Pr1[31:30]} & {Pr1[27:0],Pr1[31:28]} & {Pr1[25:0],Pr1[31:26]};
    
endmodule



//Stage 4
module L2x4x4_stage_4(H2, Pr2, H3);
    
    input [31:0]H2;
    input [31:0]Pr2;
    output [31:0]H3;
    
    assign H3[31:0] =   H2[31:0] | 
                        {Pr2[30:0],Pr2[31]} & {H2[23:0],H2[31:24]} | 
                        {Pr2[30:0],Pr2[31]} & {Pr2[22:0],Pr2[31:23]} & {H2[15:0],H2[31:16]} |
                        {Pr2[30:0],Pr2[31]} & {Pr2[22:0],Pr2[31:23]} & {Pr2[14:0],Pr2[31:15]} & {H2[7:0],H2[31:8]} ;
                        
endmodule



// Stage 5
module L2x4x4_adder(a, b, sum);

    input [31:0]a;
    input [31:0]b;
    output [31:0]sum;
    
    wire [31:0]g;
    wire [31:0]p;
    wire [31:0]x;
    wire [31:0]xp;
    wire [31:0]H1;
    wire [31:0]Pr1;
    wire [31:0]H2;
    wire [31:0]Pr2;
    wire [31:0]H3;

    L2x4x4_stage_1 CUT1(a, b, g, p, x);
    L2x4x4_stage_2 CUT2(g, p, H1, Pr1);
    L2x4x4_stage_3 CUT3(H1, Pr1, H2, Pr2);
    L2x4x4_stage_4 CUT4(H2, Pr2, H3);
    
    
   assign sum[31:0] = ~{H3[30:0],H3[31]} & x[31:0] | {H3[30:0],H3[31]} & (x[31:0]^{p[30:0],p[31]});
   
    
endmodule




