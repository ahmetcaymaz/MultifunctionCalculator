set_property PACKAGE_PIN W5 [get_ports clk]
	set_property IOSTANDARD LVCMOS33 [get_ports clk]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

#ButtonC for Load
set_property PACKAGE_PIN U18 [get_ports load]
	set_property IOSTANDARD LVCMOS33 [get_ports load]
	
#OperationSelection switches (input x)
set_property PACKAGE_PIN W13 [get_ports {x[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {x[0]}]
set_property PACKAGE_PIN V2 [get_ports {x[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {x[1]}]
set_property PACKAGE_PIN T3 [get_ports {x[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {x[2]}]
	
#Input A switches (left)
set_property PACKAGE_PIN T2 [get_ports {A[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {A[0]}]
set_property PACKAGE_PIN R3 [get_ports {A[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {A[1]}]
set_property PACKAGE_PIN W2 [get_ports {A[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {A[2]}]
set_property PACKAGE_PIN U1 [get_ports {A[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {A[3]}]
set_property PACKAGE_PIN T1 [get_ports {A[4]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {A[4]}]
set_property PACKAGE_PIN R2 [get_ports {A[5]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {A[5]}]
	
#Input B switches (Right)
set_property PACKAGE_PIN V17 [get_ports {B[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {B[0]}]
set_property PACKAGE_PIN V16 [get_ports {B[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {B[1]}]
set_property PACKAGE_PIN W16 [get_ports {B[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {B[2]}]
set_property PACKAGE_PIN W17 [get_ports {B[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {B[3]}]
set_property PACKAGE_PIN W15 [get_ports {B[4]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {B[4]}]
set_property PACKAGE_PIN V15 [get_ports {B[5]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {B[5]}]

#ALU result register
set_property PACKAGE_PIN U16 [get_ports {Registerout[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Registerout[0]}]
set_property PACKAGE_PIN E19 [get_ports {Registerout[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Registerout[1]}]
set_property PACKAGE_PIN U19 [get_ports {Registerout[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Registerout[2]}]
set_property PACKAGE_PIN V19 [get_ports {Registerout[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Registerout[3]}]
set_property PACKAGE_PIN W18 [get_ports {Registerout[4]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Registerout[4]}]
set_property PACKAGE_PIN U15 [get_ports {Registerout[5]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Registerout[5]}]
	
#CARRY FLAG REGISTER
set_property PACKAGE_PIN U14 [get_ports {Carryregisterout}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Carryregisterout}]
