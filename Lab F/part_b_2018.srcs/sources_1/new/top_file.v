`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2024 13:01:14
// Design Name: 
// Module Name: top_file
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


module top_file(
       input clk,
       input reset,
       output [3:0]anode_sel,
       output [6:0] led_out,
       input [4:0] button_input
    );
    
    wire [7:0] Q;
    wire [4:0] buttons;
    reg [7:0] Q_next;
    
    //initiating modules
    d_ff_reset DFF0 (clk, reset, Q_next[0], Q[0]);
    d_ff_reset DFF1 (clk, reset, Q_next[1], Q[1]);
    d_ff_reset DFF2 (clk, reset, Q_next[2], Q[2]);
    d_ff_reset DFF3 (clk, reset, Q_next[3], Q[3]);
    d_ff_reset DFF4 (clk, reset, Q_next[4], Q[4]);
    d_ff_reset DFF5 (clk, reset, Q_next[5], Q[5]);
    d_ff_reset DFF6 (clk, reset, Q_next[6], Q[6]);
    d_ff_reset DFF7 (clk, reset, Q_next[7], Q[7]);
    
    seven_segment_controller SSC (clk, reset, Q, anode_sel, led_out);
    
    debouncer DB (clk, reset, button_input, buttons);

    always@(posedge clk) begin
        if(reset)
            Q_next = 8'b0;//reset 
        if(buttons[0] || buttons[3]) // up or right
        begin
            Q_next = Q;
            Q_next = Q_next + 1'b1; //add
        end
        if(buttons[2] || buttons[1]) // down or left
        begin
            Q_next = Q;
            Q_next = Q_next - 1'b1; //take away
        end
        if (buttons[4])
        begin
            Q_next = 6'b00010110; //22 in decimal
        end
    end
endmodule
