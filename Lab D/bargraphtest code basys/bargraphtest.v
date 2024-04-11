// Basys Board and Spartan-3E Starter Board
// LED Bar Graph Test bargraphtest.v
// c 2008 Embedded Design using Programmable Gate Arrays  Dennis Silage


module bargraphtest(input CCLK, SW0, SW1, SW2, SW3, SW4, SW5, SW6, SW7, output LD7, LD6, LD5, LD4,
                    LD3, LD2, LD1, LD0);

wire [7:0] data;
						  
clock M0 (CCLK, 625000, clock);
bargraph M1 (clock, SW0, SW1, SW2, SW3, SW4, SW5, SW6, SW7, data,LD7, LD6, LD5, LD4,
                    LD3, LD2, LD1, LD0); 
gendata M2 (clock, data);

endmodule
// generate bar graph test data

module gendata(input clock, output reg [7:0] gdata);

always@(negedge clock)
	gdata=gdata+1;
	
endmodule
