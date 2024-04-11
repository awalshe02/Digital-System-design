`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2024 11:54:47
// Design Name: 
// Module Name: test
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

// need ++, --, x-, overflow, no overflow
module test(
    input [5:0] x,
    input [5:0] y,
    input sel,
    output overflow,
    output c_out,
    output [5:0] sum
    );
      
endmodule


module test_bench;

    reg [5:0] x;
    reg [5:0] y;
    reg sel;//determin + or -
    wire overflow;
    wire c_out;
    wire [5:0] sum;
    
    six_bit_ripple_adder tb(
    .x(x),
    .y(y),
    .sel(sel),
    .overflow(overflow),
    .c_out(c_out),
    .sum(sum)
    );
    

initial begin 
    //addition two positives no overflow
    x = 6'b010101; //21 in decimal
    y = 6'b000011; //3 in decimal
    sel = 1'b0;
    #50 //this is a delay
   
    //addition two positives with overflow
    x = 6'b011111; //31 in decimal
    y = 6'b000010; //1 in decimal
    sel = 1'b0;
    #50 //delay
    
    //addition negative and positive with no overflow
    x = 6'b001010; // 10 in decimal
    y = 6'b100000; // -32 in decimal
    sel = 1'b0;
    #50 //delay
    
    //addition woth two neagatives
    x = 6'b111111; //-1 in decimal
    y = 6'b111110; //-2 in decimal
    sel = 1'b0;
    #50 //delay
    
    //subtracting two positive numbers
    x = 6'b010101; //21 in decimal
    y = 6'b000011; //3 in decimal
    sel = 1'b1;
    #50//delay
    
    //subracting two neagtive numbers
    x = 6'b100001; // -31 in decimal
    y = 6'b100010; // - 30 in decimal
    sel = 1'b1;
    #50 //delay
    
    //subtracting negative and positive number
    x = 6'b001010; // 10 in decimal
    y = 6'b111111; // -1 in decimal
    sel = 1'b1;
    #50
 
    //subracting negative and positve number with overflow
    x = 6'b101110; // -18 in decimal
    y = 6'b010100; // 20 in decimal 
    sel = 1;
   
end

endmodule