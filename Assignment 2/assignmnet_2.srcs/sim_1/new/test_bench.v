`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2024 09:05:59
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
    reg clk, reset, sh_en;
    wire [19:0] Q_out;
    wire pattern;
    wire [19:0] code_count;
    
    //call lfsr module
    lfsr_eight_bit tb(.clk(clk), .reset(reset), .sh_en(sh_en), .Q_out(Q_out), .pattern(pattern), .counting(code_count));
    
    //clock cycle
    initial begin
        clk = 1'b1;
        forever #1 clk = !clk; //every 1ns, invert clk
    end
    
    initial begin
        reset = 1'b1; //on
        sh_en = 1'b0; //off
        #40
        
        reset = 1'b0; //off
        sh_en = 1'b1; //on 
        #400
        
        reset = 1'b1; //on
        sh_en = 1'b0; //off
        #70
        
        reset = 1'b0; //off
        sh_en = 1'b1; //om 
    end
    
endmodule
