`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2024 02:38:07 PM
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
    reg Clk, Rst;
    wire [31:0] PCPlus4;
    wire [31:0] PCBranch;
    wire [31:0] PCip;
    wire [31:0] IMip;
    wire PCSrc;
    
    
    
    Mux32Bit2To1 PCSrcMux(PCip, PCBranch, PCPlus4, PCSrc);
    ProgramCountrer PC(PCip, IMip, Rst, Clk);
    
    
    
endmodule
