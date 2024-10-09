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
            0: begin
                case (Function)
                    32: ALUControl <= 0; //add
                    34: ALUControl <= 1; //sub
                    24: ALUControl <= 8; //mul
                    36: ALUControl <= 2; //and
                    37: ALUControl <= 3; //or
                    39: ALUControl <= 4; //nor
                    38: ALUControl <= 5; //xor
                    0: ALUControl <= 6; //sll
                    2: ALUControl <= 7; //srl
                    42: ALUControl <= 9; //slt
                endcase
            end
            8: ALUControl <= 0; //addi
            35: ALUControl <= 0; //lw
            43: ALUControl <= 0; //sw
            40: ALUControl <= 0; //sb
            33: ALUControl <= 0; //lh
            32: ALUControl <= 0; //lb
            41: ALUControl <= 0; //sh
            9: ALUControl <= 10; //bgez
            4: ALUControl <= 1; //beq
            5: ALUControl <= 11; //bne
            7: ALUControl <= 12; //bgtz
            6: ALUControl <= 13; //blez
            11: ALUControl <= 14; //bltz
            12: ALUControl <= 2; //andi
            13: ALUControl <= 3; //ori
            14: ALUControl <= 5; //xori
            10: ALUControl <= 9; //slti
        endcase
    end

endmodule
