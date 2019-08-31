import Basic_prints
# from Global import *

# GLOBAL VARIABLES
WIDTH = 32


# PRINT INIT MODULE
Basic_prints._init_adder(WIDTH,"J4x4x2_")


Basic_prints._wire(WIDTH,"g")
Basic_prints._wire(WIDTH,"p")
Basic_prints._wire(WIDTH,"x")
Basic_prints._wire(WIDTH,"R1")
Basic_prints._wire(WIDTH,"R2")
Basic_prints._wire(WIDTH,"R3")
Basic_prints._wire(WIDTH,"Q1")
Basic_prints._wire(WIDTH,"Q2")
Basic_prints._wire(WIDTH,"D1")
Basic_prints._wire(WIDTH,"D")


Basic_prints._gpx(WIDTH)
Basic_prints._4g2p_R4(WIDTH,"R1")
Basic_prints._4p_Q4(WIDTH,"Q1")
Basic_prints._4R2Q_R4(WIDTH,0,"R1","Q1","R2",4)
Basic_prints._1R4Q_Q4(WIDTH,"Q1","R1","Q2",4)
Basic_prints._2R1Q_R2(WIDTH,0,"R2","Q2","R3",16)
Basic_prints._D64_1(WIDTH,"D1")
Basic_prints._D64_2(WIDTH,0,"D1","R1","Q1","D")
Basic_prints._Jsum(WIDTH,"R3","D")

# END
Basic_prints._end()