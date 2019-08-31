module main_testbench();
    
    reg [7:0]   a_8     ,b_8;
    reg [15:0]  a_16    ,b_16;
    reg [31:0]  a_32    ,b_32;
    reg [63:0]  a_64    ,b_64;
    
    wire [7:0]  sum_8   ,J_sum_8    ,L_sum_8    ,P_sum_8    ,L_sum_2x4      ,P_sum_2x4;
    wire [15:0] sum_16  ,J_sum_16   ,L_sum_16   ,P_sum_16   ,J_sum_4x4      ,L_sum_4x4
                        ,P_sum_4x4;
    wire [31:0] sum_32  ,J_sum_32   ,L_sum_32   ,P_sum_32   ,P_sum_2x4x4    ,L_sum_2x4x4;    
    wire [63:0] sum_64  ,J_sum_64   ,L_sum_64   ,P_sum_64   
                        ,P_sum_2x4x4x2   ,L_sum_2x4x4x2  ,L_sum_4x4x4  ,J_sum_4x4x4
                        ,P_sum_4x4x4; 
    

    
    wire P_compare_8;
    wire P_compare_16;
    wire P_compare_32;
    wire P_compare_64;
	
    wire J_compare_8;
    wire J_compare_16;
    wire J_compare_32;
    wire J_compare_64;
    
    wire L_compare_8;
    wire L_compare_16;
    wire L_compare_32;
    wire L_compare_64;
    
    wire P_compare_2x4x4 ;
    wire P_compare_2x4x4x2 ;
    wire P_compare_4x4x4 ;
    wire P_compare_4x4 ;
    wire P_compare_2x4 ;
    
    wire L_compare_2x4x4 ;
    wire L_compare_2x4x4x2 ;
    wire L_compare_4x4x4 ;
    wire L_compare_4x4 ;
    wire L_compare_2x4 ;
    
    wire J_compare_4x4 ;
    wire J_compare_4x4x4 ;
    
    
    integer test;
    integer P_pass_8=0;
    integer P_pass_16=0;
    integer P_pass_32=0;
    integer P_pass_64=0;
    
    integer J_pass_8=0;
    integer J_pass_16=0;
    integer J_pass_32=0;
    integer J_pass_64=0;
    
    integer L_pass_8=0;
    integer L_pass_16=0;
    integer L_pass_32=0;
    integer L_pass_64=0;    

    integer P_pass_2x4x4=0 ;
    integer P_pass_2x4x4x2=0 ;
    integer P_pass_4x4x4=0 ;
    integer P_pass_4x4=0 ;
    integer P_pass_2x4=0 ;
    
    integer L_pass_2x4x4=0 ;
    integer L_pass_2x4x4x2=0 ;
    integer L_pass_4x4x4=0 ;
    integer L_pass_4x4=0 ;
    integer L_pass_2x4=0 ;
    
    integer J_pass_4x4x4=0 ;
    integer J_pass_4x4=0 ;
    
    
    integer seed=5;

    
    mod8_adder  CUT1  (a_8   ,b_8   ,sum_8);
    mod16_adder CUT2  (a_16  ,b_16  ,sum_16);
    mod32_adder CUT3  (a_32  ,b_32  ,sum_32);
    mod64_adder CUT4  (a_64  ,b_64  ,sum_64);
  
    J8_adder  CUT5 (a_8  ,b_8   ,J_sum_8);
    J16_adder CUT6 (a_16 ,b_16  ,J_sum_16);
    J32_adder CUT7 (a_32 ,b_32  ,J_sum_32);
    J64_adder CUT8 (a_64 ,b_64  ,J_sum_64);
    
    L8_adder CUT9   (a_8  ,b_8   ,L_sum_8);
    L16_adder CUT10 (a_16 ,b_16  ,L_sum_16);
    L32_adder CUT11 (a_32 ,b_32  ,L_sum_32);
    L64_adder CUT12 (a_64 ,b_64  ,L_sum_64);

    P8_adder  CUT13 (a_8  ,b_8   ,P_sum_8);
    P16_adder CUT14 (a_16 ,b_16  ,P_sum_16);
    P32_adder CUT15 (a_32 ,b_32  ,P_sum_32);
    P64_adder CUT16 (a_64 ,b_64  ,P_sum_64); 
    
    P2x4x4_adder    CUT17(a_32 ,b_32  ,P_sum_2x4x4);
    P2x4x4x2_adder  CUT18(a_64 ,b_64  ,P_sum_2x4x4x2);
    P4x4x4_adder    CUT19(a_64 ,b_64  ,P_sum_4x4x4);
    P4x4_adder      CUT20(a_16 ,b_16  ,P_sum_4x4);
    P2x4_adder      P2x4(a_8 ,b_8  ,P_sum_2x4);
    
    L4x4_adder      CUT21(a_16 ,b_16  ,L_sum_4x4);
    L2x4x4_adder    CUT22(a_32 ,b_32  ,L_sum_2x4x4);
    L2x4x4x2_adder  CUT23(a_64 ,b_64  ,L_sum_2x4x4x2);
    L4x4x4_adder    CUT24(a_64 ,b_64  ,L_sum_4x4x4);
    L2x4_adder      CUT25(a_8  ,b_8   ,L_sum_2x4);
    
    J4x4x4_adder    CUT26(a_64 ,b_64  ,J_sum_4x4x4);
    J4x4_adder      CUT27(a_16 ,b_16  ,J_sum_4x4);  
    
    
    assign J_compare_8          = 1 ? (sum_8  == J_sum_8  )     : 0 ;
    assign J_compare_16         = 1 ? (sum_16 == J_sum_16 )     : 0 ;
    assign J_compare_32         = 1 ? (sum_32 == J_sum_32 )     : 0 ;
    assign J_compare_64         = 1 ? (sum_64 == J_sum_64 )     : 0 ;
    
    assign L_compare_8          = 1 ? (sum_8  == L_sum_8 )      : 0 ;
    assign L_compare_16         = 1 ? (sum_16 == L_sum_16 )     : 0 ;
    assign L_compare_32         = 1 ? (sum_32 == L_sum_32 )     : 0 ;
    assign L_compare_64         = 1 ? (sum_64 == L_sum_64 )     : 0 ;
    
    assign P_compare_8          = 1 ? (sum_8  == P_sum_8 )      : 0 ;
    assign P_compare_16         = 1 ? (sum_16 == P_sum_16 )     : 0 ;
    assign P_compare_32         = 1 ? (sum_32 == P_sum_32 )     : 0 ;
    assign P_compare_64         = 1 ? (sum_64 == P_sum_64 )     : 0 ;

    assign P_compare_2x4x4      = 1 ? (sum_32 == P_sum_2x4x4 )  : 0 ;
    assign P_compare_2x4x4x2    = 1 ? (sum_64 == P_sum_2x4x4x2 ): 0 ;    
    assign P_compare_4x4x4      = 1 ? (sum_64 == P_sum_4x4x4 )  : 0 ;
    assign P_compare_4x4        = 1 ? (sum_16 == P_sum_4x4 )    : 0 ;
    assign P_compare_2x4        = 1 ? (sum_8 == P_sum_2x4 )    : 0 ;
    
    assign L_compare_4x4        = 1 ? (sum_16 == L_sum_4x4 )    : 0 ;  
    assign L_compare_2x4x4      = 1 ? (sum_32 == L_sum_2x4x4 )  : 0 ;    
    assign L_compare_2x4x4x2    = 1 ? (sum_64 == L_sum_2x4x4x2 ): 0 ;
    assign L_compare_4x4x4      = 1 ? (sum_64 == L_sum_4x4x4 )  : 0 ;
    assign L_compare_2x4        = 1 ? (sum_8  == L_sum_2x4 )    : 0 ;
    
    assign J_compare_4x4x4      = 1 ? (sum_64 == J_sum_4x4x4 )  : 0 ;
    assign J_compare_4x4        = 1 ? (sum_16 == J_sum_4x4 )    : 0 ;

    
    
    initial begin

