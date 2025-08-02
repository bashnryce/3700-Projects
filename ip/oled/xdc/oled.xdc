## OLED: Connect to Pmod Header JB
##Sch name = JB1
set_property PACKAGE_PIN A14 [get_ports {OLEDcs_n}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {OLEDcs_n}]
##Sch name = JB2
set_property PACKAGE_PIN A16 [get_ports {OLEDsdo}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {OLEDsdo}]
##Sch name = JB3 (No Connection)
#set_property PACKAGE_PIN B15 [get_ports {JB[2]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JB[2]}]
##Sch name = JB4
set_property PACKAGE_PIN B16 [get_ports {OLEDsclk}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {OLEDsclk}]
##Sch name = JB7
set_property PACKAGE_PIN A15 [get_ports {OLEDdc}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {OLEDdc}]
##Sch name = JB8
set_property PACKAGE_PIN A17 [get_ports {OLEDres}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {OLEDres}]
##Sch name = JB9
set_property PACKAGE_PIN C15 [get_ports {OLEDvbat}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {OLEDvbat}]
##Sch name = JB10 
set_property PACKAGE_PIN C16 [get_ports {OLEDvdd}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {OLEDvdd}]
 


