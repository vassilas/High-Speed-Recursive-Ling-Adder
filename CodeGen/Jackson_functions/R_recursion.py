from Class import _RQ   
import sys


def _R_recursion_2(R_in):
    
    #
    # ----------------------------------------------------
    start = R_in.start
    superscript = R_in.superscript
    end = R_in.end - (R_in.start-R_in.end + 1)
    
    R_out_1 = _RQ( start, superscript, end ) 

    #
    # ----------------------------------------------------
    start = R_in.start - R_in.superscript
    superscript = R_in.start - R_in.superscript - R_in.end - 1
    end = R_in.end - R_in.superscript
    
    Q_out_1 = _RQ(start, superscript, end)
    
    #
    # ----------------------------------------------------
    start = R_in.start
    superscript = R_in.start - ( R_in.end - 1 ) + R_in.superscript
    end = R_in.end - (R_in.start-R_in.end + 1)
    
    R_out_2 = _RQ( start, superscript, end )
    
    R_out_1.name = "R2_1"
    Q_out_1.name = "Q_1"
    R_out_2.name = "R2_2"

    
    return [ R_out_1 , Q_out_1 , R_out_2]
    
    
    
    
    
    
    
    
    
    
    
    
 
    
    
def _R_recursion_4(R_in):


    start0 = R_in.start
    start1 = R_in.end - 1
    start2 = R_in.end - 2 -   (R_in.start - R_in.end)
    start3 = R_in.end - 3 - 2*(R_in.start - R_in.end)
    
    end0 = R_in.end
    end1 = start2 + 1
    end2 = start3 + 1
    end3 = start3 - (R_in.start - R_in.end)
    
    
    #
    # ----------------------------------------------------
    start = start0
    superscript = R_in.superscript
    end = end3
    
    R_out_1 = _RQ( start, superscript, end )
    
    #
    # ----------------------------------------------------
    start = start0 - R_in.superscript
    superscript = start0 - R_in.superscript - start1
    end = end0 - R_in.superscript
    
    Q_out_1 = _RQ( start, superscript, end )
    
    
    # ----------------------------------------------------
    # ----------------------------------------------------
    # ----------------------------------------------------
    
    
    #
    # ----------------------------------------------------
    start = R_in.start
    superscript = start0 - start1 + R_in.superscript
    end = end3
    
    R_out_2 = _RQ( start, superscript, end )
    
    #
    # ----------------------------------------------------
    start = start1 - R_in.superscript
    superscript = start1 - R_in.superscript - start3
    end = end1 - R_in.superscript
    
    Q_out_2 = _RQ( start, superscript, end )
    
    
    # ----------------------------------------------------
    # ----------------------------------------------------
    # ----------------------------------------------------
    
    
    #
    # ----------------------------------------------------
    start = start0
    superscript = start0 - start2 + R_in.superscript
    end = end3
    
    R_out_3 = _RQ( start, superscript, end )
    
    #
    # ----------------------------------------------------
    start = start2 - R_in.superscript
    superscript = start2 - R_in.superscript - end2
    end = end1 - R_in.superscript
    
    Q_out_3 = _RQ( start, superscript, end )
    
    
    # ----------------------------------------------------
    # ----------------------------------------------------
    # ----------------------------------------------------
    
    
    #
    # ----------------------------------------------------
    start = start0
    superscript = start0 - start3 + R_in.superscript
    end = end3
    
    R_out_4 = _RQ( start, superscript, end )
    
    # ----------------------------------------------------
    # ----------------------------------------------------
    # ----------------------------------------------------
    
    R_out_1.name = "R4_1"
    Q_out_1.name = "Q_1"
    R_out_2.name = "R4_2"
    Q_out_2.name = "Q_2"
    R_out_3.name = "R4_3"
    Q_out_3.name = "Q_3"
    R_out_4.name = "R4_4"
    
    return [ R_out_1 , Q_out_1 , R_out_2 , Q_out_2 , R_out_3 , Q_out_3 , R_out_4]

    
    
    
    
    
    
    
    
    
# TEST
def print_RQ(in_RQ):
    print(in_RQ.name.ljust(5)+"{"+str(in_RQ.start)+","+str(in_RQ.superscript)+","+str(in_RQ.end)+"}")
   


R_in = _RQ( int(sys.argv[1]) , int(sys.argv[2]) , int(sys.argv[3]) )
if int(sys.argv[4]) == 4:
    # RECURSION - 4
    list_R4 = _R_recursion_4(R_in)
    for x in list_R4:
        print_RQ(x)
else:
    list_R2 = _R_recursion_2(R_in)
    for x in list_R2:
        print_RQ(x)
    
    
    
    
    
    
    
    
    
    
    
    
    

