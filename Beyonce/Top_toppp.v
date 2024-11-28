`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 11:48:36 AM
// Design Name: 
// Module Name: Top_toppp
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


module Top_toppp(
    input Clk,
    input rst,
    output [6:0] out7,
    output [7:0] en_out
    );
    wire Clk_out;
    wire [31:0] x;
    wire [31:0] y;
    
    
    ClkDiv clock(Clk,0,Clk_out);
    Two4DigitDisplay display(Clk, x[15:0], y[15:0], out7, en_out);
    Top top(Clk_out, rst, x, y);
    
    
endmodule
