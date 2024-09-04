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


module Top();
    
    reg Reset;
    reg Clk;
    
    wire [31:0] ClckOut;
    wire [31:0] Instruction;
    wire [31:0] PCResult;
    
    InstructionFetchUnit instruction_fetch(Instruction, PCResult, Reset);
    ClkDiv clock(Clk,0,ClckOut);
    Two4DigitDisplay display(Clk, NumberA, NumberB, out7, en_out7);
    

    
endmodule
