`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 15:02:33
// Design Name: 
// Module Name: greater2
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


module greater2(
    input wire [1:0] a,
    input wire [1:0] b,
    output wire geqb
    );
    
    wire greater0, greater1, greater2;
    
    //getting product the 3 terms (if any is 1 then a input is bigger)
    assign geqb = greater0 | greater1 | greater2;
    
    //getting sum of the inputs to see which input is greater then the other
    assign greater0 = a[1] & ~b[1];
    assign greater1 = a[0] & ~b[1] & ~b[0];
    assign greater2 = a[1] & a[0] & ~b[0];
    
endmodule
