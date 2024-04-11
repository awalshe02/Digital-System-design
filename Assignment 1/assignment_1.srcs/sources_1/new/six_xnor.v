`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 11:52:28
// Design Name: 
// Module Name: six_xnor
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


module six_xnor(
    input [5:0] A,
    input [5:0] B,
    output [5:0] out
    );
    
    // xor then invert each bit individually
    assign out[0] = A[0] ^~ B[0];
    assign out[1] = A[1] ^~ B[1];
    assign out[2] = A[2] ^~ B[2];
    assign out[3] = A[3] ^~ B[3];
    assign out[4] = A[4] ^~ B[4];
    assign out[5] = A[5] ^~ B[5];
    
endmodule
