`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2024 13:42:52
// Design Name: 
// Module Name: greater_than
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


module greater_than(
    input [5:0] A,
    input [5:0] B,
    output reg [5:0] answer
    );
    
    always@* begin
        answer = (A < B) ? A : B; // A = answer if less then
    end
endmodule
