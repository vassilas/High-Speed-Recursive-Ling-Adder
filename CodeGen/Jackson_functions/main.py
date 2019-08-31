

from Class import _RQ
from Functions import print_RQ , print_info 
from Q_recursion import _Q_recursion_4 , _Q_recursion_2
from R_recursion import _R_recursion_2 , _R_recursion_4



def main():
    
    test()
    
    
    
    
def test():    
    R_in = _RQ(15,2,12)
    Q_in = _RQ(15,3,12)
    
    list_R2 = _R_recursion_2(R_in)
    list_R4 = _R_recursion_4(R_in)
    list_Q2 = _Q_recursion_2(Q_in)
    list_Q4 = _Q_recursion_4(Q_in)
    
    print_info()

    print_RQ(R_in,"R_IN")
    print_RQ(Q_in,"Q_IN")

    print("-------------------------")
    print("R")
    print("-------------------------")
    
    print("-------------------------")
    print("-- 1xQ")
    print_RQ(list_R2[0],"R2")
    print_RQ(list_R2[1],"Q2")
    print("-- 0xQ")
    print_RQ(list_R2[2],"R2")

    print("-------------------------")
    print("-- 3xQ")
    print_RQ(list_R4[0],"R4")
    print_RQ(list_R4[1],"Q4")
    print("-- 2xQ")
    print_RQ(list_R4[2],"R4")
    print_RQ(list_R4[3],"Q4")
    print("-- 1xQ")
    print_RQ(list_R4[4],"R4")
    print_RQ(list_R4[5],"Q4")
    print("-- 0xQ")
    print_RQ(list_R4[6],"R4")

    print("-------------------------")
    print("Q")
    print("-------------------------")

    print("-- 0xR")
    print_RQ(list_Q2[0],"Q2")
    print("-- 1xR")
    print_RQ(list_Q2[1],"Q2")
    print_RQ(list_Q2[2],"R2")

    print("-------------------------")
    print("-- 3xR")
    print_RQ(list_Q4[0],"Q4")
    print_RQ(list_Q4[1],"R4")
    print("-- 2xR")
    print_RQ(list_Q4[2],"Q4")
    print_RQ(list_Q4[3],"R4")
    print("-- 1xR")
    print_RQ(list_Q4[4],"Q4")
    print_RQ(list_Q4[5],"R4")
    print("-- 0xR")
    print_RQ(list_Q4[6],"Q4")


main()


