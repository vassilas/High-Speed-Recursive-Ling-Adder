from Class import _RQ


def _Q_recursion_2(Q_in):    
    
    #
    # ----------------------------------------------------
    start = Q_in.start
    superscript = Q_in.start - (Q_in.end - 1) + Q_in.superscript
    end = Q_in.end - ( Q_in.start - Q_in.end )
    
    Q_out_1 = _RQ( start, superscript, end )
    
    
    # ----------------------------------------------------
    # ----------------------------------------------------
    # ----------------------------------------------------
    
    #
    # ----------------------------------------------------
    # start = Q_in.start
    superscript = Q_in.superscript
    # end = Q_in.end - ( Q_in.start - Q_in.end )
    
    Q_out_2 = _RQ( start, superscript, end )
    
    #
    # ----------------------------------------------------
    start = Q_in.start - Q_in.superscript
    superscript = Q_in.start - (Q_in.end - 1) - Q_in.superscript
    end = Q_in.end - Q_in.superscript
    
    R_out_2 = _RQ( start, superscript, end )
    
    
    return [ Q_out_1 , Q_out_2 , R_out_2]



    

def _Q_recursion_4(Q_in):
    
    start0 = Q_in.start
    start1 = Q_in.end - 1
    start2 = Q_in.end - 2 -   (Q_in.start - Q_in.end)
    start3 = Q_in.end - 3 - 2*(Q_in.start - Q_in.end)
    
    end0 = Q_in.end
    end1 = start2 + 1
    end2 = start3 + 1
    end3 = start3 - (Q_in.start - Q_in.end)
    
    #
    # ----------------------------------------------------
    start = Q_in.start
    superscript = Q_in.superscript
    end = end3
    
    Q_out_1 = _RQ( start, superscript, end )
    
    #
    # ----------------------------------------------------
    start = start0 - Q_in.superscript
    superscript = start0 - start1 - Q_in.superscript
    end = end0 - - Q_in.superscript
    
    R_out_1 = _RQ( start, superscript, end )
    
    
    # ----------------------------------------------------
    # ----------------------------------------------------
    # ----------------------------------------------------
    
    #
    # ----------------------------------------------------
    start = Q_in.start
    superscript = start0 - start1 + Q_in.superscript
    end = end3
    
    Q_out_2 = _RQ( start, superscript, end )
    
    #
    # ----------------------------------------------------
    start = start1 - Q_in.superscript
    superscript = start1 - Q_in.superscript - start2 
    end = end1 - Q_in.superscript
    
    R_out_2 = _RQ( start, superscript, end )
    
    
    # ----------------------------------------------------
    # ----------------------------------------------------
    # ----------------------------------------------------
    
    #
    # ----------------------------------------------------
    start = Q_in.start
    superscript = start0 - start2 + Q_in.superscript
    end = end3
    
    Q_out_3 = _RQ( start, superscript, end )
    
    #
    # ----------------------------------------------------
    start = start2 - Q_in.superscript
    superscript = start2 - Q_in.superscript - start3 
    end = end2 - Q_in.superscript
    
    R_out_3 = _RQ( start, superscript, end )
    
    
    # ----------------------------------------------------
    # ----------------------------------------------------
    # ----------------------------------------------------
    
    #
    # ----------------------------------------------------
    start = Q_in.start
    superscript = start0 - start3 + Q_in.superscript
    end = end3
    
    Q_out_4 = _RQ( start, superscript, end )
    
    
    
    return [ Q_out_1 , R_out_1 , Q_out_2 , R_out_2 , Q_out_3 , R_out_3 , Q_out_4 ]
    