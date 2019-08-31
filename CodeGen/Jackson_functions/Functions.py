#
# ------------------------------------------------------
# BIBLIOGRAPHY
# ------------------------------------------------------
# Implementation of Recursive Ling Adders in CMOS VLSI
# Neil Burgess
#------------------------------------------------------
#



def print_info():
    s = \
""" 
----------------------------------------------------------
                  INFO - DOCUMENTATION
----------------------------------------------------------
    G = Group Generate Signal
    P = Group Propagate Signal

    Jackson Function B:
    >       B{i:j} = g_i + g_{i-1} + . . . + g_j

    Jackson Reduced Generate - R :
    >       R{i,m,k} = B{i:i-m+1} + G{i-m:k}


    FUNCTIONS : 

    1. <LIST> _R_recursion_2( <CLASS_OBJ> ) 
        in:     <CLASS_OBJ> class _R object
        out:    <LIST> : [ R_out_1 , Q_out_1 , R_out_2 ]
                    R1 = class _R object
                    Q = class _Q object
                    R2 = class _R object
    
    2. <CLASS_OBJ> _R_recursion_4( <CLASS_OBJ> )
        in:     <CLASS_OBJ> class _R object
        out:    <LIST> : R_out_1 , Q_out_1 , R_out_2 , Q_out_2 , R_out_3 , Q_out_3 , R_out_4
    3. <CLASS_OBJ> _Q_recursion_4( <CLASS_OBJ> )
        in:     <CLASS_OBJ> 
        out:    <LIST> R_out_1 , Q_out_1 , R_out_2 , Q_out_2 , R_out_3 , Q_out_3 , R_out_4
----------------------------------------------------------
----------------------------------------------------------
"""
    print(s)
    

    
    
def print_RQ(in_RQ,name):
    
    print(name+"{"+str(in_RQ.start)+","+str(in_RQ.superscript)+","+str(in_RQ.end)+"}")
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    