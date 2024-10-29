`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2024 02:02:06 PM
// Design Name: 
// Module Name: ALUController
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


module ALUController(OpCode, Function,  ALUControl);
    input [5:0] OpCode;
    input [5:0] Function;
    output reg [3:0] ALUControl;
    
    always @(OpCode, Function) begin
        case (OpCode)
            6'b000000: begin
                case (Function)
                    6'b000000: ALUControl <= 6; //sll
                    6'b000010: ALUControl <= 7; //srl
                    6'b101010: ALUControl <= 9; //slt
                    6'b100101: ALUControl <= 3; //or
                    6'b100111: ALUControl <= 4; //nor
                    6'b100110: ALUControl <= 5; //xor
                    6'b100000: ALUControl <= 0; //add
                    6'b100010: ALUControl <= 1; //sub
                    6'b100100: ALUControl <= 2; //and
                    default: ALUControl <= 0;
                endcase
            end
            6'b011100: ALUControl <= 8; //mul
            6'b001100: ALUControl <= 2; //andi
            6'b001000: ALUControl <= 0; //addi
            6'b100011: ALUControl <= 0; //lw
            6'b101011: ALUControl <= 0; //sw
            6'b101000: ALUControl <= 0; //sb
            6'b100001: ALUControl <= 0; //lh
            6'b100000: ALUControl <= 0; //lb
            6'b101001: ALUControl <= 0; //sh
            6'b001101: ALUControl <= 3; //ori
            6'b001110: ALUControl <= 5; //xori
            6'b001010: ALUControl <= 9; //slti
            9: ALUControl <= 10; //bgez
            4: ALUControl <= 1; //beq
            5: ALUControl <= 11; //bne
            7: ALUControl <= 12; //bgtz
            6: ALUControl <= 13; //blez
            11: ALUControl <= 14; //bltz
            default: ALUControl <= 0;
        endcase
    end

endmodule
