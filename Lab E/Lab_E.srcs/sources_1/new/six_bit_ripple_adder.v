`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2024 09:33:22
// Design Name: 
// Module Name: 6bit_ripple_adder
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
module six_bit_ripple_adder(
    input [5:0] A, //first number
    input [5:0] B, //second number
    input sel, //determine + or -
    output overflow,
    output c_out,
    output [5:0] X
    );
   
 wire a1, a2, a3, a4,a5, a6;
 wire c1, c2, c3, c4, c5, c6;
 
 //will convert y to 2's compliment if sel = 1
 xor y0(a1,B[0], sel);
 xor y1(a2,B[1], sel);
 xor y2(a3,B[2], sel);
 xor y3(a4,B[3], sel);
 xor y4(a5,B[4], sel);
 xor y5(a6,B[5], sel);
 
 //going through each full adder
 FullAdder bit0 (A[0], a1, sel, c1, X[0]);
 FullAdder bit1 (A[1], a2, c1, c2, X[1]);
 FullAdder bit2 (A[2], a3, c2, c3, X[2]);
 FullAdder bit3 (A[3], a4, c3, c4, X[3]);
 FullAdder bit4 (A[4], a5, c4, c5, X[4]);
 FullAdder bit5 (A[5], a6, c5, c6, X[5]);
 // using conditional assignmnet to get overflow instead of xor
 
 assign overflow = ((!c5 && c6) || (c5 && !c6))? 1'b1: 1'b0; 
 assign c_out = c6;
 
endmodule


