`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 09:22:15
// Design Name: 
// Module Name: lfsr_eight_bit
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


module lfsr_eight_bit
    (input clk,
     input sh_en,
     input reset,
     output reg [19:0] Q_out,
     output reg pattern,
     output [19:0] counting
    );
    localparam seed = 20'b01100000101001010011; //seed given in handout
    //localparam code = 11'b11011011001; //code given in handout
    reg [19:0]Q_state;
    wire [19:0] Q_ns;
    wire out;
    
    fsm utt(.clk(clk), .num(Q_out), .y(out)); //detect the pattern
    counter utt0(.clk(clk), .reset(reset), .num(pattern), .code_count(counting)); //take output from fsm and see if high and counts it
    
    //asynchronous active high
    always@(posedge clk or posedge reset) begin
     if(reset) // active high
        Q_state <= seed;
     else if (sh_en) begin //if shift enable is on
        Q_state <= Q_ns;
        pattern <= out;
     end
    end
     
     
     //next state logic (bit 20 and 17 in xnor form)
     assign Q_fb = Q_state[19] ~^ Q_state[16];
     assign Q_ns = {Q_state[19:0], Q_fb}; //add Q_fb to start of Q next
     
     //outputs
     always@* begin
        Q_out = Q_state;
     end
     
     
     
        
endmodule
