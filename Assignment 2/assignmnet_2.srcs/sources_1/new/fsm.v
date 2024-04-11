`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2024 11:19:39
// Design Name: 
// Module Name: fsm
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


module fsm(
    input clk,
    input [19:0] num,
    output reg y //turm high if pattern detected
    );
    
    parameter A = 4'b0000, B = 4'b0001, C = 4'b0010, D = 4'b0011,
              E = 4'b0100, F = 4'b0101, G = 4'b0110, H = 4'b0111,
              I = 4'b1000, J = 4'b1001, K = 4'b1010, L = 4'b1011;
    
    reg [3:0] state;
    wire current = num[0]; //get the first
    
    //going through states to check for pattern : 11011011001
    always @(posedge clk) begin
        case(state)
            A: begin
                y = 0;
                if(current)begin //if 1
                    state = B; 
                    y = 1'b0;
                end
               else state = A;
               end
            B: begin
                y = 0;
                if(current) state = C; //if 1
                else state = A;
               end
            C: begin
                y = 0;
                if(!current) state = D; //if 0
                else state = C;
                end
            D: begin
                y = 0;
                if(current) state = E; //if 0
                else state = A;
                end
            E: begin
                y = 0;
                if(current) state = F; //if 1
                else state = A;
                end
            F: begin
                y = 0;
                if(!current) state = G; //if 0
                else state = C;
                end
            G: begin
                y = 0;
                if(current) state = H; // 1
                else state = A;
                end
            H: begin
                y = 0;
                if(current) state = I; //if 1
                else state = A;
                end
            I: begin
                y = 0;
                if(!current) state = J; //if 0
                else state = C;
                end
            J: begin 
                y = 0;
                if(!current) state = K; //if 0
                else state = H;
                end
            K: begin
                y = 0;
                if(current) begin //if 1
                    state = L;
                    y = 1; //have reached desired pattern
                    end
                else state = A;
                end
            L: begin
                y = 0;
                if(current)begin //if 1
                    state = C;
                    y = 0;
                end
                else state = A;
                end
            default: state = A;
          endcase
       end     
endmodule

    
