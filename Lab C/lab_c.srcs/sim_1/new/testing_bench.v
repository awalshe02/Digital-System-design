`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2024 11:27:10
// Design Name: 
// Module Name: testing_bench
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


module testing_bench(
    input x,y, sel,
    output overflow, c_out, sum
    );
    
    assign x = 6'b10_1010;
    assign y = 6'b01_1100;
    assign sel = 0;    
endmodule

