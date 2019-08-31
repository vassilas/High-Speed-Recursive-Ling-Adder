

node:
	mkdir -p reports
	dc_shell-t -topo -f scripts/Node/node_modules_script.tcl

sparse:
	mkdir -p reports
	dc_shell -f scripts/Sparse/sparse_notopo.tcl

clean: clean_rpt
	rm -rf alib-52
	rm -rf *.log
	rm -rf *.svf
	rm -rf *.pvl
	rm -rf *.syn
	rm -rf *.mr

clean_rpt:
	rm -rf reports/*



dc_all:
	mkdir -p reports
	dc_shell -f scripts/J8_script.tcl
	dc_shell -f scripts/P8_script.tcl
	dc_shell -f scripts/J32_script.tcl
	dc_shell -f scripts/L32_script.tcl
	dc_shell -f scripts/P32_script.tcl
	dc_shell -f scripts/J64_script.tcl  
	dc_shell -f scripts/L64_script.tcl
	dc_shell -f scripts/P2x4x4_script.tcl
	dc_shell -f scripts/P2x4x4x2_script.tcl
	dc_shell -f scripts/L2x4x4_script.tcl 
	dc_shell -f scripts/L2x4x4x2_script.tcl

dc_topo:
	dc_shell -top -f scripts/J32_script2.tcl
