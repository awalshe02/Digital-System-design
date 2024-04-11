`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.02.2024 11:18:23
// Design Name: 
// Module Name: function
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


module fxn(
    input     SW0,SW1,SW2,SW3,SW4,SW5,SW6,SW7,SW8,SW9,SW10,SW11,SW12, SW13, SW14, SW15, output reg [5:0]X
    );
    
    reg [5:0] A;
    reg [5:0] B;
    reg sel;//determin + or -
    wire overflow;
    wire c_out;
    //wire [5:0] sum;
    
    assign SW0 = A[0];
    assign SW1 = A[1];
    assign SW2 = A[2];
    assign SW3 = A[3];
    assign SW4 = A[4];
    assign SW5 = A[5];
    assign SW6 = B[0];
    
    assign SW7 = B[1];
    assign SW8 = B[2];
    assign SW9 = B[3];
    assign SW10 = B[4];
    assign SW11 = B[5];
    assign SW12 = sel;
    
    //connecting LEDs to sum output bits
    assign LD0 = X[0];
    assign LD1 = X[1];
    assign LD2 = X[2];
    assign LD3 = X[3];
    assign LD4 = X[4];
    assign LD5 = X[5];
    
    assign LD6 = overflow;
    assign LD7 = c_out;    

    
    always @*
    begin
        if(SW15 == 1'b0 && SW14 == 1'b0 && SW13 == 1'b0) //000 
        X = A;
        if(SW15 == 1'b0 && SW14 == 1'b0 && SW13 == 1'b1) //001
        X = B;
        if(SW15 == 1'b0 && SW14 == 1'b1 && SW13 == 1'b0) //010
        flip_bits (A, X); //compliment
        if(SW15 == 1'b0 && SW14 == 1'b1 && SW13 == 1'b1) //011
        flip_bits (B, X); //compliment
        if(SW15 == 1'b1 && SW14 == 1'b0 && SW13 == 1'b0) //100
        if( A < B)
        greater_than(A, B, X);  //leaser number becomes output
        if(SW15 == 1'b1 && SW14 == 1'b0 && SW13 == 1'b1) //101
        six_bit_xnor(A,B,X);
        if(SW15 == 1'b1 && SW14 == 1'b1 && SW13 == 1'b0) //110
        six_bit_ripple_adder (A,B, 1'b0, LD6, LD7, X);
        if(SW15 == 1'b1 && SW14 == 1'b1 && SW13 == 1'b1) //111
        six_bit_ripple_adder (A,B, 1'b1, LD6, LD7, X);
    end    
endmodule

  