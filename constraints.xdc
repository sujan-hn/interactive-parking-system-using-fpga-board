# Clock signal
set_property PACKAGE_PIN W5 [get_ports clock]							
	set_property IOSTANDARD LVCMOS33 [get_ports clock]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clock]
	
	
	
	##Buttons
        set_property PACKAGE_PIN U18 [get_ports rst]                        
            set_property IOSTANDARD LVCMOS33 [get_ports rst]
            
            
            
            set_property PACKAGE_PIN U2 [get_ports {en[0]}]                    
                set_property IOSTANDARD LVCMOS33 [get_ports {en[0]}]
            set_property PACKAGE_PIN U4 [get_ports {en[1]}]                    
                set_property IOSTANDARD LVCMOS33 [get_ports {en[1]}]
            set_property PACKAGE_PIN V4 [get_ports {en[2]}]                    
                set_property IOSTANDARD LVCMOS33 [get_ports {en[2]}]
            set_property PACKAGE_PIN W4 [get_ports {en[3]}]                    
                set_property IOSTANDARD LVCMOS33 [get_ports {en[3]}]
                


	
	
	#7 segment display
   #7 segment display
    set_property PACKAGE_PIN W7 [get_ports {seg[6]}]                    
        set_property IOSTANDARD LVCMOS33 [get_ports {seg[6]}]
    set_property PACKAGE_PIN W6 [get_ports {seg[5]}]                    
        set_property IOSTANDARD LVCMOS33 [get_ports {seg[5]}]
    set_property PACKAGE_PIN U8 [get_ports {seg[4]}]                    
        set_property IOSTANDARD LVCMOS33 [get_ports {seg[4]}]
    set_property PACKAGE_PIN V8 [get_ports {seg[3]}]                    
        set_property IOSTANDARD LVCMOS33 [get_ports {seg[3]}]
    set_property PACKAGE_PIN U5 [get_ports {seg[2]}]                    
        set_property IOSTANDARD LVCMOS33 [get_ports {seg[2]}]
    set_property PACKAGE_PIN V5 [get_ports {seg[1]}]                    
        set_property IOSTANDARD LVCMOS33 [get_ports {seg[1]}]
    set_property PACKAGE_PIN U7 [get_ports {seg[0]}]                    
        set_property IOSTANDARD LVCMOS33 [get_ports {seg[0]}]
        
        
        
        # LEDs
        set_property PACKAGE_PIN U16 [get_ports {avail_led[0]}]                    
            set_property IOSTANDARD LVCMOS33 [get_ports {avail_led[0]}]
        set_property PACKAGE_PIN E19 [get_ports {avail_led[1]}]                    
            set_property IOSTANDARD LVCMOS33 [get_ports {avail_led[1]}]
        set_property PACKAGE_PIN U19 [get_ports {avail_led[2]}]                    
            set_property IOSTANDARD LVCMOS33 [get_ports {avail_led[2]}]
        set_property PACKAGE_PIN V19 [get_ports {avail_led[3]}]                    
            set_property IOSTANDARD LVCMOS33 [get_ports {avail_led[3]}]
            
            
            
            set_property PACKAGE_PIN V17 [get_ports {slots_sw[0]}]					
                set_property IOSTANDARD LVCMOS33 [get_ports {slots_sw[0]}]
            set_property PACKAGE_PIN V16 [get_ports {slots_sw[1]}]                    
                set_property IOSTANDARD LVCMOS33 [get_ports {slots_sw[1]}]
            set_property PACKAGE_PIN W16 [get_ports {slots_sw[2]}]                    
                set_property IOSTANDARD LVCMOS33 [get_ports {slots_sw[2]}]
            set_property PACKAGE_PIN W17 [get_ports {slots_sw[3]}]                    
                set_property IOSTANDARD LVCMOS33 [get_ports {slots_sw[3]}]



	
	