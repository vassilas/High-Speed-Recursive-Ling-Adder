# 1. _init_adder(WIDTH,arch)
# 2. _end()
# 3. _gpx(WIDTH)
# 4. _wire(WIDTH,wire)
# 5. _4g2p_R4(WIDTH,R)
# 6. _4p_Q4(WIDTH,Q)
# 7. _4R2Q_R4(WIDTH,start_index,R_in,Q_in,R_out,recursion)
# 8. _D16(R_in,Q_in)
# 9. _Jsum(WIDTH,R_in)
# 10. _1R4Q_Q4(WIDTH,Q_in,R_in,Q_out,recursion)
# 11. _D64_1(WIDTH, D)
# 12. _D64_2(WIDTH,start_index,D_in,R_in,Q_in,D_out)
# 13. _2g_R2(WIDTH,R_out)
# 14. _2p_Q2(WIDTH,Q_out)
# 15. _2R1Q_R2(WIDTH,R_in,Q_in,R_out,recursion)

import sys
from Global import *

sparse = int(sys.argv[2])
arch = sys.argv[1]



# 1.
#-----------------------------------------------------------------
def _init_adder(WIDTH,arch):
    print("module "+arch+str(WIDTH)+"_node_adder(a, b, sum);")
    print(spaces + "input ["+str(WIDTH-1)+":0]a;")
    print(spaces + "input ["+str(WIDTH-1)+":0]b;")
    print(spaces + "output ["+str(WIDTH-1)+":0]sum;")
    return



# 2.
#-----------------------------------------------------------------
def _end():
    print("")
    print("endmodule")
    return


	
# 3.
#-----------------------------------------------------------------
def _gpx(WIDTH):
    print("")
    for x in range(WIDTH):
        print(spaces+module_gpx+" "+module_gpx+"_"+str(x)\
        +"\t(a["+str(x)+"],\tb["+str(x)+"],\tg["+str(x)+"], \tp["+str(x)+"], \tx["+str(x)+"]) ;")
    return

# 4.
#-----------------------------------------------------------------
def _wire(WIDTH,wire):

    print(spaces + "wire ["+str(WIDTH-1)+":0]"+ wire +" ;")

    return



# 5.
#-----------------------------------------------------------------
def _4g2p_R4(WIDTH,R):
    print("")
    for x in range(WIDTH):
        prnt = 0
        
        g3 = x
        g2 = r_shift(WIDTH,x-1)
        g1 = r_shift(WIDTH,x-2)
        g0 = r_shift(WIDTH,x-3)
        p1 = r_shift(WIDTH,x-1)
        p0 = r_shift(WIDTH,x-2)
        R4 = x
        
        if sparse == 0:
            prnt = 1
        elif (sparse == 2) and (x%2 == 1):
            prnt = 1
        elif (sparse == 4) and (x%4 == 3):
            prnt = 1
            
        if prnt :
            print(spaces+module_4g2p_R4+" "+module_4g2p_R4+"_"+str(x)\
            +"\t( {g["+str(g3)+"],g["+str(g2)+"],g["+str(g1)+"],g["+str(g0)+"]} ,"\
            +"\t{p["+str(p1)+"],p["+str(p0)+"]} ,"\
            +"\t"+R+"["+str(R4)+"] ) ;" )
    return



# 6.
#-----------------------------------------------------------------
def _4p_Q4(WIDTH,Q):
    print("")
    for x in range(WIDTH):
        prnt = 0
        
        p3 = x
        p2 = r_shift(WIDTH,x-1)
        p1 = r_shift(WIDTH,x-2)
        p0 = r_shift(WIDTH,x-3)
        Q4 = x
        
        if sparse == 0:
            prnt = 1
        elif (sparse == 2) and (WIDTH == 64) and (x%2==0):
            prnt = 1 
        elif (sparse == 2):
            if (WIDTH == 64) :
                prnt  = (x%2==0)
            else:
                prnt  =  1
        elif (sparse == 4):
            if (WIDTH == 16) and ((x%4==3)or(x%4==2)):
                prnt = 1
            if (WIDTH == 64) and ((x%4==2)or(x%4==0)):
                prnt = 1
        
        if prnt :
            print(spaces+module_4p_Q4+" "+module_4p_Q4+"_"+str(x)\
            +"\t({p["+str(p3)+"],\tp["+str(p2)+"],\tp["+str(p1)+"],\tp["+str(p0)+"]} ,\t"\
            +Q+"["+str(Q4)+"] ) ;" )

    return



