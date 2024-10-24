`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2024 10:38:27 PM
// Design Name: 
// Module Name: MemoryPhase
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


module MemoryPhase(
    //ouput from EX/MEM
    input clk,
    input [31:0] alu_result,
    input [31:0] read_data2, //read data2 in 
    input [5:0] opcode,
    input [1:0] decodeop,
        
    //control signals from EX/MEM
    input memwrite, 
    input memread,
    
    //output to MEM/WB
    output reg [31:0] read_data_out
    );
    
    wire [31:0] datamem_out;
    
    DecodeUnit decode(datamem_out, read_data2, opcode, decodeop, read_data_out);
    DataMemory DM(alu_result, read_data_out, clk, memwrite, memread, datamem_out);
    
endmodule