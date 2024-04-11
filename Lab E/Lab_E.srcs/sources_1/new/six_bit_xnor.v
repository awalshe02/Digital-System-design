`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2024 13:14:41
// Design Name: 
// Module Name: six_bit_xnor
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


module six_bit_xnor(
    input [5:0] A,
    input [5:0] B,
    output [5:0] answer
    );
    
    assign answer[0] = A[0] ^ B[0];
    assign answer[1] = A[1] ^ B[1];
    assign answer[2] = A[2] ^ B[2];
    assign answer[3] = A[3] ^ B[3];
    assign answer[4] = A[4] ^ B[4];
    assign answer[5] = A[5] ^ B[5];
    
endmodule
