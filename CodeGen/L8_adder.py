import sys
import Basic_prints
# from Global import *

# GLOBAL VARIABLES
WIDTH = 8


# PRINT INIT MODULE
Basic_prints._init_adder(WIDTH,"L")

# WIRES
Basic_prints._wire(WIDTH,"g")
Basic_prints._wire(WIDTH,"p")
Basic_prints._wire(WIDTH,"x")
Basic_prints._wire(WIDTH,"H1")
Basic_prints._wire(WIDTH,"H2")
Basic_prints._wire(WIDTH,"Pr1")

Basic_prints._gpx(WIDTH)
Basic_prints._2g_H2(WIDTH,"H1")
Basic_prints._2p_P2(WIDTH,"Pr1")
Basic_prints._4G3P_G4(WIDTH,0,"H1","Pr1","H2",2,"Ling")
if int(sys.argv[2]) == 0 :
    Basic_prints._Lsum(WIDTH,"H2")
elif int(sys.argv[2]) == 2 :
    Basic_prints._Lsum_sparse2(WIDTH,"H2")
    
# END
Basic_prints._end()