/*module mod_adder #(parameter WIDTH = 8)(a,b,sum);

    input [WIDTH-1:0]a;
    input [WIDTH-1:0]b;
    output [WIDTH-1:0]sum;
    
    wire [WIDTH:0]semi_sum;
    wire [WIDTH-1:0]semi_add;    

    assign semi_sum = a + b ; 
    assign semi_add = {63'h0,semi_sum[WIDTH]} ;
    assign sum = semi_sum[WIDTH-1:0] + semi_add ;

endmodule*/

module mod8_adder(a,b,sum);
    
    parameter WIDTH = 8 ;
    
    input [WIDTH-1:0]a;
    input [WIDTH-1:0]b;
    output [WIDTH-1:0]sum;
    
    wire [WIDTH:0]semi_sum;
    wire [WIDTH-1:0]semi_add;    

    assign semi_sum = a + b ; 
    assign semi_add = {7'h0,semi_sum[WIDTH]} ;
    assign sum = semi_sum[WIDTH-1:0] + semi_add ;

endmodule



module mod16_adder(a,b,sum);

    parameter WIDTH = 16 ;
    
    input [WIDTH-1:0]a;
    input [WIDTH-1:0]b;
    output [WIDTH-1:0]sum;
    
    wire [WIDTH:0]semi_sum;
    wire [WIDTH-1:0]semi_add;    

    assign semi_sum = a + b ; 
    assign semi_add = {15'h0,semi_sum[WIDTH]} ;
    assign sum = semi_sum[WIDTH-1:0] + semi_add ;

endmodule



module mod32_adder(a,b,sum);

    parameter WIDTH = 32 ;

    input [WIDTH-1:0]a;
    input [WIDTH-1:0]b;
    output [WIDTH-1:0]sum;
    
    wire [WIDTH:0]semi_sum;
    wire [WIDTH-1:0]semi_add;    

    assign semi_sum = a + b ; 
    assign semi_add = {31'h0,semi_sum[WIDTH]} ;
    assign sum = semi_sum[WIDTH-1:0] + semi_add ;

endmodule



module mod64_adder(a,b,sum);

    parameter WIDTH = 64 ;

    input [WIDTH-1:0]a;
    input [WIDTH-1:0]b;
    output [WIDTH-1:0]sum;
    
    wire [WIDTH:0]semi_sum;
    wire [WIDTH-1:0]semi_add;    

    assign semi_sum = a + b ; 
    assign semi_add = {62'h0,semi_sum[WIDTH]} ;
    assign sum = semi_sum[WIDTH-1:0] + semi_add ;

endmodule