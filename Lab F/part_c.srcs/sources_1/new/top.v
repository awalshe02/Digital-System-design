`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2024 13:57:42
// Design Name: 
// Module Name: top
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


module top(
    input CCLK,
    input sw_reset,
    input sw_sh_en,
    output ld_max_tick_reg,
    output [14:0] Q_out
    );
    
    wire clk_out;
    wire [21:0] count_0;
    wire [21:0] count_1;
    
    //initiating the clock divider and lfsr modules
    clock M0 (.CCLK(CCLK), .clkscale(50000000), .clk(clk_out));
    lfsr_eight_bit M1(.clk(clk_out), .sh_en(sw_sh_en), .reset(sw_reset), .Q_out(Q_out), .max_tick_reg(ld_max_tick_reg), .count_0(count_0), .count_1(count_1));
    
endmodule
