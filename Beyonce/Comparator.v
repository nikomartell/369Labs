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


module Comparator(Clk, Reg1, Reg2, beq, blt, bgt, zero, bltz, bgtz);
    input Clk;
    input [31:0] Reg1;
    input [31:0] Reg2;
    output reg beq, blt, bgt, zero, bltz, bgtz;
    
    always @(*) begin 
        if (Reg1 > Reg2) begin 
            beq <= 0;
            blt <= 0;
            bgt <= 1;
            zero <= 0;
            bgtz <= 0;
            bltz <= 0;
        end
        else if (Reg1 < Reg2) begin 
            beq <= 0;
            blt <= 1;
            bgt <= 0;
            zero <= 0;
            bgtz <= 0;
            bltz <= 0;
        end
        else if (Reg1 == Reg2) begin 
            beq <= 1;
            blt <= 0;
            bgt <= 0;
            zero <= 0;
            bgtz <= 0;
            bltz <= 0;
        end
        else if (Reg1 == 0) begin 
            beq <= 0;
            blt <= 0;
            bgt <= 0;
            zero <= 1;
            bgtz <= 0;
            bltz <= 0;
        end
        else if (Reg1 > 0) begin 
            beq <= 0;
            blt <= 0;
            bgt <= 0;
            zero <= 0;
            bgtz <= 1;
            bltz <= 0;
        end
        else if (Reg1 < 0) begin 
            beq <= 0;
            blt <= 0;
            bgt <= 0;
            zero <= 0;
            bgtz <= 0;
            bltz <= 1;
        end
        else begin
            beq <= 0;
            blt <= 0;
            bgt <= 0;
            zero <= 0;
        end
        
    end
endmodule