# 7.
#-----------------------------------------------------------------
def _4R2Q_R4(WIDTH,start_index,R_in,Q_in,R_out,recursion):
    print("")
    
    for x in range(WIDTH):
        
        prnt = 0
        
        R3 = x
        R2 = r_shift (WIDTH , x-(1*recursion) )
        R1 = r_shift (WIDTH , x-(2*recursion) )
        R0 = r_shift (WIDTH , x-(3*recursion) )
        R4 = x
        
        if (recursion == 2) or (recursion == 4):
            Q1 = r_shift (WIDTH , x-(1*recursion  + 1) )
            Q0 = r_shift (WIDTH , x-(2*recursion  + 1) )            
        
        elif recursion == 8:           
            Q1 = r_shift (WIDTH , x-(2*recursion  - 5) )
            Q0 = r_shift (WIDTH , x-(3*recursion  - 5) )
            
        elif recursion == 16:
            Q1 = r_shift (WIDTH , x-(1*recursion  + 5) )
            Q0 = r_shift (WIDTH , x-(2*recursion  + 5) )
                            
        
        if sparse == 0:
            prnt = 1
        if (sparse == 2) and (x%2):
            prnt = 1
        if (sparse == 4) and (x%4==3):
            prnt = 1
        
        if prnt :
            print(spaces+module_4R2Q_R4+" "+module_4R2Q_R4+"_"+str(start_index+x)\
            +"( {"+R_in+"["+str(R3)+"],"+R_in+"["+str(R2)+"],"+R_in+"["+str(R1)+"],"+R_in+"["+str(R0)+"] },"\
            +" {"+Q_in+"["+str(Q1)+"],"+Q_in+"["+str(Q0)+"]} ,"\
            +R_out+"["+str(R4)+"] ) ;" )

      
    return



# 8.
#-----------------------------------------------------------------
# D Recursion Functions , each for every Jackson Adder
def _D16(R_in,Q_in):
    print("")
    WIDTH = 16
    for x in range(WIDTH):
        prnt = 0
        
        p1 = x
        p0 = r_shift (WIDTH , x-4)

        if sparse == 0:
            prnt = 1
        if (sparse == 2) and (x%2):
            prnt = 1
        if (sparse == 4) and (x%4==3):
            prnt = 1
        
        if prnt :
            print(spaces+module_D16+" "+module_D16+"_"+str(x)\
            +"( {p["+str(p1)+"] ,p["+str(p0)+"]} ,"\
            +R_in+"["+str(x)+"],"\
            +Q_in+"["+str(x)+"],"\
            +" D["+str(x)+"] ) ;" )
    
    return



# 9.
#-----------------------------------------------------------------
# JACKSON SUM FUNCTION
def _Jsum(WIDTH,R_in,D_in):
    print("")
    for x in range(WIDTH):

        R = r_shift(WIDTH,x-1)
        D = r_shift(WIDTH,x-1)

        print(spaces+module_Jsum+" "+module_Jsum+"_"+str(x)\
        +"( "+R_in+"["+str(R)+"],"\
        +" "+D_in+"["+str(D)+"] ,"\
        +" x["+str(x)+"] ,"\
        +" sum["+str(x)+"] ) ;" )
    
    return



# 10.
#-----------------------------------------------------------------
def _1R4Q_Q4(WIDTH,Q_in,R_in,Q_out,recursion):
    print("")
    
    for x in range(WIDTH):
        prnt = 0
        
        Q3 = x
        Q2 = r_shift(WIDTH,x-(1*recursion))
        Q1 = r_shift(WIDTH,x-(2*recursion))
        Q0 = r_shift(WIDTH,x-(3*recursion))

        if (recursion == 2) or (recursion == 4):
            R0 = r_shift(WIDTH,x-(3*recursion-1))

        if sparse == 0:
            prnt = 1
        if (sparse == 2) and (x%2 == 0):
            prnt = 1   
        if (sparse == 4):
            if (WIDTH == 64):
                if (x%4 == 0)or(x%4 == 2):
                    prnt = 1 
            else :
                if (x%4 == 0):
                    prnt = 1 
                    
        if prnt :
            print(spaces+module_1R4Q_Q4+" "+module_1R4Q_Q4+"_"+str(x)\
            +"("+R_in+"["+str(R0)+"], "\
            +"{"+Q_in+"["+str(Q3)+"],"+Q_in+"["+str(Q2)+"],"+Q_in+"["+str(Q1)+"],"+Q_in+"["+str(Q0)+"]}, "\
            +Q_out+"["+str(x)+"] ) ;")
    
    
    
    return



