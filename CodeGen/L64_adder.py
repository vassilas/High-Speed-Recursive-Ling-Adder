import sys
import Basic_prints
# from Global import *

# GLOBAL VARIABLES
WIDTH = 64

# PRINT INIT MODULE
Basic_prints._init_adder(WIDTH,"L")

# WIRES
Basic_prints._wire(WIDTH,"g")
Basic_prints._wire(WIDTH,"p")
Basic_prints._wire(WIDTH,"x")
Basic_prints._wire(WIDTH,"H1")
Basic_prints._wire(WIDTH,"H2")
Basic_prints._wire(WIDTH,"H3")
Basic_prints._wire(WIDTH,"Pr1")
Basic_prints._wire(WIDTH,"Pr2")

Basic_prints._gpx(WIDTH)
Basic_prints._4g2p_H4(WIDTH,"H1")
Basic_prints._P4(WIDTH,0,"p","Pr1",1)
Basic_prints._4G3P_G4(WIDTH,0,"H1","Pr1","H2",4,"Ling")
Basic_prints._P4(WIDTH,64,"Pr1","Pr2",4)
Basic_prints._4G3P_G4(WIDTH,64,"H2","Pr2","H3",16,"Ling")
if int(sys.argv[2]) == 0 :
    Basic_prints._Lsum(WIDTH,"H3")
elif int(sys.argv[2]) == 2 :
    Basic_prints._Lsum_sparse2(WIDTH,"H3")
elif int(sys.argv[2]) == 4 :
    Basic_prints._Lsum_sparse4(WIDTH,"H3")
    
# END
Basic_prints._end()