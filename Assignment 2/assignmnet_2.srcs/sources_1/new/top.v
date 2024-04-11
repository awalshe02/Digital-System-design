`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2024 08:37:34
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
    input reset,
    input sh_en,
    output [3:0] an,
    output [6:0] sseg,
    output [15:0] Q_out
    );
    
    wire clk_out;
    wire pattern;
    wire [19:0] counting;
    
    //clock divider
    clock M0 (.CCLK(CCLK), .clkscale(50000), .clk(clk_out));
    
    //lfsr
    lfsr_eight_bit utt1(.clk(clk_out), .reset(reset), .sh_en(sh_en), .Q_out(Q_out), .pattern(pattern), .counting(counting));
    
    //displays count
    seven_segment_controller utt2(.clk(clk_out), .reset(reset), .temp(c_count), .anode_select(an), .LED_out(sseg));
    
endmodule
