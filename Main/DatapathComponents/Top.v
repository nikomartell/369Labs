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
    wire [4:0] ALUOp;
    wire [4:0] id_exALUOP;
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
    wire [4:0] Shamt;
    wire [5:0] ex_memOpCode;
    wire [31:0] Decode_out;
    wire JumpReg;
    
    
    
    Mux32Bit3To1 PCSrcMux(PCip, PCPlus4, PCBranch, {6'b0, if_idIMop[25:0]}, PCSrc);
    ProgramCounter PC(PCip, PCop, Rst, Clk);
    PCAdder Adder(PCop, 4, PCPlus4);
    InstructionMemory IM(PCop, IMop);
    if_id ifid(Clk, Rst, PCPlus4, IMop, if_idPCPlus4, if_idIMop);
    
    
    RegisterFile RegFile(if_idIMop[25:21], if_idIMop[20:16], mem_wbRegDstop, WriteDataip, mem_wbRegWrite, Clk, ReadData1, ReadData2);
    SignExtension SgnExt(if_idIMop[15:0], SgnExtop);
    PCAdder PCBrnch(if_idPCPlus4, SgnExtop << 2, PCBranch);
    Comparator Comp(ReadData1, ReadData2, beq, blt, bgt);
    Controller Cntlr(if_idIMop[31:26], if_idIMop[5:0], if_idIMop[20:16], beq, blt, bgt, RegWrite, ALUOp, ALUSrc, RegDst, MemWrite, MemRead, MemToReg, PCSrc, JumpReg);
    id_ex idex(Clk, Rst, ReadData1, ReadData2, SgnExtop, if_idIMop[15:11], if_idIMop[20:16], ALUSrc, ALUop, RegDst, PCSrc, MemRead, MemWrite, MemToReg, RegWrite, if_idIMop[10:6],
                id_exReadData1, id_exReadData2, id_exSgnExtop, id_exRd, id_exRt, id_exALUSrc, id_exALUop, id_exRegDst, id_exPCSrc, id_exMemRead, id_exMemWrite, id_exMemToReg, id_exRegWrite, Shamt);
    
    
    Mux32Bit2To1 RegDstMux(RegDstop, id_exRd, id_exRt, id_exRegDst); 
    ALUController ALUCntlr(id_exALUOP, id_exSgnExtop[5:0], ALUControl);
    Mux32Bit2To1 ALUSrcMux(ALUSrcOp, id_exSgnExtop, id_exReadData2, id_exALUSrc);
    ALU32Bit ALU(ALUControl, id_exReadData1, ALUSrcOp, Shamt, ALUResult, zero);
    ex_mem exmem(Clk, Rst, ALUResult, id_exReadData2, RegDstOp, id_exPCSrc, id_exMemRead, id_exMemWrite, id_exMemToReg, id_exRegWrite, id_exALUOP,
                    ex_memALUResult, ex_memReadData2, ex_memRegDstop, ex_memPCSrc, ex_memMemRead, ex_memMemWrite, ex_memMemToReg, ex_memRegWrite, ex_memOpCode);
                    
    DataMemory DataMem(ex_memALUResult, Decode_out, Clk, ex_memMemWrite, ex_memMemRead, DataMemOp);
    DecodeUnit Decode(DataMemOp, ex_memReadData2, ex_memOpCode, ex_memALUResult[1:0], Decode_out);
    mem_wb memwb(Clk, Rst, ex_memALUResult, DataMemOp, ex_memRegDstop, ex_memMemToReg, ex_memRegWrite, 
                    mem_wbALUResult, mem_wbDataMemop, mem_wbRegDstop, mem_wbMemToReg, mem_wbRegWrite);
                    
    Mux32Bit2To1 MemToRegMux(WriteDataip, mem_wbALUResult, mem_wbDataMemop, mem_wbMemToReg);
    
    
endmodule
