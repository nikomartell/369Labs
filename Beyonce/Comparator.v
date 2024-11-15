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


module Comparator(Reg1, Reg2, beq, blt, bgt, zero, bltz, bgtz);
    input [31:0] Reg1;
    input [31:0] Reg2;
    output reg beq, blt, bgt, zero, bltz, bgtz;

    initial begin
            beq <= 0;
            blt <= 0;
            bgt <= 0;
            zero <= 0;
            bgtz <= 0;
            bltz <= 0;
    end
    always @(*) begin
    beq <= 0;
    blt <= 0;
    bgt <= 0;
    zero <= 0;
    bgtz <= 0;
    bltz <= 0;
        if (Reg1[31] && Reg2[31]) begin
            bltz <= 1;
            if (Reg1 > Reg2) begin
                bgt <= 1;
            end
            else if (Reg1 < Reg2) begin 
                blt <= 1;
            end
            else if (Reg1 == Reg2) begin 
                beq <= 1;
            end
        end
        else if (Reg1[31]) begin
            bltz <= 1;
            blt <= 1;
        end
        else if (Reg2[31]) begin
            bgt <= 1;
            if (Reg1 == 0) begin
                zero <= 1;
            end
            if (Reg1 > 0) begin 
                bgtz <= 1;
            end 
            if (Reg1 < 0) begin 
                bltz <= 1;
            end
        end
        else begin 
            if (Reg1 > Reg2) begin
                bgt <= 1;
            end
            else if (Reg1 < Reg2) begin 
                blt <= 1;
            end
            else if (Reg1 == Reg2) begin 
                beq <= 1;
            end
            if (Reg1 == 0) begin
                zero <= 1;
            end
            if (Reg1 > 0) begin 
                bgtz <= 1;
            end 
            if (Reg1 < 0) begin 
                bltz <= 1;
            end
        end
        
    end
endmodule