$display("-------------------------------------------------");
$display("-              SIMULATION START                 -");
$display("-------------------------------------------------");
        
        for ( test=0 ; test<10000; test=test+1)
        begin
            a_8=$random(seed);
            b_8=$random(seed);
            a_16=$random(seed);
            b_16=$random(seed);
            a_32=$random(seed);
            b_32=$random(seed);
            a_64={$random(seed),$random(seed)};
            b_64={$random(seed),$random(seed)};
            
            #5;
            

            if(J_compare_8) begin 
                J_pass_8=J_pass_8+1;
            end 
            if(L_compare_8) begin     
                L_pass_8=L_pass_8+1;
            end
            if(P_compare_8) begin     
                P_pass_8=P_pass_8+1;
            end
            if(L_compare_2x4) begin     
                L_pass_2x4=L_pass_2x4+1;
            end
            if(P_compare_2x4) begin     
                P_pass_2x4=P_pass_2x4+1;
            end
            
            //--------------------------------------
            if(J_compare_16) begin 
                J_pass_16=J_pass_16+1;
            end
            if(L_compare_16) begin     
                L_pass_16=L_pass_16+1;
            end   
            if(P_compare_16) begin     
                P_pass_16=P_pass_16+1;
            end 
            if(J_compare_4x4) begin     
                J_pass_4x4=J_pass_4x4+1;
            end
            if(L_compare_4x4) begin     
                L_pass_4x4=L_pass_4x4+1;
            end
            if(P_compare_4x4) begin     
                P_pass_4x4=P_pass_4x4+1;
            end

            
            //--------------------------------------
            if(J_compare_32) begin
                J_pass_32=J_pass_32+1;
            end
            if(L_compare_32) begin     
                L_pass_32=L_pass_32+1;
            end
            if(P_compare_32) begin     
                P_pass_32=P_pass_32+1;
            end
            if(P_compare_2x4x4) begin     
                P_pass_2x4x4=P_pass_2x4x4+1;
            end
            if(L_compare_2x4x4) begin     
                L_pass_2x4x4=L_pass_2x4x4+1;
            end
            
            //--------------------------------------
            if(J_compare_64) begin
                J_pass_64=J_pass_64+1;
            end
            if(L_compare_64) begin     
                L_pass_64=L_pass_64+1;
            end
            if(P_compare_64) begin     
                P_pass_64=P_pass_64+1;
            end 
            if(P_compare_2x4x4x2) begin     
                P_pass_2x4x4x2=P_pass_2x4x4x2+1;
            end
            if(L_compare_2x4x4x2) begin     
                L_pass_2x4x4x2=L_pass_2x4x4x2+1;
            end
            if(L_compare_4x4x4) begin     
                L_pass_4x4x4=L_pass_4x4x4+1;
            end
            if(J_compare_4x4x4) begin     
                J_pass_4x4x4=J_pass_4x4x4+1;
            end
            if(P_compare_4x4x4) begin     
                P_pass_4x4x4=P_pass_4x4x4+1;
            end            
            #195;
            /*            
            $display("J64_sum    = %h",J_sum_64);
            $display("sum_64     = %h",sum_64);
            $display("R4         = %h",CUT8.R4);
            $display("xD         = %h",CUT8.xD);
            $display("x          = %h",CUT8.x);
            $display("%s",J_compare_64?"PASS":"FAIL");
            $display("------------------------------") ;
            */
            seed = seed + 1 ;
        end
        
        $display("-------------------------------------------------------------------");
        $display(" Length   | Architecture  | Rate                        | Results");
        $display("-------------------------------------------------------------------");
        $display("Prefix Adders : ");
        $display("-------------------------------------------------------------------");
        $display(" 8  - bit | 2x2x2         | %d/%d     | %s",P_pass_8,  test, P_pass_8  == test?"PASS":"FAIL");
        $display(" 8  - bit | 2x4           | %d/%d     | %s",P_pass_2x4,  test, P_pass_2x4  == test?"PASS":"FAIL");
        $display(" 16 - bit | 2x2x2x2       | %d/%d     | %s",P_pass_16, test, P_pass_16 == test?"PASS":"FAIL");
        $display(" 16 - bit | 4x4           | %d/%d     | %s",P_pass_4x4, test, P_pass_4x4 == test?"PASS":"FAIL");
        $display(" 32 - bit | 2x2x2x2x2     | %d/%d     | %s",P_pass_32, test, P_pass_32 == test?"PASS":"FAIL");
        $display(" 32 - bit | 2x4x4         | %d/%d     | %s",P_pass_2x4x4, test, P_pass_2x4x4 == test?"PASS":"FAIL");
        $display(" 64 - bit | 2x2x2x2x2x2   | %d/%d     | %s",P_pass_64, test, P_pass_64 == test?"PASS":"FAIL");
        $display(" 64 - bit | 2x4x4x2       | %d/%d     | %s",P_pass_2x4x4x2, test, P_pass_2x4x4x2 == test?"PASS":"FAIL");
        $display(" 64 - bit | 4x4x4         | %d/%d     | %s",P_pass_4x4x4, test, P_pass_4x4x4 == test?"PASS":"FAIL");
        $display("-------------------------------------------------------------------");
        $display("Jackson Adders : ");
        $display("-------------------------------------------------------------------");
        $display(" 8  - bit | 2x4           | %d/%d     | %s",J_pass_8,  test, J_pass_8  == test?"PASS":"FAIL");
        $display(" 16 - bit | 2x4x2         | %d/%d     | %s",J_pass_16, test, J_pass_16 == test?"PASS":"FAIL");
        $display(" 16 - bit | 4x4           | %d/%d     | %s",J_pass_4x4, test, J_pass_4x4 == test?"PASS":"FAIL");
        $display(" 32 - bit | 2x4x4         | %d/%d     | %s",J_pass_32, test, J_pass_32 == test?"PASS":"FAIL");
        $display(" 64 - bit | 2x4x4x2       | %d/%d     | %s",J_pass_64, test, J_pass_64 == test?"PASS":"FAIL");
        $display(" 64 - bit | 4x4x4         | %d/%d     | %s",J_pass_4x4x4, test, J_pass_4x4x4 == test?"PASS":"FAIL");
        $display("-------------------------------------------------------------------");
        $display("Ling Adders : ");
        $display("-------------------------------------------------------------------");
        $display(" 8  - bit | 2x2x2         | %d/%d     | %s",L_pass_8,  test, L_pass_8  == test?"PASS":"FAIL");
        $display(" 8  - bit | 2x4           | %d/%d     | %s",L_pass_2x4,  test, L_pass_2x4  == test?"PASS":"FAIL");
        $display(" 16 - bit | 2x2x2x2       | %d/%d     | %s",L_pass_16, test, L_pass_16 == test?"PASS":"FAIL");
        $display(" 16 - bit | 4x4           | %d/%d     | %s",L_pass_4x4, test, L_pass_4x4 == test?"PASS":"FAIL");
        $display(" 32 - bit | 2x2x2x2x2     | %d/%d     | %s",L_pass_32, test, L_pass_32 == test?"PASS":"FAIL");
        $display(" 32 - bit | 2x4x4         | %d/%d     | %s",L_pass_2x4x4, test, L_pass_2x4x4 == test?"PASS":"FAIL");
        $display(" 64 - bit | 2x2x2x2x2x2   | %d/%d     | %s",L_pass_64, test, L_pass_64 == test?"PASS":"FAIL");
        $display(" 64 - bit | 2x4x4x2       | %d/%d     | %s",L_pass_2x4x4x2, test, L_pass_2x4x4x2 == test?"PASS":"FAIL");
        $display(" 64 - bit | 4x4x4         | %d/%d     | %s",L_pass_4x4x4, test, L_pass_4x4x4 == test?"PASS":"FAIL");        
        $display("-------------------------------------------------------------------");
        $finish;
        
    end

endmodule
