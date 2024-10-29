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




module Top(
    input clk,
    input rst,
    
    output [31:0] WriteData_sim,
    output [31:0] PCResult_sim
);
    //wires out of Fetch stage
    wire [31:0] PCADDResult_out;
    wire [31:0] Instruction_out;
    
    //wires out of IF/ID Register
    wire [31:0] pc_out_ifid;
    wire [31:0] instruction_out_ifid;

    //wires out of Decode stage to Fetch stage
    wire Jump_out;
    wire JumpRegister_out;
    wire [31:0] BranchTarget_out;
    wire [31:0] JumpTarget_out;
    
    //wires out of decode phase
    wire [2:0] RegDst_out;
    wire Branch_out;
    wire MemRead_out;
    wire MemtoReg_out;
    wire [3:0] ALUOp;
    wire MemWrite_out;
    wire ALUSrc_out;
    wire RegWrite_out;
  
    wire [31:0] reg_data1_out; //read data1 out
    wire [31:0] reg_data2_out; //read data2 out
    wire [31:0] sign_ext_offset_out; //sign extended out 
    wire [31:0] pc_out_decode;
    wire [4:0] rd_out; //destination reg out 
    wire [4:0] rt_out; //target reg out 
    wire [4:0] Shamt_out; //shamt out 
    wire [5:0] ALUop_out; // func out  
    
    
    //wires out of ID/EX Register
    wire [31:0] pc_out_idex; // address out
    wire [31:0] reg_data1_out_idex; //read data1 out
    wire [31:0] reg_data2_out_idex; //read data2 out
    wire [31:0] sign_ext_offset_out_idex; //sign extended out
    wire [4:0] rd_out_idex; //destination reg out
    wire [4:0] rt_out_idex; //target reg out
    wire [5:0] ALUop_idex; //func out
    wire [4:0]Shamt_out_idex; //shamt out
    wire alusrc_out_idex;
    wire [2:0] regdst_out_idex;
    wire regwrite_out_idex;
    wire [3:0] aluop_out_idex;
    wire memwrite_out_idex;
    wire memread_out_idex;
    wire memtoreg_out_idex;
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
    wire memtoreg_out_exmem;
    wire [5:0] opcode_out_exmem; 
    wire [1:0] decodeop_out_exmem;
    
    //wires out of memory phase
    wire [31:0] read_mem_data_out;
    
    //wires out of MEM/WB Register
    wire [31:0] alu_result_out_memwb;
    wire [31:0] WriteData_out_memwb;
    wire [4:0] WriteRegister_out_memwb;
    wire [31:0] pc_out_memwb;
    wire memtoreg_out_memwb;
    wire RegWrite_out_memwb;

    
    //assign WriteData_sim = WriteData_out_memwb; 
    
    //This is the value being written back into the register file, I think the wire you were pulling before was coming from
    //memory, so at clk cycle 92 it would stop showing xxxxxx to show 000000 again because in that clk cycle sw was  
    //actually doing the first memory operation 

    //problem so far I think it is the sign extender
    //sw works I believe
    //lw works

    //im not sure if alu operations work right as the current code is usign all imm fields for them, ill try to run 
    //a few adds and subs to see whats up
    
    assign WriteData_sim = WriteRegister_out_memwb; 
    
    //WB phase
    wire [31:0] memtoreg_out_wb;
    
    assign PCResult_sim = PCADDResult_out;
    
    InstructionFetchPhase Fetch(
    //inputs
        .Clk(clk),
        .Reset(rst),
        .pc_in(Branch_out),
        .Jump(Jump_out),
        .JumpRegister(JumpRegister_out),
        .BranchTarget(BranchTarget_out),
        .JumpTarget(JumpTarget_out), 
        .JumpRegisterTarget(reg_data1_out),
        
    //outputs
        .pc_out(PCADDResult_out), 
        .instr_out(Instruction_out)
    );
    
    if_id IFID(
    //inputs
        .clk(clk),
        .reset(rst), 
        .pc_in(PCADDResult_out), 
        .instr_in(Instruction_out),
        
    //outputs
        .pc_out(pc_out_ifid), 
        .instr_out(instruction_out_ifid)
    );
    
    InstructionDecodePhase Decode(
    //inputs
        .Clk(clk), 
        .Reset(rst), 
        .pc_in(pc_out_ifid), 
        .instr_in(instruction_out_ifid),
        .WriteData(memtoreg_out_wb), 
        .WriteRegister(WriteRegister_out_memwb), 
        .RegWrite_in(RegWrite_out_memwb),
        
    //output control signals
        .RegDst(RegDst_out), 
        .Jump(Jump_out), 
        .Branch(Branch_out), 
        .MemRead(MemRead_out), 
        .MemtoReg(MemtoReg_out), 
        .ALUOp(ALUOp), 
        .MemWrite(MemWrite_out), 
        .ALUSrc(ALUSrc_out), 
        .JumpRegister(JumpRegister_out),
        .RegWrite_out(RegWrite_out), 
    //outputs
        .JumpTarget(JumpTarget_out), 
        .reg_data1_in(reg_data1_out), 
        .reg_data2_in(reg_data2_out), 
        .pc_out(pc_out_decode), 
        .sign_ext_offset_in(sign_ext_offset_out), 
        .rd_in(rd_out), 
        .rt_in(rt_out), 
        .Shamt_in(Shamt_out),
        .Func(ALUop_out),
        .BranchTarget(BranchTarget_out)
    );
    
    id_ex IDEX(
    //input
        .clk(clk), 
        .reset(rst), 
        .pc_in(pc_out_decode), 
        .reg_data1(reg_data1_out), 
        .reg_data2(reg_data2_out), 
        .sign_ext_offset(sign_ext_offset_out), 
        .rd(rd_out), 
        .rt(rt_out), 
        .Func(ALUop_out), 
        .Shamt(Shamt_out),
        
    //outputs
        .pc_out(pc_out_idex), 
        .reg_data1_out(reg_data1_out_idex), 
        .reg_data2_out(reg_data2_out_idex), 
        .sign_ext_offset_out(sign_ext_offset_out_idex), 
        .rd_out(rd_out_idex), 
        .rt_out(rt_out_idex), 
        .Func_out(ALUop_idex),
        .Shamt_out(Shamt_out_idex),
        
    //input control signals
        .alusrc_in(ALUSrc_out), 
        .regdst_in(RegDst_out), 
        .regwrite_in(RegWrite_out), 
        .aluop_in(ALUOp), 
        .memwrite_in(MemWrite_out), 
        .memread_in(MemRead_out), 
        .memtoreg_in(MemtoReg_out), 
        
    //output control signals
        .alusrc_out(alusrc_out_idex), 
        .regdst_out(regdst_out_idex), 
        .regwrite_out(regwrite_out_idex),
        .memwrite_out(memwrite_out_idex), 
        .memread_out(memread_out_idex), 
        .memtoreg_out(memtoreg_out_idex)
    );
    
    ExecutePhase Execute(
    //inputs
        .reg_data1_in(reg_data1_out_idex), 
        .reg_data2_in(reg_data2_out_idex), 
        .sign_ext_offset_in(sign_ext_offset_out_idex), 
        .rd_in(rd_out_idex), 
        .rt_in(rt_out_idex), 
        .ALUop(ALUop_idex), 
        .Shamt_in(Shamt_out_idex), 
        .alusrc_in(alusrc_out_idex), 
        .regdst_in(regdst_out_idex), 
        .aluop_in(aluop_out_idex),
    //outputs
        .ALU_result(ALU_result), 
        .regdst(regdst)
    );
    
    ex_mem EXMEM(
    //inputs
        .clk(clk), 
        .reset(rst),
        .alu_result(ALU_result), 
        .read_data2(reg_data2_out_idex), 
        .regdst(regdst),
        .ALU_op(ALUop_idex), 
        
    //output
        .alu_result_out(alu_result_out_exmem), 
        .read_data2_out(read_data2_out_exmem), 
        .regdst_out(instruction_mux_out_exmem),
        .ALU_op_out(opcode_out_exmem),
        
    //input control signals
        .regwrite(regwrite_out_idex), 
        .memwrite(memwrite_out_idex), 
        .memread(memread_out_idex), 
        .memtoreg(memtoreg_out_idex),
        
    //output control signals
        .regwrite_out(regwrite_out_exmem), 
        .memwrite_out(memwrite_out_exmem), 
        .memread_out(memread_out_exmem), 
        .memtoreg_out(memtoreg_out_exmem)
    );
    MemoryPhase MemoryAcess(
    //inputs
        .clk(clk), 
        .alu_result(alu_result_out_exmem), 
        .reg_data2_in(read_data2_out_exmem), 
        .opcode(opcode_out_exmem),
        .memwrite(memwrite_out_exmem), 
        .memread(memread_out_exmem),
        
    //outputs
        .read_data_out(read_mem_data_out)
    );
    
    mem_wb MEMWB(
    //input
        .clk(clk), 
        .reset(rst), 
        .ALUResult(alu_result_out_exmem), 
        .mem_read(read_mem_data_out), 
        .regdst(instruction_mux_out_exmem), 
    //outputs
        .ALUResult_out(alu_result_out_memwb), 
        .mem_read_out(WriteData_out_memwb), 
        .regdst_out(WriteRegister_out_memwb),
    //intput control wire
        .memtoreg(memtoreg_out_exmem), 
        .regwrite(regwrite_out_exmem), 
    //output control wire
        .memtoreg_out(memtoreg_out_memwb), 
        .regwrite_out(RegWrite_out_memwb)
    );
    
    Mux32Bit2To1 MemToReg(
    //input
        .inA(alu_result_out_memwb), 
        .inB(WriteData_out_memwb), 
        .sel(memtoreg_out_memwb),
    //output
        .out(memtoreg_out_wb)
    );
    
    
endmodule
