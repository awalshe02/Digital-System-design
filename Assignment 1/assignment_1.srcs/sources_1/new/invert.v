`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 11:48:05
// Design Name: 
// Module Name: invert
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


module invert(
    input [5:0] in,
    output reg [5:0] out
    );
    
    always@* begin
    //invert all bits in 'in' and add 1 bit to get 2's compliment
     out = ~in + 6'b1;
    end
    
    endmodule

