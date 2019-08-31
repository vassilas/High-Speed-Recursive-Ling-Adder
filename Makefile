node:	
	rm -rf *.v
	python CodeGen/J8_adder.py j 0  > J8_node_adder.v
	python CodeGen/J64_adder.py j 0    > J64_node_adder.v
	python CodeGen/J16_adder.py j 0 > J16_node_adder.v
	python CodeGen/J32_adder.py j 0    > J32_node_adder.v
	python CodeGen/L8_adder.py l 0  > L8_node_adder.v
	python CodeGen/L16_adder.py l 0 > L16_node_adder.v
	python CodeGen/L32_adder.py l 0    > L32_node_adder.v
	python CodeGen/L64_adder.py l 0   > L64_node_adder.v
	python CodeGen/P64_adder.py p 0   > P64_node_adder.v
	python CodeGen/P32_adder.py p 0   > P32_node_adder.v
	python CodeGen/P16_adder.py p 0 > P16_node_adder.v
	python CodeGen/P8_adder.py p 0  > P8_node_adder.v
	python CodeGen/J4x4x2_32_adder.py j 0 > J4x4x2_32_node_adder.v
	cp -rf *.v src/node_Adders/
	cd sim && make all_node
	rm -rf *.v

sparse2:
	python CodeGen/P16_adder.py p 2 > P16_node_adder.v
	python CodeGen/L16_adder.py l 2 > L16_node_adder.v
	python CodeGen/J16_adder.py j 2 > J16_node_adder.v
	python CodeGen/P32_adder.py p 2 > P32_node_adder.v
	python CodeGen/L32_adder.py l 2 > L32_node_adder.v
	python CodeGen/J32_adder.py j 2 > J32_node_adder.v
	python CodeGen/P64_adder.py p 2 > P64_node_adder.v
	python CodeGen/L64_adder.py l 2 > L64_node_adder.v
	python CodeGen/J64_adder.py j 2 > J64_node_adder.v
	cp -rf *.v src/sparse_Adders/
	cd sim && make all_node_sparse2

sparse4:
	python CodeGen/P16_adder.py p 4 > P16_node_adder.v
	python CodeGen/P32_adder.py p 4 > P32_node_adder.v
	python CodeGen/P64_adder.py p 4 > P64_node_adder.v
	python CodeGen/L16_adder.py l 4 > L16_node_adder.v
	python CodeGen/L32_adder.py l 4 > L32_node_adder.v
	python CodeGen/L64_adder.py l 4 > L64_node_adder.v
	python CodeGen/J16_adder.py j 4 > J16_node_adder.v
	python CodeGen/J32_adder.py j 4 > J32_node_adder.v
	python CodeGen/J64_adder.py j 4 > J64_node_adder.v
	cp -rf *.v src/sparse4_Adders/
	cd sim && make all_node_sparse4
