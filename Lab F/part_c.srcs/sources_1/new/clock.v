`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2024 09:20:41
// Design Name: 
// Module Name: clock
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


module clock(
    input CCLK,
    input [31:0] clkscale,
    output reg clk
    );
    
    reg [31:0] clkq = 0;
    
    always@(posedge CCLK) begin
        clkq = clkq + 1; //increment clock regiter
        if(clkq >= clkscale) begin //clock scaling
            clk = ~clk; //output clock
            clkq = 0; //reset clock
        end
    end
    
endmodule
