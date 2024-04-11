`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 09:57:00
// Design Name: 
// Module Name: lfsr_testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module lfsr_testbench();

reg clk, reset, sh_en;
wire [21:0]Q_out, count_0, count_1;
wire max_tick_reg;

//initialting lfsr module
lfsr_eight_bit one(clk, sh_en, reset, Q_out, max_tick_reg, count_0, count_1);

initial begin
    clk = 1'b0;
    forever #1 clk = !clk;
end

//reset and sh_en flicked to high nad low to test if counters reset to 0
initial begin
    reset = 1'b1; //high for 10nano secs
    sh_en = 1'b0; //low for 10 nano secs 
    #10
    
    reset = 1'b0;
    sh_en = 1'b1;
    #10
    
    reset = 1'b1;
    sh_en = 1'b0;
    #10
    
    reset = 1'b0;
    sh_en = 1'b1;
    #10
    
    reset = 1'b1;
    sh_en = 1'b0;
    #10
    
    reset = 1'b0;
    sh_en = 1'b1;
    
end

endmodule