# 11.
#-----------------------------------------------------------------
def _D64_1(WIDTH, D):
    print("")
    
    for x in range(WIDTH):
        prnt = 0
        
        g1 = x
        g0 = r_shift(WIDTH,x-1)
        p2 = x
        p1 = r_shift(WIDTH,x-1)
        p0 = r_shift(WIDTH,x-2)
        
        if sparse == 0:
            prnt = 1
        if (sparse == 2) and (x%2):
            prnt = 1        
        if (sparse == 4) and (x%4==3):
            prnt = 1
            
        if prnt :
            print(spaces+module_D64_1+" "+module_D64_1+"_"+str(x)\
            +"( {p["+str(p2)+"],p["+str(p1)+"],p["+str(p0)+"]}, "\
            +"{g["+str(g1)+"],g["+str(g0)+"]}, "\
            +D+"["+str(x)+"] ) ;")
    
    return
    


# 12.
#-----------------------------------------------------------------
def _D64_2(WIDTH,start_index,D_in,R_in,Q_in,D_out):
    print("")
    
    for x in range(WIDTH):
        prnt = 0
        
        if start_index == 0:
            Q = r_shift(WIDTH,x-1)
        elif start_index == 32:
            Q = r_shift(WIDTH,x-3)
        elif start_index == 64:
            Q = r_shift(WIDTH,x-5)
        
        if sparse == 0:
            prnt = 1
        if (sparse == 2) and (x%2):
            prnt = 1
        if (sparse == 4) and (x%4==3):
            prnt = 1 
            
        if prnt :
            print(spaces+module_D64_2+" "+module_D64_2+"_"+str(x+start_index)\
            +"("+D_in+"["+str(x)+"] ,"+R_in+"["+str(x)+"] ,"+Q_in+"["+str(Q)+"] ,"+D_out+"["+str(x)+"] ) ;")
    
    return



# 13.
#-----------------------------------------------------------------
def _2g_R2(WIDTH,R_out):
    
    print("")
    
    for x in range(WIDTH):
        
        prnt = 0
        
        g1 = x
        g0 = r_shift(WIDTH,x-1)
        
        if sparse == 0:
            prnt = 1
        if (sparse == 2) and (x%2):
            prnt = 1
        if (sparse == 4) and ((x%4==3)or(x%4==1)):
            prnt = 1    
        
        if prnt :
            print(spaces+module_2g_R2+" "+module_2g_R2+"_"+str(x)\
            +"( {g["+str(g1)+"],g["+str(g0)+"] } , "+R_out+"["+str(x)+"] ) ;" )
    
    return
    
    
    
# 14.
#-----------------------------------------------------------------
def _2p_Q2(WIDTH,Q_out):
    
    print("")
    
    for x in range(WIDTH):
        prnt = 0
        
        p1 = x
        p0 = r_shift(WIDTH,x-1)
        
        if sparse == 0:
            prnt = 1
        if (sparse == 2) and (x%2 == 0):
            prnt = 1  
        if (sparse == 4) and ((x%4==2)or(x%4 == 0)):
            prnt = 1 
            
        if prnt :        
            print(spaces+module_2p_Q2+" "+module_2p_Q2+"_"+str(x)\
            +"( {p["+str(p1)+"],p["+str(p0)+"] } , "+Q_out+"["+str(x)+"] ) ;" )
    
    return    
    
    
    
