`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2024 09:36:17 PM
// Design Name: 
// Module Name: ExecutePhase
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


module ExecutePhase(
    //outputs from ID/EX Register
    input [31:0] reg_data1_in, //read data1 out
    input [31:0] reg_data2_in, //read data2 out
    input [31:0] sign_ext_offset_in, //sign extended out
    input [4:0] rd_in, //destination reg out
    input [4:0] rt_in, //target reg out
    input [5:0] ALUop, //func out
    input [4:0] Shamt_in, //shamt out
    
    //control signals from ID/EX Register
    input alusrc_in,
    input [2:0] regdst_in,
    input [3:0] aluop_in,
    
    //inputs to MEM/WB
    output [31:0] ALU_result,
    output [4:0] regdst
    
    );
    wire [3:0] ALU_control;
    wire [31:0] ALU_src_out;
    wire zero;
    
    ALUController ALUCntrlr(ALUop, sign_ext_offset_in[5:0], ALU_control);
    Mux32Bit2To1 ALUsrc(ALU_src_out, sign_ext_offset_in, reg_data2_in, alusrc_in);
    ALU32Bit ALU(ALU_control, reg_data1_in, ALU_src_out, Shamt_in, ALU_result, zero);
    
    Mux5Bit3To1 RegDst(rt_in, rd_in, regdst_in, regdst);
    
    
endmodule
