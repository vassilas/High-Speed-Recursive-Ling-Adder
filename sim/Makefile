
VCS_FLAGS= -full64 \
	-PP \
	+lint=all \
	+v2k \
	-timescale=1ns/10ps

all: clean vcs sim

all_node: clean vcs_node sim

all_node_sparse2: clean vcs_node_sparse2 sim

all_node_sparse4: clean vcs_node_sparse4 sim

clean:
	rm -rf simv
	rm -rf csrc	
	rm -rf ucli.key	
	rm -rf simv.daidir

vcs:
	vcs $(VCS_FLAGS) \
	../src/mod_Adder.v \
	../src/J8_adder.v \
	../src/J16_adder.v \
	../src/J32_adder.v \
	../src/J64_adder.v \
	../src/L8_adder.v \
	../src/L16_adder.v \
	../src/L32_adder.v \
	../src/L64_adder.v \
	../src/P64_adder.v \
	../src/P32_adder.v \
 	../src/P16_adder.v \
 	../src/P8_adder.v \
	main_testbench.v

	
vcs_node:
	vcs $(VCS_FLAGS) \
	../src/mod_Adder.v \
	../src/node_Adders/J8_node_adder.v \
	../src/node_Adders/node_modules.v \
	../src/node_Adders/J16_node_adder.v \
	../src/node_Adders/J64_node_adder.v \
	../src/node_Adders/J32_node_adder.v \
	../src/node_Adders/L8_node_adder.v \
	../src/node_Adders/L64_node_adder.v \
	../src/node_Adders/L32_node_adder.v \
	../src/node_Adders/L16_node_adder.v \
	../src/node_Adders/P64_node_adder.v \
	../src/node_Adders/P32_node_adder.v \
	../src/node_Adders/P16_node_adder.v \
	../src/node_Adders/P8_node_adder.v \
	../src/node_Adders/J4x4x2_32_node_adder.v \
	main_node_testbench.v

vcs_node_sparse2:
	vcs $(VCS_FLAGS) \
	../src/mod_Adder.v \
	../src/node_Adders/node_modules.v \
	../src/sparse_Adders/P8_node_adder.v \
	../src/sparse_Adders/L8_node_adder.v \
	../src/sparse_Adders/J8_node_adder.v \
	../src/sparse_Adders/P16_node_adder.v \
	../src/sparse_Adders/L16_node_adder.v \
	../src/sparse_Adders/J16_node_adder.v \
	../src/sparse_Adders/P32_node_adder.v \
	../src/sparse_Adders/L32_node_adder.v \
	../src/sparse_Adders/J32_node_adder.v \
	../src/sparse_Adders/P64_node_adder.v \
	../src/sparse_Adders/L64_node_adder.v \
	../src/sparse_Adders/J64_node_adder.v \
	main_node_sparse2_testbench.v    
    
vcs_node_sparse4:
	vcs $(VCS_FLAGS) \
	../src/mod_Adder.v \
	../src/node_Adders/node_modules.v \
	../src/sparse4_Adders/P8_node_adder.v \
	../src/sparse4_Adders/P16_node_adder.v \
	../src/sparse4_Adders/P32_node_adder.v \
	../src/sparse4_Adders/P64_node_adder.v \
	../src/sparse4_Adders/L8_node_adder.v \
	../src/sparse4_Adders/L16_node_adder.v \
	../src/sparse4_Adders/L32_node_adder.v \
	../src/sparse4_Adders/L64_node_adder.v \
	../src/sparse4_Adders/J8_node_adder.v \
	../src/sparse4_Adders/J16_node_adder.v \
	../src/sparse4_Adders/J32_node_adder.v \
	../src/sparse4_Adders/J64_node_adder.v \
	main_node_sparse4_testbench.v
    
sim:
	./simv


