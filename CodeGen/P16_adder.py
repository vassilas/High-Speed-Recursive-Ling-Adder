import sys
import Basic_prints
# from Global import *

# GLOBAL VARIABLES
WIDTH = 16

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
Basic_prints._4G3P_G4(WIDTH,0,"g","p","G1",1,"Prefix")
Basic_prints._P4(WIDTH,0,"p","Pr1",1)
Basic_prints._4G3P_G4(WIDTH,16,"G1","Pr1","G2",4,"Prefix")
if int(sys.argv[2]) == 0 :
    Basic_prints._Psum(WIDTH,"G2")
elif int(sys.argv[2]) == 2 :
    Basic_prints._Psum_sparse2(WIDTH,"G2")
elif int(sys.argv[2]) == 4 :
    Basic_prints._Psum_sparse4(WIDTH,"G2")
    
# END
Basic_prints._end()