`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2024 02:29:52 PM
// Design Name: 
// Module Name: Top
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


module Top(Reset, Clk, out7, en_out);
    
    input Reset, Clk;
    output [6:0] out7;
    output [7:0] en_out;
    
    wire ClckOut;
    wire [31:0] Instruction;
    wire [31:0] PCResult;
    
    InstructionFetchUnit instruction_fetch(Reset, Clckout, Instruction, PCResult);
    ClkDiv clock(Clk,0,ClckOut);
    Two4DigitDisplay display(Clk, Instruction[15:0], PCResult[15:0], out7, en_out);
    

    
endmodule
