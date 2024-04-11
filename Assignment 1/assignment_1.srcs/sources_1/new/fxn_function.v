`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 11:20:21
// Design Name: 
// Module Name: fxn_function
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


module fxn_function(
    input [5:0] A, input [5:0] B, input [2:0] f, output reg [5:0]X);
    
    wire [5:0] ina, inb, xab, aplusb, aminusb;
    wire eab;
    wire add_overflow, minus_overflow, add_c_out, minus_c_out;
    
    invert inva(A, ina); //get 2's compliment of A (ina is output)
    invert invb(B, inb); // get 2's compliment of B (inb is output)
    six_xnor sixx(A, B, xab); // xnor A and B bit by bit (xab is output)
    eq6 less_six(A,B, eab); // determin if A is less then B ( eab is output)
    six_bit_ripple_adder six_add(A, B, 1'b0, overflow, c_out, aplusb); // and A and B (aplusb is output)
    six_bit_ripple_adder six_minus(A, B, 1'b1, overflow, c_out, aminusb); // subtract B from A (aminusb is output)
    
    always@*
    begin
        case (f) //depending on fxn input X will equal an output from above
            3'b000: X = A;
            3'b001: X = B;
            3'b010: X = ina;
            3'b011: X = inb;
            3'b100: X = eab;
            3'b101: X = xab;
            3'b110: X = aplusb;
            3'b111: X = aminusb;         
        endcase
    end 
    
endmodule


