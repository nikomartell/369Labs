`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2024 02:04:58 PM
// Design Name: 
// Module Name: Comparator
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


module Comparator(Reg1, Reg2, beq, blt, bgt);
    input [31:0] Reg1;
    input [31:0] Reg2;
    output reg beq, blt, bgt;
    
    always @(Reg1, Reg2) begin
        if (Reg1 > Reg2) begin
            beq <= 0; 
            blt <= 0; 
            bgt <= 1; 
        end
        else if (Reg1 < Reg2) begin
            beq <= 0;
            blt <= 1;
            bgt <= 0;
        end
        else if (Reg1 == Reg2) begin 
            beq <= 1;
            blt <= 0;
            bgt <= 0;
        end      
    end
endmodule