#
#
def _4g2p_H4(WIDTH,H_out):

    print("")
    
    for x in range(WIDTH):
        prnt = 0
        
        g3 = x
        g2 = r_shift(WIDTH,x-1)
        g1 = r_shift(WIDTH,x-2)
        g0 = r_shift(WIDTH,x-3)
        p1 = r_shift(WIDTH,x-1)
        p0 = r_shift(WIDTH,x-2)
        
        if sparse == 0:
            prnt = 1
        if (sparse == 2) and (x%2 == 1):
            prnt = 1
        if (sparse == 4) and (x%4 == 3):
            prnt = 1
            
        if prnt:   
            print(spaces+module_4g2p_H4+" "+module_4g2p_H4+"_"+str(x)\
            +"( {g["+str(g3)+"],g["+str(g2)+"],g["+str(g1)+"],g["+str(g0)+"]} ,"\
            +"{p["+str(p1)+"],p["+str(p0)+"]} , "+H_out+"["+str(x)+"] ) ;")

    return
    
    
    
#
#
def _P4(WIDTH,start_index,p_in,p_out,recursion):

    print("")
    
    for x in range(WIDTH):
        
        prnt = 0
        
        p3 = x
        p2 = r_shift(WIDTH,x-1*recursion)
        p1 = r_shift(WIDTH,x-2*recursion)
        p0 = r_shift(WIDTH,x-3*recursion)    
        
        if sparse == 0:
            prnt = 1
        if (sparse == 2) and (x%2 == 1) and (arch == "p"):
            prnt = 1  
        if (sparse == 2) and (x%2 == 0) and (arch == "l"):
            prnt = 1 
        if (sparse == 4):
            if (arch == "p") and (x%4==3):
                prnt = 1
            elif (arch == "l") and (x%4==2):
                prnt = 1    
        if prnt :
            print(spaces+module_P4+" "+module_P4+"_"+str(x+start_index)\
            +"( {"+p_in+"["+str(p3)+"],"+p_in+"["+str(p2)+"],"+p_in+"["+str(p1)+"],"+p_in+"["+str(p0)+"]} ,"\
            +p_out+"["+str(x)+"] ) ;")



    return



#
#
def _4G3P_G4(WIDTH,start_index,G_in,P_in,G_out,recursion,type):

    print("")
    
    for x in range(WIDTH):
        prnt = 0
        
        G3 = x
        G2 = r_shift(WIDTH,x-1*recursion)
        G1 = r_shift(WIDTH,x-2*recursion)
        G0 = r_shift(WIDTH,x-3*recursion)
        
        if type == "Ling" :
            P2 = r_shift(WIDTH,x-1)
            P1 = r_shift(WIDTH,x-1*recursion-1)
            P0 = r_shift(WIDTH,x-2*recursion-1)
        
        elif type == "Prefix" :
            P2 = r_shift(WIDTH,x)
            P1 = r_shift(WIDTH,x-1*recursion)
            P0 = r_shift(WIDTH,x-2*recursion)
        
        if sparse == 0:
            prnt = 1
        elif sparse == 2:
            if x%2 == 1 :
                prnt = 1
        elif sparse == 4:
            if x%4 == 3:
                prnt = 1
                
        if prnt :
            print(spaces+module_4G3P_G4+" "+module_4G3P_G4+"_"+str(x+start_index)\
            +"( {"+G_in+"["+str(G3)+"],"+G_in+"["+str(G2)+"],"+G_in+"["+str(G1)+"],"+G_in+"["+str(G0)+"]} ,"\
            +" {"+P_in+"["+str(P2)+"],"+P_in+"["+str(P1)+"],"+P_in+"["+str(P0)+"]} ,"+G_out+"["+str(x)+"] ) ;" )


    return



#
#
def _Lsum(WIDTH,H_in):
    print("")
    
    for x in range(WIDTH):
        
        H = r_shift(WIDTH,x-1)
        p = r_shift(WIDTH,x-1)
        
        print(spaces+module_Lsum+" "+module_Lsum+"_"+str(x)\
        +"( p["+str(p)+"] , x["+str(x)+"] , "+H_in+"["+str(H)+"] , sum["+str(x)+"]  ) ;" )
    
    
    return

    

def _2g_H2(WIDTH,H_out):
    print("")
    
    for x in range(WIDTH):   
        prnt = 0
        
        g0 = r_shift(WIDTH,x-1)
        
        if sparse == 0 :
            prnt = 1
        elif sparse == 2 :
            if x%2 == 1:
                prnt = 1
        elif sparse == 4 :
            if x%2 == 1:
                prnt = 1
                
        if prnt:
            print(spaces+module_2g_H2+" "+module_2g_H2+"_"+str(x)\
            +"( {g["+str(x)+"],g["+str(g0)+"]} , "+H_out+"["+str(x)+"] ) ;")

    return
    
    
    
