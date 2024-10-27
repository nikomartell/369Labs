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
    //inputs 
    //outputs from ID/EX Register
    input [31:0] reg_data1_in, //read data1 out
    input [31:0] reg_data2_in, //read data2 out
    input [31:0] sign_ext_offset_in, //sign extended out
    input [4:0] rd_in, //destination reg out
    input [4:0] rt_in, //target reg out
    input [5:0] Func, //func out
    input [4:0] Shamt_in, //shamt out
    input [31:0] pc_in, 
    
    //input control signals from ID/EX Register
    input alusrc_in,
    input [2:0] regdst_in,
    input [3:0] aluop_in,
    input regwrite_in,
    input memwrite_in,
    input memread_in,
    input [1:0] memtoreg_in,
    input [1:0] decodeop,
    input branch_in,
    
    //outputs of execute - inputs to MEM/WB
    output [31:0] ALU_result,
    output [4:0] regdst, 
    output [31:0] JumpRegisterTarget, 
    output [31:0] reg_data2_out, 
    output [31:0] pc_out,
    output [31:0] BranchTarget,
    output Zero, 
    
    //output control signals 
    output branch_out,
    output regwrite_out,
    output [3:0] aluop_out,
    output memwrite_out,
    output memread_out,
    output [1:0] memtoreg_out,
    output [1:0] decodeop_out
    );
    
    // propagate data and control signals through the pipeline of processor
    assign BranchTarget = pc_in + (sign_ext_offset_in << 2);
    assign JumpRegisterTarget = reg_data1_in;
    assign regwrite_out = regwrite_in;
    assign memwrite_out = memwrite_in;
    assign memread_out = memread_in;
    assign memtoreg_out = memtoreg_in;
    assign reg_data2_out = reg_data2_in;
    assign pc_out = pc_in;
    assign decodeop_out = decodeop;
    assign branch_out = branch_in;
    
    wire [3:0] ALU_control;
    //wire [31:0] ALU_src_out;
    wire reg_data2_sign_ext_out;
    
    ALUController ALUCntrlr(aluop_in, Func, ALU_control);
    Mux32Bit2To1 ALUsrc(reg_data2_in, sign_ext_offset_in, alusrc_in, reg_data2_sign_ext_out); // Corrected typo
    ALU32Bit ALU(ALU_control, reg_data1_in, reg_data2_sign_ext_out, Shamt_in, ALU_result, Zero); // Corrected variable name
    
    Mux32Bit3To1 RegDst(rt_in, rd_in, regdst_in, regdst); // I think this is wrong
    
endmodule
