## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
 


##Buttons
# BtnC is rst
set_property PACKAGE_PIN U18 [get_ports rst]						
	set_property IOSTANDARD LVCMOS33 [get_ports rst]
# BtnU is dump
set_property PACKAGE_PIN T18 [get_ports dump]						
	set_property IOSTANDARD LVCMOS33 [get_ports dump]
#set_property PACKAGE_PIN W19 [get_ports btnL]						
	#set_property IOSTANDARD LVCMOS33 [get_ports btnL]
#set_property PACKAGE_PIN T17 [get_ports btnR]						
	#set_property IOSTANDARD LVCMOS33 [get_ports btnR]
#set_property PACKAGE_PIN U17 [get_ports btnD]						
	#set_property IOSTANDARD LVCMOS33 [get_ports btnD]


##Pmod Header JA
##Sch name = JA1
set_property PACKAGE_PIN J1 [get_ports {JA[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {JA[0]}]
##Sch name = JA2
set_property PACKAGE_PIN L2 [get_ports {JA[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {JA[1]}]
