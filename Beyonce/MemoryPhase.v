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
    //inputs: ouputs from EX/MEM reg
    input clk,
    
    //input [31:0] BranchTarget_in, in decode
    //input [4:0] regdst,
    input [31:0] alu_result,
    input [31:0] reg_data2_in, //read data2 in 
    //input [31:0] pc_in, straight from decode to fetch
    //input zero_in, dont need
    input [5:0] opcode, //func - for decoder 
    
    //control signals from EX/MEM
    //input Branch, straight from decode to fetch
    //input [1:0] memtoreg,
    //input regwrite,
    input memwrite, 
    input memread,
    //input [1:0] decodeop_in,
    
    //output control signals 
    //output [1:0] memtoreg_out, 
    //output regwrite_out, 
    //output PCSrc, // not sure if thats the name 
    
    //output to MEM/WB
    output [31:0] read_data_out //read data memory out - read data 2 out
    //output [4:0] regdst_out,
    //output [31:0] alu_result_out
    //output [31:0] BranchTarget_out, 
    //output [31:0] pc_out
    );
    
    //control signals passthrough 
    //assign PSCrc = Branch & zero_in;
    //assign BranchTarget_out = BranchTarget_in;
    //assign alu_result_out = alu_result;
    //assign regwrite_out = regwrite;
    //assign memtoreg_out = memtoreg;
    //assign regdst_out = regdst;
    //assign pc_out = pc_in;
    
    wire [31:0] datamem_out; 
    
    DecodeUnit decode(datamem_out, reg_data2_in, opcode, alu_result[1:0], read_data_out);
    DataMemory DM(alu_result, read_data_out, clk, memwrite, memread, datamem_out);
    
endmodule