def _2p_P2(WIDTH,P_out):
    print("")
    
    for x in range(WIDTH):   
        
        prnt = 0
        p0 = r_shift(WIDTH,x-1)
        
        if sparse == 0:
            prnt = 1
        elif sparse == 2:
            if arch == "p":
                if x%2 == 1 :
                    prnt = 1
            elif arch == "l":
                if x%2 == 0 :
                    prnt = 1
        elif sparse == 4:
            if (arch == "p") and (x%2 == 1):
                prnt = 1
            if (arch == "l") and (x%2 == 0):
                prnt = 1
                
        if prnt :
            print(spaces+module_2p_P2+" "+module_2p_P2+"_"+str(x)\
            +"( {p["+str(x)+"],p["+str(p0)+"]} , "+P_out+"["+str(x)+"] ) ;")
    return   


    
def _Psum(WIDTH,G_in):
    print("")
    
    for x in range(WIDTH): 
        G = r_shift(WIDTH,x-1)
        
        print(spaces+module_Psum+" "+module_Psum+"_"+str(x)\
        +"( x["+str(x)+"] , "+G_in+"["+str(G)+"] , sum["+str(x)+"] ) ;"
        
        )
    
    return


def _2g1p_G2(WIDTH,G_out):
    print("")
    
    for x in range(WIDTH): 
        prnt = 0
    
        g0 = r_shift(WIDTH,x-1)
        
        if sparse == 0 :
            prnt =1 
        elif sparse == 2 :
            if x%2 == 1 :
                prnt = 1
        elif sparse == 4 :
            if x%2 == 1 :
                prnt = 1  
                
        if prnt:
            print(spaces+module_2g1p_G2+" "+module_2g1p_G2+"_"+str(x)\
                +"( {g["+str(x)+"],g["+str(g0)+"]} , p["+str(x)+"] , "+G_out+"["+str(x)+"] ) ;")
        
    return



def _2R1Q_R2(WIDTH,start_index,R_in,Q_in,R_out,recursion):
    print("")
    
    for x in range(WIDTH):
        R0 = r_shift(WIDTH,x-1*recursion)
        if recursion == 16 :
            Q0 = r_shift(WIDTH,x-5)
    
        
        print(spaces+module_2R1Q_R2+" "+module_2R1Q_R2+"_"+str(start_index+x)\
        +"(  {"+R_in+"["+str(x)+"],"+R_in+"["+str(R0)+"]} , "+Q_in+"["+str(Q0)+"] , "+R_out+"["+str(x)+"] ) ;")
        
    return


    

def _Psum_sparse2(WIDTH, G_in):
    print("")
    
    for x in range(WIDTH): 
        G = r_shift(WIDTH,x-1)
        
        if x%2 == 0:
            print(spaces+module_Psum_sparse2+" "+module_Psum_sparse2+"_"+str(x)\
            +"( {x["+str(r_shift(WIDTH,x+1))+"],x["+str(x)+"]} , "\
            +"g["+str(x)+"] , p["+str(x)+"] , "\
            +G_in+"["+str(G)+"] , {sum["+str(r_shift(WIDTH,x+1))+"],sum["+str(x)+"]} ) ;"
        
        )
    
    return


def _Lsum_sparse2(WIDTH, H_in):
    print("")
    
    for x in range(WIDTH):
        
        H = r_shift(WIDTH,x-1)
        
        if x%2 == 0:
            print(spaces+module_Lsum_sparse2+" "+module_Lsum_sparse2+"_"+str(x)\
            +"( {x["+str(r_shift(WIDTH,x+1))+"],x["+str(x)+"]} ,"\
            +" g["+str(x)+"] , {p["+str(x)+"],p["+str(r_shift(WIDTH,x-1))+"]} , "\
            +H_in+"["+str(H)+"] , {sum["+str(r_shift(WIDTH,x+1))+"],sum["+str(x)+"]} ) ;" )
        
    
    return


