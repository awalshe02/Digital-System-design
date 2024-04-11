`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 10:14:24
// Design Name: 
// Module Name: counter
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

//count the ones and zeros that are in the most significant bit position
module counter(
    input wire clk,
    input wire reset,
    input wire num,
    output reg[19:0]code_count
    );
    
    reg [19:0] count_reg;
   
    always@(posedge clk) begin
        if(num)begin //if num high
            count_reg <= count_reg + 1; //increment
        end
        if (reset) begin //if reset high
            count_reg <= 0;
        end
    end
    
    //outputs
    always@* begin
        code_count = count_reg;
    end
    
endmodule
