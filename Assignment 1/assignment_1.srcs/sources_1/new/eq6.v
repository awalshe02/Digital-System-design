`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 14:47:27
// Design Name: 
// Module Name: eq6
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


module eq6(
    input wire [5:0] A,
    input wire [5:0] B,
    output wire less
    );
    
    wire equal0, equal1, equal2;
    wire greater0, greater1, greater2;
    wire msigx, msigy, equal, greater;
    
    // comparing 2 bits at a time
    eq2 eq_bit0_unit (.a(A[1:0]),.b(B[1:0]), .aeqb(equal0)); 
    eq2 eq_bit1_unit (.a(A[3:2]),.b(B[3:2]), .aeqb(equal1)); 
    eq2 eq_bit2_unit (.a(A[5:4]),.b(B[5:4]), .aeqb(equal2)); 
    
    // comparing 2 bits at a time
    greater2 gq_bit0_unit (.a(A[1:0]), .b(B[1:0]), .geqb(greater0));
    greater2 gq_bit1_unit (.a(A[3:2]), .b(B[3:2]), .geqb(greater1));
    greater2 gq_bit2_unit (.a(A[5:4]), .b(B[5:4]), .geqb(greater2));
    
    //most significant bits
    assign msigx = A[5];
    assign msigy = B[5];
    
    // equal term is 1 then greater0/1/2 are true or equal1/2 is true
    assign equal = (greater2 | (equal2 & greater1) | (equal2 & equal1 & greater0));
    
    // if 0 then a is greater then b
    assign greater = (~msigx & equal) | (~msigx & msigy) | (msigy & equal);
    // flip so output is high when a is less then b
    assign less = ~greater;
    
endmodule
