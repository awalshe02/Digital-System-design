`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2024 09:27:46
// Design Name: 
// Module Name: test_bench
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


module test_bench(
    );
    reg clk, reset, d;
    wire q;
    
    //initiating module
    d_ff_reset one (clk, reset, d, q);
    
    initial begin
        clk = 1'b1;
        forever #10 clk = !clk; //every 10ns, invert clk
    end
    
    //creating waveform as in handout
    initial begin
        reset = 1'b1;
        d = 1'b0;
        #20;
        
        reset = 1'b1;
        d = 1'b1;
        #18;
        
        reset = 1'b0;
        d = 1'b1;
        #8;
        
        reset = 1'b0;
        d = 1'b0;
        #28;
        
        reset = 1'b0;
        d = 1'b1;
        #40;
        
        reset = 1'b1;
        d = 1'b1;
        #32;
        
        reset = 1'b0;
        d = 1'b1;
        #30;
        
        reset = 1'b0;
        d = 1'b0; 
        #24;
        
   end
         
endmodule
