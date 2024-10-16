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
    wire [31:0] PCop;
    wire [1:0] PCSrc;
    wire [31:0] IMop;
    wire [31:0] if_idPCPlus4;
    wire [31:0] if_idIMop;
    wire [4:0] RegDstop;
    wire [4:0] ex_memRegDstop;
    wire [4:0] mem_wbRegDstop;
    wire [31:0] WriteDataip;
    wire [31:0] ReadData1;
    wire [31:0] ReadData2;
    wire [31:0] SgnExtop;
    wire beq, blt, bgt;
    wire RegWrite, ALUSrc, RegDst, MemWrite, MemRead, MemToReg, Jump;
    wire id_exALUSrc, id_exRegDst, id_exMemRead, id_exMemWrite, id_exMemToReg, id_exRegWrite;
    wire [31:0] id_exSgnExtop;
    wire [31:0] id_exReadData1;
    wire [31:0] id_exReadData2;
    wire [4:0] id_exRd;
    wire [4:0] id_exRt;
    wire [3:0] ALUControl;
    wire [5:0] id_exALUOP;
    wire [31:0] ALUSrcOp;
    wire [31:0] ALUResult;
    wire [31:0] ex_memALUResult;
    wire [31:0] ex_memReadData2;
    wire zero;
    wire ex_memPCSrc, ex_memMemRead, ex_memMemWrite, ex_memMemToReg, ex_memRegWrite;
    wire [31:0] DataMemOp;
    wire [31:0] mem_wbALUResult;
    wire [31:0] mem_wbDataMemop;
    wire mem_wbMemToReg, mem_wbRegWrite;
    
    
    Mux32Bit3To1 PCSrcMux(PCip, PCPlus4, PCBranch, if_idIMop[25:0], PCSrc);
    ProgramCounter PC(PCip, PCop, Rst, Clk);
    Adder PCplus4(4, PCop, PCPlus4);
    InstructionMemory IM(IMip, IMop);
    if_id ifid(Clk, Rst, PCPlus4, IMop, if_idPCPlus4, if_idIMop);
    
    
    RegisterFile RegFile(if_idIMop[25:21], if_idIMop[20:16], mem_wbRegDstop, WriteDataip, mem_wbRegWrite, Clk, ReadData1, ReadData2);
    SignExtension SgnExt(if_idIMop[15:0], SgnExtop);
    Adder PCBrnch(if_idPCPlus4, SgnExtop << 2);
    Comparator Comp(ReadData1, ReadData2, beq, blt, bgt);
    Controller Cntlr(if_idIMop, beq, blt, bgt, RegWrite, ALUSrc, RegDst, MemWrite, MemRead, MemToReg, Jump);
    id_ex idex(Clk, Rst, ReadData1, ReadData2, SgnExtop, if_idIMop[15:11], if_idIMop[20:16], ALUSrc, if_idIMop[31:26], RegDst, PCSrc, MemRead, MemWrite, MemToReg, RegWrite, 
                id_exReadData1, id_exReadData2, id_exSgnExtop, id_exRd, id_exRt, id_exALUSrc, id_exALUop, id_exRegDst, id_exPCSrc, id_exMemRead, id_exMemWrite, id_exMemToReg, id_exRegWrite);
    
    
    Mux32Bit2To1 RegDstMux(RegDstop, id_exRd, id_exRt, id_exRegDst); 
    ALUController ALUCntlr(id_exALUOP, id_exSgnExtop[5:0], ALUControl);
    Mux32Bit2To1 ALUSrcMux(ALUSrcOp, id_exSgnExtop, id_exReadData2, id_exALUSrc);
    ALU32Bit ALU(ALUControl, id_exReadData1, ALUSrcOp, ALUResult, zero);
    ex_mem exmem(Clk, Rst, ALUResult, id_exReadData2, RegDstOp, id_exPCSrc, id_exMemRead, id_exMemWrite, id_exMemToReg, id_exRegWrite,
                    ex_memALUResult, ex_memReadData2, ex_memRegDstop, ex_memPCSrc, ex_memMemRead, ex_memMemWrite, ex_memMemToReg, ex_memRegWrite);
                    
    DataMemory DataMem(ex_memALUResult, ex_memReadData2, Clk, ex_memMemWrite, ex_memMemRead, DataMemOp);
    mem_wb memwb(Clk, Rst, ex_memALUResult, DataMemOp, ex_memRegDstop, ex_memMemToReg, ex_memRegWrite, 
                    mem_wbALUResult, mem_wbDataMemop, mem_wbRegDstop, mem_wbMemToReg, mem_wbRegWrite);
    Mux32Bit2To1 MemToRegMux(WriteDataip, mem_wbALUResult, mem_wbDataMemop, mem_wbMemToReg);
    
    
endmodule
