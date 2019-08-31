import sys
import Basic_prints
# from Global import *

# GLOBAL VARIABLES
WIDTH = 8

# PRINT INIT MODULE
Basic_prints._init_adder(WIDTH,"P")

# WIRES
Basic_prints._wire(WIDTH,"g")
Basic_prints._wire(WIDTH,"p")
Basic_prints._wire(WIDTH,"x")
Basic_prints._wire(WIDTH,"G1")
Basic_prints._wire(WIDTH,"G2")
Basic_prints._wire(WIDTH,"Pr1")

Basic_prints._gpx(WIDTH)
Basic_prints._2g1p_G2(WIDTH,"G1")
Basic_prints._2p_P2(WIDTH,"Pr1")
Basic_prints._4G3P_G4(WIDTH,0,"G1","Pr1","G2",2,"Prefix")
if int(sys.argv[2]) == 0 :
    Basic_prints._Psum(WIDTH,"G2")
elif int(sys.argv[2]) == 2 :
    Basic_prints._Psum_sparse2(WIDTH,"G2")

# END
Basic_prints._end()