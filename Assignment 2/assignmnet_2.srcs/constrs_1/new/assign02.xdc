## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
set_property PACKAGE_PIN W5 [get_ports CCLK]							
	set_property IOSTANDARD LVCMOS33 [get_ports CCLK]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports CCLK]
 
## Switches
set_property PACKAGE_PIN V17 [get_ports {reset}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {reset}]
set_property PACKAGE_PIN V16 [get_ports {sh_en}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sh_en}]

	
	
##6 segment display - Cathode pins
set_property PACKAGE_PIN W7 [get_ports {sseg[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sseg[6]}]
set_property PACKAGE_PIN W6 [get_ports {sseg[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sseg[5]}]
set_property PACKAGE_PIN U8 [get_ports {sseg[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sseg[4]}]
set_property PACKAGE_PIN V8 [get_ports {sseg[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sseg[3]}]
set_property PACKAGE_PIN U5 [get_ports {sseg[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sseg[2]}]
set_property PACKAGE_PIN V5 [get_ports {sseg[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sseg[1]}]
set_property PACKAGE_PIN U7 [get_ports {sseg[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sseg[0]}]


#Anode Selects
set_property PACKAGE_PIN U2 [get_ports {an[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]
set_property PACKAGE_PIN U4 [get_ports {an[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]
set_property PACKAGE_PIN V4 [get_ports {an[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]
set_property PACKAGE_PIN W4 [get_ports {an[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]

##LEDs (can only do 1st 16 bits
set_property PACKAGE_PIN U16 [get_ports Q_out[0]]						
	set_property IOSTANDARD LVCMOS33 [get_ports Q_out[0]]
set_property PACKAGE_PIN E19 [get_ports Q_out[1]]						
	set_property IOSTANDARD LVCMOS33 [get_ports Q_out[1]]
set_property PACKAGE_PIN U19 [get_ports Q_out[2]]						
	set_property IOSTANDARD LVCMOS33 [get_ports Q_out[2]]
set_property PACKAGE_PIN V19 [get_ports Q_out[3]]						
	set_property IOSTANDARD LVCMOS33 [get_ports Q_out[3]]
set_property PACKAGE_PIN W18 [get_ports Q_out[4]]						
	set_property IOSTANDARD LVCMOS33 [get_ports Q_out[4]]
set_property PACKAGE_PIN U15 [get_ports Q_out[5]]						
	set_property IOSTANDARD LVCMOS33 [get_ports Q_out[5]]
set_property PACKAGE_PIN U14 [get_ports Q_out[6]]						
	set_property IOSTANDARD LVCMOS33 [get_ports Q_out[6]]
set_property PACKAGE_PIN V14 [get_ports Q_out[7]]						
	set_property IOSTANDARD LVCMOS33 [get_ports Q_out[7]]
set_property PACKAGE_PIN V13 [get_ports Q_out[8]]						
	set_property IOSTANDARD LVCMOS33 [get_ports Q_out[8]]
set_property PACKAGE_PIN V3 [get_ports Q_out[9]]						
	set_property IOSTANDARD LVCMOS33 [get_ports Q_out[9]]
set_property PACKAGE_PIN W3 [get_ports Q_out[10]]						
	set_property IOSTANDARD LVCMOS33 [get_ports Q_out[10]]
set_property PACKAGE_PIN U3 [get_ports Q_out[11]]						
	set_property IOSTANDARD LVCMOS33 [get_ports Q_out[11]]
set_property PACKAGE_PIN P3 [get_ports Q_out[12]]						
	set_property IOSTANDARD LVCMOS33 [get_ports Q_out[12]]
set_property PACKAGE_PIN N3 [get_ports Q_out[13]]						
	set_property IOSTANDARD LVCMOS33 [get_ports Q_out[13]]
set_property PACKAGE_PIN P1 [get_ports Q_out[14]]						
	set_property IOSTANDARD LVCMOS33 [get_ports Q_out[14]]
set_property PACKAGE_PIN L1 [get_ports Q_out[15]]						
	set_property IOSTANDARD LVCMOS33 [get_ports Q_out[15]]
 



