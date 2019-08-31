# Spaces for in module code instead of tab
spaces = "    "


# MODULE NAMES
##########################################

# Ganarating Generate - Propagate and a XOR b = x MODULE
module_gpx = "_gpx"

module_4g2p_R4 = "_4g2p_R4"
module_4p_Q4 = "_4p_Q4"
module_4R2Q_R4 = "_4R2Q_R4"
module_D16 = "_D16"
module_Jsum = "_Jsum"
module_1R4Q_Q4 = "_1R4Q_Q4"
module_D64_1 = "_D64_1"
module_D64_2 = "_D64_2"
module_2g_R2 = "_2g_R2"
module_2p_Q2 = "_2p_Q2"

module_4g2p_H4 = "_4g2p_H4"
module_P4 = "_P4"
module_4G3P_G4 = "_4G3P_G4"
module_Lsum = "_Lsum"
module_2g_H2 = "_2g_H2"
module_2p_P2 = "_2p_P2"
module_Psum = "_Psum"
module_2g1p_G2 = "_2g1p_G2"
module_2R1Q_R2 = "_2R1Q_R2"


module_Psum_sparse2 = "_Psum_sparse2"
module_Lsum_sparse2 = "_Lsum_sparse2"
module_Jsum_sparse2 = "_Jsum_sparse2"

module_Psum_sparse4 = "_Psum_sparse4"
module_Lsum_sparse4 = "_Lsum_sparse4"
module_Jsum_sparse4 = "_Jsum_sparse4"


def r_shift(WIDTH,num):
    if num < 0:
        num = WIDTH + num
    return num