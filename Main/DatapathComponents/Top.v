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

// Currently I see a few problems we need to resolve
// 1) Decode phase does not have comparator so if a branch instruction is read it will always branch
// 2) Controller does not consider beq, blt, bgt which has the same problem as 1)
// 3) Controller does not create a decode signal which I am going to use for the memory phase
// I have not updated these things as we have different methods of coding
// Please do not delete any code as it takes a while to find what was deleted and fix it

module Top(
    input clk,
    input rst
);
    //wires out of Fetch stage
    wire [31:0] PCADDResult_out;
    wire [31:0] Instruction_out;
    
    //wires out of IF/ID Register
    wire [31:0] pc_out_ifid;
    wire [31:0] instruction_out_ifid;

    //wires out of Decode stage to Fetch stage
    wire PCSrc_out;
    wire Jump_out;
    wire JumpRegister_out;
    wire [31:0] BranchTarget_out;
    wire [31:0] JumpTarget_out;
    wire [31:0] JumpRegisterTarget_out;
    
    //wires out of decode phase
    wire [2:0] RegDst_out;
    wire Jump_out_decode;
    wire Branch_out;
    wire MemRead_out;
    wire [1:0] MemtoReg_out;
    wire [3:0] ALUOp;
    wire MemWrite_out;
    wire ALUSrc_out;
    wire RegWrite_out;
    wire [1:0] LoadType_out;
    wire [1:0] StoreType_out; 
  
    wire [31:0] reg_data1_out; //read data1 out
    wire [31:0] reg_data2_out; //read data2 out 
    wire [31:0] pc_out; //needed in the execute phase too , pc+4 out 
    wire [31:0] sign_ext_offset_out; //sign extended out 
    wire [4:0] rd_out; //destination reg out 
    wire [4:0] rt_out; //target reg out 
    wire [4:0] Shamt_out; //shamt out 
    wire [5:0] ALUop_out; // func out  
    
    wire [1:0] decodeop_out; //doesnt actually exist, dont know what we're doing with data mem area as my code keeps getting deleted
    
    //wires out of ID/EX Register
    wire [31:0] pc_out_idex; // address out
    wire [31:0] reg_data1_out_idex; //read data1 out
    wire [31:0] reg_data2_out_idex; //read data2 out
    wire [31:0] sign_ext_offset_out_idex; //sign extended out
    wire [4:0] rd_out_idex; //destination reg out
    wire [4:0] rt_out_idex; //target reg out
    wire [5:0] ALUop_idex; //func out
    wire Shamt_out_idex; //shamt out
    wire alusrc_out_idex;
    wire [2:0] regdst_out_idex;
    wire regwrite_out_idex;
    wire [3:0] aluop_out_idex;
    wire memwrite_out_idex;
    wire memread_out_idex;
    wire [1:0] memtoreg_out_idex;
    wire [1:0] decodeop_out_idex;
    
    //wires out of execute phase
    wire [31:0] ALU_result;
    wire [4:0] regdst;
    
    //wires out of EX/MEM Register 
    wire [31:0] pc_out_exmem; //pc adder 4 out 
    wire [31:0] alu_result_out_exmem;
    wire [31:0] read_data2_out_exmem;
    wire [4:0] instruction_mux_out_exmem; //write reg out mux 
    wire regwrite_out_exmem;
    wire memwrite_out_exmem;
    wire memread_out_exmem;
    wire [1:0] memtoreg_out_exmem;
    wire [5:0] opcode_out_exmem; //i just want to try to see if decode will work with these 2
    wire [1:0] decodeop_out_exmem;
    
    //wires out of memory phase
    wire [31:0] read_mem_data_out;
    
    //wires out of MEM/WB Register
    wire [31:0] alu_result_out_memwb;
    wire [31:0] WriteData_out_memwb;
    wire [4:0] WriteRegister_out_memwb;
    wire [31:0] pc_out_memwb;
    wire [1:0] memtoreg_out_memwb;
    wire RegWrite_out_memwb;
    
    //WB phase
    wire [31:0] memtoreg_out_wb;
    
    InstructionFetchPhase Fetch(clk, rst, PCSrc_out, Jump_out, JumpRegister_out, BranchTarget_out, JumpTarget_out, JumpRegisterTarget_out,
        PCADDResult_out, Instruction_out
    );
    if_id IFID(clk, rst, PCADDResult_out, Instruction_out,
        pc_out_ifid, instruction_out_ifid
    );
    InstructionDecodePhase Decode(clk, rst, pc_out_ifid, instruction_out_ifid, memtoreg_out_wb, WriteRegister_out_memwb, RegWrite_out_memwb,
        RegDst_out, Jump_out_decode, Branch_out, MemRead_out, MemtoReg_out, ALUOp, MemWrite_out, ALUSrc_out, JumpRegister_out,
        RegWrite_out, LoadType_out, StoreType_out, JumpTarget_out, reg_data1_out, reg_data2_out, pc_out, sign_ext_offset_out, 
        rd_out, rt_out, Shamt_out, ALUop_out
    );
    id_ex IDEX(clk, rst, pc_out, reg_data1_out, reg_data2_out, sign_ext_offset_out, rd_out, rt_out, ALUop_out, Shamt_out,
        pc_out_idex, reg_data1_out_idex, reg_data2_out_idex, sign_ext_offset_out_idex, rd_out_idex, rt_out_idex, ALUop_idex,
        Shamt_out_idex, ALUSrc_out, RegDst_out, RegWrite_out, ALUOp, MemWrite_out, MemRead_out, MemtoReg_out, decodeop_out, 
        alusrc_out_idex, regdst_out_idex, regwrite_out_idex, memwrite_out_idex, memread_out_idex, memtoreg_out_idex, decodeop_out_idex
    );
    ExecutePhase EX(reg_data1_out_idex, reg_data2_out_idex, sign_ext_offset_out_idex, rd_out_idex, rt_out_idex, ALUop_idex, Shamt_out_idex, alusrc_out_idex, regdst_out_idex, aluop_out_idex,
        ALU_result, regdst
    );
    ex_mem EXMEM(clk, rst, pc_out_idex, ALU_result, reg_data2_out_idex, regdst, ALUop_idex, decodeop_out_idex, 
        pc_out_exmem, alu_result_out_exmem, read_data2_out_exmem, instruction_mux_out_exmem, opcode_out_exmem, decodeop_out_exmem,
        regwrite_out_idex, memwrite_out_idex, memread_out_idex, memtoreg_out_idex,
        regwrite_out_exmem, memwrite_out_exmem, memread_out_exmem, memtoreg_out_exmem
    );
    MemoryPhase MEM(clk, alu_result_out_exmem, read_data2_out_exmem, opcode_out_exmem, decodeop_out_exmem, memwrite_out_exmem, memread_out_exmem,
        read_mem_data_out
    );
    mem_wb MEMWB(clk, rst, alu_result_out_exmem, read_mem_data_out, instruction_mux_out_exmem, pc_out_exmem, 
        alu_result_out_memwb, WriteData_out_memwb, WriteRegister_out_memwb, pc_out_memwb, 
        memtoreg_out_exmem, regwrite_out_exmem, memtoreg_out_memwb, RegWrite_out_memwb
    );
    Mux32Bit2To1 MemToReg(memtoreg_out_wb, alu_result_out_memwb, WriteData_out_memwb, memtoreg_out_memwb);
    
    
endmodule
