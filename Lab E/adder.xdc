## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
#set_property PACKAGE_PIN W5 [get_ports clk]							
	#set_property IOSTANDARD LVCMOS33 [get_ports clk]
	#create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
 
## Switches (0-11 for x and y inputs)
set_property PACKAGE_PIN V17 [get_ports SW0 ]					
	set_property IOSTANDARD LVCMOS33 [get_ports SW0]
set_property PACKAGE_PIN V16 [get_ports {SW1}]					
	set_property IOSTANDARD LVCMOS33 [get_ports SW1]
set_property PACKAGE_PIN W16 [get_ports SW2]					
	set_property IOSTANDARD LVCMOS33 [get_ports SW2]
set_property PACKAGE_PIN W17 [get_ports SW3]					
	set_property IOSTANDARD LVCMOS33 [get_ports SW3]
set_property PACKAGE_PIN W15 [get_ports SW4]					
	set_property IOSTANDARD LVCMOS33 [get_ports SW4]
set_property PACKAGE_PIN V15 [get_ports SW5]					
	set_property IOSTANDARD LVCMOS33 [get_ports {SW5}]
set_property PACKAGE_PIN W14 [get_ports {SW6}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {SW6}]
set_property PACKAGE_PIN W13 [get_ports {SW7}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {SW7}]  
set_property PACKAGE_PIN V2 [get_ports {SW8}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {SW8}]
set_property PACKAGE_PIN T3 [get_ports {SW9}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {SW9}]
set_property PACKAGE_PIN T2 [get_ports {SW10}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {SW10}]
set_property PACKAGE_PIN R3 [get_ports {SW11}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {SW11}]
	
	#sel
set_property PACKAGE_PIN W2 [get_ports SW12]					
	set_property IOSTANDARD LVCMOS33 [get_ports SW12]

#for fxn properties
set_property PACKAGE_PIN U1 [get_ports {SW13}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {SW13}]
set_property PACKAGE_PIN T1 [get_ports {SW14}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {SW14}]
set_property PACKAGE_PIN R2 [get_ports {SW15}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {SW15}]
 

## LEDs (0-5 for sum output)
set_property PACKAGE_PIN U16 [get_ports {LD0}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LD0}]
set_property PACKAGE_PIN E19 [get_ports {LD1}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LD1}]
set_property PACKAGE_PIN U19 [get_ports {LD2}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LD2}]
set_property PACKAGE_PIN V19 [get_ports {LD3}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LD3}]
set_property PACKAGE_PIN W18 [get_ports {LD4}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LD4}]
set_property PACKAGE_PIN U15 [get_ports {LD5}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LD5}]
	
	#overflow
set_property PACKAGE_PIN U14 [get_ports {LD6}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LD6}]

#c_out
set_property PACKAGE_PIN V14 [get_ports {LD7}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LD7}] 
	 
