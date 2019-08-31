import sys
import Basic_prints
# from Global import *

# GLOBAL VARIABLES
WIDTH = 64


# PRINT INIT MODULE
Basic_prints._init_adder(WIDTH,"J")

# WIRES
Basic_prints._wire(WIDTH,"g")
Basic_prints._wire(WIDTH,"p")
Basic_prints._wire(WIDTH,"x")
Basic_prints._wire(WIDTH,"R1")
Basic_prints._wire(WIDTH,"R2")
Basic_prints._wire(WIDTH,"R3")
Basic_prints._wire(WIDTH,"Q1")
Basic_prints._wire(WIDTH,"Q2")
Basic_prints._wire(WIDTH,"D1")
Basic_prints._wire(WIDTH,"D2")
Basic_prints._wire(WIDTH,"D3")

Basic_prints._gpx(WIDTH)
Basic_prints._4g2p_R4(WIDTH,"R1")
Basic_prints._4p_Q4(WIDTH,"Q1")
Basic_prints._4R2Q_R4(WIDTH,0,"R1","Q1","R2",4)
Basic_prints._1R4Q_Q4(WIDTH,"Q1","R1","Q2",4)
Basic_prints._4R2Q_R4(WIDTH,64,"R2","Q2","R3",16)

Basic_prints._D64_1(WIDTH,"D1")
Basic_prints._D64_2(WIDTH,0,"D1","R1","Q1","D2")
Basic_prints._D64_2(WIDTH,64,"D2","R2","Q2","D3")


if int(sys.argv[2]) == 0 :
    Basic_prints._Jsum(WIDTH,"R3","D3")
elif int(sys.argv[2]) == 2 :
    Basic_prints._Jsum_sparse2(WIDTH,"R3","D3")
elif int(sys.argv[2]) == 4 :
    Basic_prints._Jsum_sparse4(WIDTH,"R3","D3")
    
# END
Basic_prints._end()