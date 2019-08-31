import sys
import Basic_prints
# from Global import *

# GLOBAL VARIABLES
WIDTH = 16


# PRINT INIT MODULE
Basic_prints._init_adder(WIDTH,"J")

Basic_prints._wire(WIDTH,"g")
Basic_prints._wire(WIDTH,"p")
Basic_prints._wire(WIDTH,"x")
Basic_prints._wire(WIDTH,"R1")
Basic_prints._wire(WIDTH,"R2")
Basic_prints._wire(WIDTH,"Q1")
Basic_prints._wire(WIDTH,"D")

Basic_prints._gpx(WIDTH)
Basic_prints._4g2p_R4(WIDTH,"R1")
Basic_prints._4p_Q4(WIDTH,"Q1")
Basic_prints._4R2Q_R4(WIDTH,0,"R1","Q1","R2",4)
Basic_prints._D16("R1","Q1")

if int(sys.argv[2]) == 0 :
    Basic_prints._Jsum(WIDTH,"R2","D")
elif int(sys.argv[2]) == 2 :
    Basic_prints._Jsum_sparse2(WIDTH,"R2","D")
elif int(sys.argv[2]) == 4 :
    Basic_prints._Jsum_sparse4(WIDTH,"R2","D")
    
# END
Basic_prints._end()