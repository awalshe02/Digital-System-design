   #clock constraint
   set_property PACKAGE_PIN W5 [get_ports CCLK]
   set_property IOSTANDARD LVCMOS33 [get_ports CCLK]
   create_clock -period 10.000 -name CCLK -waveform (0.000 5.000) [get_ports CCLK]
   
   #led constraint for Q_out bits from 0 - 14 (not enough leds for 22 bits)
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
   
   #led constraint for max_tick_reg
      set_property PACKAGE_PIN L1 [get_ports ld_max_tick_reg]
   set_property IOSTANDARD LVCMOS33 [get_ports ld_max_tick_reg]

    #switch constraint for reset and shift enable
    set_property PACKAGE_PIN V17 [get_ports sw_reset ]					
	   set_property IOSTANDARD LVCMOS33 [get_ports sw_reset]
	set_property PACKAGE_PIN V16 [get_ports sw_sh_en ]					
	   set_property IOSTANDARD LVCMOS33 [get_ports sw_sh_en]
				

 	 


   
   