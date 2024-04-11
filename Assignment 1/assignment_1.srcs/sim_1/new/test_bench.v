`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 16:01:55
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


module test_bench;

    reg [5:0] A;
    reg [5:0] B;
    reg [2:0] f;
    reg overflow;
    reg c_out;
    wire [5:0] X;
    
    fxn_function tb(.A(A), .B(B), .f(f), .X(X));
    
    initial begin
    
       // just A
        f = 3'b000; 
        A = 6'b101001; //41 in decimal
        B = 6'b011000; //24 in decimal
        #30;
    
        // just A
        f = 3'b000; 
        A = 6'b110111; //-9 in decimal
        B = 6'b011000; //24 in decimal
        #30;
        
        // just A
        f = 3'b000;        
        A = 6'b001101; //13 in decimal
        B = 6'b000111; //7 in decimal
        #30;
       
        // just B
        f = 3'b001; 
        A = 6'b000100; //4 in decimal
        B = 6'b101001; //41 in decimal
        #30;
        
        // just B
        f = 3'b001; 
        A = 6'b000100; //4 in decimal
        B = 6'b110111; //-9 in decimal
        #30;
        
        // just B
        f = 3'b001;        
        A = 6'b001101; //13 in decimal
        B = 6'b000111; //7 in decimal
        #30;
        
        // just -A
        f = 3'b010; 
        A = 6'b101001; //41 in decimal
        B = 6'b011000; //24 in decimal
        #30;
        
        // just -A
        f = 3'b010; 
        A = 6'b110111; //-9 in decimal
        B = 6'b011000; //24 in decimal
        #30;
        
        // just -A
        f = 3'b010;        
        A = 6'b001101; //13 in decimal
        B = 6'b000111; //7 in decimal
        #30;
        
        // just -B
        f = 3'b011; 
        A = 6'b000100; //4 in decimal
        B = 6'b101001; //41 in decimal
        #30;
        
        // just -B
        f = 3'b011; 
        A = 6'b000100; //4 in decimal
        B = 6'b110111; //-9 in decimal
        #30;
        
       // just -B
        f = 3'b011;        
        A = 6'b001101; //13 in decimal
        B = 6'b000111; //7 in decimal
        #30;
        
        // just A < B (led high when A is lower)
        f = 3'b100; 
        A = 6'b101001; //41 in decimal
        B = 6'b011000; //24 in decimal
        #30;
        
        // just A < B (led high when A is lower)
        f = 3'b100; 
        A = 6'b000100; //4 in decimal
        B = 6'b011000; //24 in decimal
        #30;
        
        // just A < B (led high when A is lower)
        f = 3'b100; 
        A = 6'b001101; //13 in decimal
        B = 6'b000111; //7 in decimal
        #30; 
        
        // just A < B (led high when A is lower)
        f = 3'b100; 
        A = 6'b110111; //-9 in decimal
        B = 6'b000111; //7 in decimal
        #30; 
        
        // just A XNOR B
        f = 3'b101; 
        A = 6'b101001; //41 in decimal
        B = 6'b011000; //24 in decimal
        #30;
        
        // just A XNOR B
        f = 3'b101; 
        A = 6'b000100; //4 in decimal
        B = 6'b011000; //24 in decimal
        #30;
        
        // just A XNOR B
        f = 3'b101; 
        A = 6'b001101; //13 in decimal
        B = 6'b000111; //7 in decimal
        #30;
        
        // just A + B
        f = 3'b110; 
        A = 6'b101001; //41 in decimal
        B = 6'b000100; //4 in decimal
        #30;
     
        // just A + B
        f = 3'b110; 
        A = 6'b001101; //13 in decimal
        B = 6'b000111; //7 in decimal
        #30;
        
        // just A + B
        f = 3'b110; 
        A = 6'b110111; //-9 in decimal
        B = 6'b000111; //7 in decimal
        #30; 
        
        // just A - B
        f = 3'b111; 
        A = 6'b101001; //41 in decimal
        B = 6'b000100; //4 in decimal
        #30;
        
        // just A - B
        f = 3'b111; 
        A = 6'b001101; //13 in decimal
        B = 6'b000111; //7 in decimal
        #30;
        
        // just A - B
        f = 3'b111; 
        A = 6'b110111; //-9 in decimal
        B = 6'b000111; //7 in decimal
        #30;
        
    $finish;
    end
        
endmodule
