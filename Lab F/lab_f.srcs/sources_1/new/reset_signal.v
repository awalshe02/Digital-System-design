`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2024 09:36:30
// Design Name: 
// Module Name: reset_signal
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


module reset_signal(
    input clk,
    input reset,
    input [5:0] d,
    output reg [5:0] q
    ); 
    
    always@ (posedge clk) begin
        if(reset == 1'b0)
            q <= 6'd0;
        else
            q <= d;
        end
        
endmodule
