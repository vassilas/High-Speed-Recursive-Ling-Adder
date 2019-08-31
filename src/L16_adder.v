// Using Ling recursion

// 16-bit Modulo adder 
//--------------------------------------------------------------------------------------

// Stage 1
module L16_stage_1(a, b, g, p, H1, Pr1);
    
    input [15:0]a;
    input [15:0]b;
    output [15:0]g;
    output [15:0]p;
    output [15:0]H1;  //Ling-carry
    output [15:0]Pr1; // Group propagate
    
    assign g[15:0] = a[15:0] & b[15:0] ;
    assign p[15:0] = a[15:0] | b[15:0] ;
    
    assign H1[15:0] = g[15:0] | {g[14:0],g[15]} ;
    assign Pr1[15:0] = p[15:0] & {p[14:0],p[15]} ;
    
endmodule


// Stage 2
module L16_stage_2(H1, Pr1, H2, Pr2);
    
    input [15:0]H1;
    input [15:0]Pr1;
    output [15:0]H2;
    output [15:0]Pr2;
    
    assign H2[15:0] = H1[15:0] | {Pr1[14:0],Pr1[15]} & {H1[13:0],H1[15:14]} ;
    assign Pr2[15:0] = Pr1[15:0] & {Pr1[13:0],Pr1[15:14]};
    
endmodule



// Stage 3
module L16_stage_3(H2, Pr2, H3, Pr3);
    
    input [15:0]H2;
    input [15:0]Pr2;
    output [15:0]H3;
    output [15:0]Pr3;

    
    assign H3[15:0] = H2[15:0] | {Pr2[14:0],Pr2[15]} & {H2[11:0],H2[15:12]} ;
    assign Pr3[15:0] = Pr2[15:0] & {Pr2[11:0],Pr2[15:12]} ;
    
endmodule



// Stage 4
module L16_stage_4(H3, Pr3, H4);
    
    input [15:0]H3;
    input [15:0]Pr3;
    output [15:0]H4;

    
    assign H4[15:0] = H3[15:0] | {Pr3[14:0],Pr3[15]} & {H3[7:0],H3[15:8]} ;
    
endmodule



// Stage 5
module L16_adder(a, b, sum);

    input [15:0]a;
    input [15:0]b;
    output [15:0]sum;
    
    wire [15:0]g;
    wire [15:0]p;
    wire [15:0]H1;
    wire [15:0]Pr1;
    wire [15:0]H2;
    wire [15:0]Pr2;
    wire [15:0]H3;
    wire [15:0]Pr3;
    wire [15:0]H4;

    L16_stage_1 CUT1(a, b, g, p, H1, Pr1);
    L16_stage_2 CUT2(H1, Pr1, H2, Pr2);
    L16_stage_3 CUT3(H2, Pr2, H3, Pr3);
    L16_stage_4 CUT4(H3, Pr3, H4);
    
    assign sum[15:0] = ~{H4[14:0],H4[15]} & (a[15:0]^b[15:0]) | {H4[14:0],H4[15]} & (a[15:0]^b[15:0]^{p[14:0],p[15]});

endmodule









// 16-bit Modulo adder 4x4
//--------------------------------------------------------------------------------------

// Stage 1
module L4x4_stage_1(a, b, g, p, x);
    
    input [15:0]a;
    input [15:0]b;
    output [15:0]g;
    output [15:0]p;
    output [15:0]x;
    
    assign g[15:0] = a[15:0] & b[15:0] ;
    assign p[15:0] = a[15:0] | b[15:0] ;
    assign x[15:0] = a[15:0] ^ b[15:0] ;

    
endmodule



module L4x4_stage_2(g, p, H1, Pr1);

    input [15:0]g;
    input [15:0]p;    
    output [15:0]H1;
    output [15:0]Pr1;

    assign H1[15:0] =   g[15:0] | 
                        {g[14:0],g[15]} |
                        {p[14:0],p[15]} & {g[13:0],g[15:14]} |
                        {p[14:0],p[15]} & {p[13:0],p[15:14]} & {g[12:0],g[15:13]};
    
    
    assign Pr1[15:0] =  p[15:0] & 
                        {p[14:0],p[15]} &
                        {p[13:0],p[15:14]} &
                        {p[12:0],p[15:13]} ;

    
endmodule

// Stage 2
module L4x4_stage_3(H1, Pr1, H2);
    
    input [15:0]H1;
    input [15:0]Pr1;
    output [15:0]H2;

    
    assign H2[15:0] =   H1[15:0] | 
                        {Pr1[14:0],Pr1[15]} & {H1[11:0],H1[15:12]} |
                        {Pr1[14:0],Pr1[15]} & {Pr1[10:0],Pr1[15:11]} & {H1[7:0],H1[15:8]} |
                        {Pr1[14:0],Pr1[15]} & {Pr1[10:0],Pr1[15:11]} & {Pr1[6:0],Pr1[15:7]} & {H1[3:0],H1[15:4]};

    
endmodule



// Stage 3
module L4x4_adder(a, b, sum);

    input [15:0]a;
    input [15:0]b;
    output [15:0]sum;
    
    wire [15:0]g;
    wire [15:0]p;
    wire [15:0]x;
    wire [15:0]H1;
    wire [15:0]Pr1;
    wire [15:0]H2;


    L4x4_stage_1 CUT1(a, b, g, p, x);
    L4x4_stage_2 CUT2(g, p, H1, Pr1);
    L4x4_stage_3 CUT3(H1, Pr1, H2);

    
    assign sum[15:0] = ~{H2[14:0],H2[15]} & x[15:0] | {H2[14:0],H2[15]} & (x[15:0]^{p[14:0],p[15]}) ;

endmodule