def _Jsum_sparse2(WIDTH, R_in, D_in):
    print("")
    for x in range(WIDTH):

        R = r_shift(WIDTH,x-1)
        D = r_shift(WIDTH,x-1)
        
        if x%2 == 0:
            print(spaces+module_Jsum_sparse2+" "+module_Jsum_sparse2+"_"+str(x)\
            +"( g["+str(x)+"] , p["+str(x)+"] , "\
            +R_in+"["+str(R)+"],"\
            +" "+D_in+"["+str(D)+"] ,"\
            +" {x["+str(r_shift(WIDTH,x+1))+"],x["+str(x)+"]} ,"\
            +" {sum["+str(r_shift(WIDTH,x+1))+"],sum["+str(x)+"]} ) ;" )
    
    return



    
def _Psum_sparse4(WIDTH, G_in):
    print("")
    
    for x in range(WIDTH): 
        G = r_shift(WIDTH,x-1)
        
        
        sum0 = str(x)
        sum1 = str(r_shift(WIDTH,x+1))
        sum2 = str(r_shift(WIDTH,x+2))
        sum3 = str(r_shift(WIDTH,x+3))
        
        p0 = str(x)
        p1 = str(r_shift(WIDTH,x+1))
        p2 = str(r_shift(WIDTH,x+2))
        
        g0 = str(x)
        g1 = str(r_shift(WIDTH,x+1))
        g2 = str(r_shift(WIDTH,x+2))
        
        
        
        if x%4 == 0:
            print(spaces+module_Psum_sparse4+" "+module_Psum_sparse4+"_"+str(x)\
            +"( {x["+sum3+"],x["+sum2+"],x["+sum1+"],x["+sum0+"]} , "\
            +" {g["+g2+"],g["+g1+"],g["+g0+"]} ,"\
            +" {p["+p2+"],p["+p1+"],p["+p0+"]} , "\
            +G_in+"["+str(G)+"] ,"\
            +" {sum["+sum3+"],sum["+sum2+"],sum["+sum1+"],sum["+sum0+"]} ) ;"
        
        )
    
    return    
    
    
   

   
def _Lsum_sparse4(WIDTH, H_in):
    print("")
    
    for x in range(WIDTH):
        
        H = r_shift(WIDTH,x-1)
        
        sum0 = str(x)
        sum1 = str(r_shift(WIDTH,x+1))
        sum2 = str(r_shift(WIDTH,x+2))
        sum3 = str(r_shift(WIDTH,x+3))
        
        p0 = str(r_shift(WIDTH,x-1))
        p1 = str(x)
        p2 = str(r_shift(WIDTH,x+1))
        p3 = str(r_shift(WIDTH,x+2))
        
        if x%4 == 0:
            print(spaces+module_Lsum_sparse4+" "+module_Lsum_sparse4+"_"+str(x)\
            +"( {x["+sum3+"],x["+sum2+"],x["+sum1+"],x["+sum0+"]} ,"\
            +" {g["+sum2+"],g["+sum1+"],g["+sum0+"]} ,"\
            +"{p["+p3+"],p["+p2+"],p["+p1+"],p["+p0+"]} , "\
            +H_in+"["+str(H)+"] , "\
            +"{sum["+sum3+"],sum["+sum2+"],sum["+sum1+"],sum["+sum0+"]} ) ;" )
        
     
    
    return   
    

    
    
def _Jsum_sparse4(WIDTH, R_in, D_in):
    print("")
    for x in range(WIDTH):

        R = r_shift(WIDTH,x-1)
        D = r_shift(WIDTH,x-1)
        
        sum0 = str(x)
        sum1 = str(r_shift(WIDTH,x+1))
        sum2 = str(r_shift(WIDTH,x+2))
        sum3 = str(r_shift(WIDTH,x+3))
        
        if x%4 == 0:
            print(spaces+module_Jsum_sparse4+" "+module_Jsum_sparse4+"_"+str(x)\
            +"( {g["+sum2+"],g["+sum1+"],g["+sum0+"]} ,"\
            +" {p["+sum2+"],p["+sum1+"],p["+sum0+"]} , "\
            +R_in+"["+str(R)+"],"\
            +" "+D_in+"["+str(D)+"] ,"\
            +" {x["+sum3+"],x["+sum2+"],x["+sum1+"],x["+sum0+"]} ,"\
            +" {sum["+sum3+"],sum["+sum2+"],sum["+sum1+"],sum["+sum0+"]} ) ;" )
    
    return    
    
    
    
    
    
    
    