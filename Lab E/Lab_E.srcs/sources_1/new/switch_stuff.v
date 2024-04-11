`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2024 10:35:53
// Design Name: 
// Module Name: switch_stuff
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


module switch_stuff(
    input SW0,
    input SW1,
    input SW2,
    input SW3,
    input SW4,
    input SW5,
    input SW6,
    input SW7,
    input SW8,
    input SW9,
    input SW10,
    input SW11,
    output LD0,
    output LD1,
    output LD2,
    output LD3,
    output LD4,
    output LD5
    );
    
        reg [5:0] x;
    reg [5:0] y;
    reg sel;//determin + or -
    wire overflow;
    wire c_out;
    wire [5:0] sum;
    


    six_bit_ripple_adder 1p (x, y, sel, overflow, c_out, sum);
    
    
    assign x[0] = SW0;
    assign x[1] = SW1;
    assign x[2] = SW2;
    assign x[3] = SW3;
    assign x[4] = SW4;
    assign x[5] = SW5;
    
    assign y[0] = SW6;
    assign y[1] = SW7;
    assign y[2] = SW8;
    assign y[3] = SW9;
    assign y[4] = SW10;
    assign y[5] = SW11;
  
    assign sum[0] = LD0;
    assign sum[1] = LD1;
    assign sum[2] = LD2;
    assign sum[3] = LD3;
    assign sum[4] = LD4;
    assign sum[5] = LD5;
    
    //add bargraph
    
endmodule