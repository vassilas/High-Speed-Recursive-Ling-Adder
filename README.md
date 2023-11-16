
# High speed recursive Ling mod 2^n-1 binary Adder

In this work, a new 
implementation of modulo adders 2n − 1 is presended. Techniques and architectures that have been proposed in the past, 
either directly concern the balance adders, or more generally the adders, combine to develop the new design. 
Specifically and comprehensively,  models proposed by Jackson and Talwar were put in use, concerning the
generalization of the factorization introduced by H. Ling. Applying these logic functions to
a topology that favors prefix levels, and the final result was achieved. The adders that
developed were compared with the most efficient topologies in terms of speed, area and consumption
energy, and the results are quite promising. In particular in theoretical specifications the delay of
of new adders is noticeably smaller.

<div align="center">
    <img src="https://raw.githubusercontent.com/vassilas/THESIS_DOC/master/Pictures/2%5E8-1_new_structure.png" width=40% />
</div>

link for the documentation in greek ( [PDF link](https://github.com/vassilas/High-Speed-Recursive-Ling-Adder/blob/master/doc/Thesis.pdf) )






## Tools
1. HDL Simulator (Modelsim , VCS )
2. Design Compiler from Synopsys
3. Python for Verilog code generation
4. Verilog as HDL


    
    
       
--------------------------------------------------------------------------------
## Project Directories
--------------------------------------------------------------------------------
    doc/                        ---> Documentation
        Pictures/               ---> Pictures from Visio Diagrams 
                                     used in Documentation
        Presentation/           ---> Presentation Files
        Private/                ---> Pdf, Visio Diagrams, Notes
    CodeGen/                    ---> Python Code Generator source and
                                     configuration files
        Jackson_functions/      ---> Unfinished Project for automative
                                     designing of Jackson Adders
    Private/                    ---> Papers, Books, Documentations
                                     and more that has been studies for
                                     the purposes of this project
    sim/                        ---> Simulation source files 
                                     and Makefile for VCS tool simulation
    src/                        ---> The source verilog codes for the adders
                                     The adders which are not contained in any
                                     subdirectory are not node adders
        node_Adders             ---> Source code of node adders sparse-1
                                     AND the node_modules.v file wich contain
                                     the description of all node (even for sparse)
        sparse_Adders           ---> Source of sparse-2 node Adders
        sparse4_Adders          ---> Source of sparse-4 node Adders
    syn/                        ---> synthesis files
        scipts/                 ---> Design Compile Topographical Synthesis script
        
        
        
        
             

## Documentation
- Documentation is writed using LaTeX --> [LINK](https://github.com/vassilas/THESIS_DOC)
- link for the documentation in greek ([PDF link](https://github.com/vassilas/High-Speed-Recursive-Ling-Adder/blob/master/doc/Thesis.pdf))


    
    

## Simulation
How to run simulation:
*NOTE : Simulation Makefile is build for VCS Simulator

run:
```SH
> cd sim/
> make all_node
> make all_node_sparse2
> make all_node_sparse4
```
*NOTE : Edit VCS_FLAGS variable in Makefile if you want other warning
        reports or any other parameter.
        Currently is set to report any kind of error or warning
        ( -timescale is not needed )

            
            
            
            

## Code Generator with python
    User need to edit the configuration files or make a new one
    
    How to run:
        > python <configuration_file> <arg1> <arg2> ...
        
        python3 P8_adder.py p 2 # arg[1] = P for prefix , arg[2] = 2 for spase-2
        
        sparse-1 example :
            python CodeGen/J8_adder.py j 0      > J8_node_adder.v
            python CodeGen/J64_adder.py j 0     > J64_node_adder.v
            python CodeGen/J16_adder.py j 0     > J16_node_adder.v
            python CodeGen/J32_adder.py j 0     > J32_node_adder.v
            python CodeGen/L8_adder.py l 0      > L8_node_adder.v
            python CodeGen/L16_adder.py l 0     > L16_node_adder.v
            python CodeGen/L32_adder.py l 0     > L32_node_adder.v
            python CodeGen/L64_adder.py l 0     > L64_node_adder.v
            python CodeGen/P64_adder.py p 0     > P64_node_adder.v
            python CodeGen/P32_adder.py p 0     > P32_node_adder.v
            python CodeGen/P16_adder.py p 0     > P16_node_adder.v
            python CodeGen/P8_adder.py p 0      > P8_node_adder.v
            python CodeGen/J4x4x2_32_adder.py j 0 > J4x4x2_32_node_adder.v
        sparse-2 example :
            python CodeGen/P16_adder.py p 2 > P16_node_adder.v
            python CodeGen/L16_adder.py l 2 > L16_node_adder.v
            python CodeGen/J16_adder.py j 2 > J16_node_adder.v
            python CodeGen/P32_adder.py p 2 > P32_node_adder.v
            python CodeGen/L32_adder.py l 2 > L32_node_adder.v
            python CodeGen/J32_adder.py j 2 > J32_node_adder.v
            python CodeGen/P64_adder.py p 2 > P64_node_adder.v
            python CodeGen/L64_adder.py l 2 > L64_node_adder.v
            python CodeGen/J64_adder.py j 2 > J64_node_adder.v
        sparse-4 example :  
            python CodeGen/P16_adder.py p 4 > P16_node_adder.v
            python CodeGen/P32_adder.py p 4 > P32_node_adder.v
            python CodeGen/P64_adder.py p 4 > P64_node_adder.v
            python CodeGen/L16_adder.py l 4 > L16_node_adder.v
            python CodeGen/L32_adder.py l 4 > L32_node_adder.v
            python CodeGen/L64_adder.py l 4 > L64_node_adder.v
            python CodeGen/J16_adder.py j 4 > J16_node_adder.v
            python CodeGen/J32_adder.py j 4 > J32_node_adder.v
            python CodeGen/J64_adder.py j 4 > J64_node_adder.v    




        
## Synthesis
*NOTE : You need PROJECT_DIR/lib/<cell library> files to install
        and reconfigure the PROJECT_DIR/syn/.synopsys_dc.setup file.
        /lib directory in not contained.

RUN:
```SH
> cd syn/
> make sparse_topo
```