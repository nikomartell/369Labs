`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2024 04:14:59 PM
// Design Name: 
// Module Name: InstructionDecodeStage
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


module InstructionDecodePhase(
    //inputs 
    input Clk, 
    input Reset, 
    
    //instruction, branch adder, reg and data
    //from pipelined reg if_id
    input [31:0] instr_in, //instruction in 
    input [31:0] pc_in, //pc adder 4 out  
    
    //from reg file
    input [31:0] WriteData, //write data out 
    input [4:0] WriteRegister, //write register out 
    
    //control signals
    input RegWrite_in, 
    
    //outputs 
    //control signals from controller 
    output [2:0] RegDst,
    output Jump,
    output Branch,
    output MemRead,
    output [1:0] MemtoReg,
    output [3:0] ALUOp,
    output MemWrite,
    output ALUSrc,
    output JumpRegister,
    output RegWrite_out,
    //output [1:0] LoadType,
    //output [1:0] StoreType,    
    
    //instructions decoded 
    output [31:0] JumpTarget, //needed in the execute phase too
    output wire [31:0] reg_data1_in, //read data1 out
    output wire [31:0] reg_data2_in, //read data2 out 
    output [31:0] pc_out, //needed in the execute phase too , pc+4 out 
    output wire [31:0] sign_ext_offset_in, //sign extended out 
    output [4:0] rd_in, //destination reg out 
    output [4:0] rt_in, //target reg out 
    output [4:0] Shamt_in, //shamt out 
    output [5:0] Func, // func out  
    output [31:0] BranchTarget //BranchTarget
);

    //output wires from comparator to controller for branches
    wire beq, bgt, blt, zero;

    Controller Controller_main ( 
    //inputs: parsed instructions 
    .OPCode(instr_in[31:26]),
    .Function(instr_in[5:0]),
    .TargetReg(instr_in[20:16]),
    
    //inputs: from comparator
    .beq(beq),
    .blt(blt),
    .bgt(bgt),
    .zero(zero),
    
    //outputs: control signals 
        .RegDst(RegDst),
        .ALUOp(ALUOp),
        .ALUSrc(ALUSrc),
        .Branch(Branch),
        .Jump(Jump),
        .JumpReg(JumpRegister), 
        .MemRead(MemRead),
        .MemWrite(MemWrite),
        .RegWrite(RegWrite_out),
        .MemToReg(MemtoReg)
        //.LoadType(LoadType),
        //.StoreType(StoreType)
    );
    
    RegisterFile Register_File (
    //inputs: control signals 
        .RegWrite(RegWrite_in),
        
    //read and write the registers
        .ReadRegister1(instr_in[25:21]), //rs
        .ReadRegister2(instr_in[20:16]), //rt
        .WriteRegister(WriteRegister), //rd
        .WriteData(WriteData),
        
        // clk and reset
        .Clk(Clk),
        .Reset(Reset),

        // Ouputs: Read Data
        .ReadData1(reg_data1_in),
        .ReadData2(reg_data2_in)
    );
    
    Comparator Comp(
    //inputs
        .ReadData1(reg_data1_in),
        .ReadData2(reg_data2_in),
    //outputs
        .beq(beq),
        .blt(blt),
        .bgt(bgt),
        .zero(zero)
    );
    
    SignExtension Sign_Extension (
    //inputs 
    .in(instr_in[15:0]), 
    
    //outputs 
    .out(sign_ext_offset_in)
    );
    
    //branch target address calculated with pc plus the shifted offset value * 4
    assign BranchTarget = pc_in + (sign_ext_offset_in << 2);
    
    //jump target address concatenating upper bits of current PC
    //with sl jump instruction
    assign JumpTarget = { pc_in[31:28], (instr_in[25:0] << 2) };
    
    assign pc_out = pc_in;
    assign rt_in = instr_in[20:16];
    assign rd_in = instr_in[15:11]; 
    assign Shamnt_in = instr_in[10:6];
    assign Func = instr_in[5:0];
    
endmodule