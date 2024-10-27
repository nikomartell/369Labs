`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2024 03:13:14 PM
// Design Name: 
// Module Name: InstructionFetchStage
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


module InstructionFetchPhase(
    //inputs 
        input Clk, 
        input Reset, 
        
        //control signals for fetch stage 
        input pc_in, //pc adder 4 in 
        input Jump, 
        input JumpRegister, 
        
        //branch target reg, jump register reg, jump register trager address
        input [31:0] BranchTarget,
        input [31:0] JumpTarget, 
        input [31:0] JumpRegisterTarget,
        
        //outputs the current and the next instruction 
        output [31:0] pc_out, 
        output [31:0] instr_out
    );
        
        wire [31:0] PCAddResult_BranchTarget_out;
        wire [31:0] PCAddResult_BranchTarget_JumpTarget_out;
        wire [31:0] PCAddResult_BranchTarget_JumpTarget_JumpRegisterTarget_Out;
        wire [31:0] PCResult; 
        
        //pc+4 adder 
        PCAdder PC_Adder (
        //inputs - the current instruction 
        .PCResult(PCResult),
        
        //outputs - the next instruction 
        .PCAddResult(pc_out)
        );
        
        //mux 
        Mux32Bit2To1 pc_out_signal (
        //inputs: next instruction and branching target address
        .inA(pc_out),
        .inB(BranchTarget),
        
        //control signal for mux
        .sel(pc_in),
        
        //outputs: next instruction or branching target address
        .out(PCAddResult_BranchTarget_out)
        );
        
        //mux for supporting j
        Mux32Bit2To1 Jump_Signal (
        //inputs: jump target address and next instruction or branching target address
        .inA(PCAddResult_BranchTarget_out),
        .inB(JumpTarget),
        
        //control signals for mux
        .sel(Jump),
        
        //outputs: jump target address, next instruction or branching traget address
        .out(PCAddResult_BranchTarget_JumpTarget_out)
        );
        
        //mux for supporting jr
        Mux32Bit2To1 JumpRegister_Signal (
        //inputs: jumpregister target address and jump target address 
        .inA(PCAddResult_BranchTarget_JumpTarget_out),
        .inB(JumpRegisterTarget),
        
        //control signals for mux
        .sel(JumpRegister),
        
        //outputs: jump target address, next instruction or branching traget address
        .out(PCAddResult_BranchTarget_JumpTarget_JumpRegisterTarget_out)
        );
        
        //program counter 
        ProgramCounter Program_Counter (
        //inputs: clk and reset
        .Clk(Clk),
        .Reset(Reset),
        
        //jumpreg target address, jump target address, next instruction or branching target address
        .Address(PCAddResult_BranchTarget_JumpTarget_JumpRegisterTarget_out),
        
        //outputs: jumpregister target address, jump target address, 
        .PCResult(PCResult)
        );
        
        //instruction memory 
        InstructionMemory Instruction_Memory (
        //inputs: jumpregister target address, jump target address, next instruction or branching target address 
        .Address(PCResult),
        
        //outputs: next instruction 
        .Instruction(instr_out) 
        );
        
endmodule
