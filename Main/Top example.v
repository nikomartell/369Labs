`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2024 11:49:32 AM
// Design Name: 
// Module Name: ProcessorDatapath_Top
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


module ProcessorDatapath_Top(
    // Inputs
    // Clk & Reset
    input Clk,
    input Reset,
    

    output [31:0] Instruction_sim,
    output [31:0] ALUResult_sim,
    output [31:0] ReadData1_sim,
    output [31:0] ReadData2_sim,
    output [3:0] ALUOp_sim,
    output ALUSrc_sim,
    output MemRead_sim,
    output MemWrite_sim,
    output RegWrite_sim,
    output [1:0] MemtoReg_sim,
    output Branch_sim,
    output Jump_sim,
    output JumpRegister_sim,
    output [4:0] WriteRegister_sim,
    output [31:0] BranchTarget_sim,
    output [31:0] JumpTarget_sim,
    output [31:0] JumpRegisterTarget_sim,
    output [31:0] PCAdder4_sim,
    output PCSrc_sim,
    output [31:0] SignExtend_sim,
    output [31:0] WriteData_sim,
    output [1:0] LoadType_sim,
    output [1:0] StoreType_sim
);

    wire Jump;
    wire JumpRegister;
    wire PCSrc;
    wire ZeroSignal;
    wire Branch;
    wire MemRead;
    wire MemWrite;
    wire RegWrite;
    wire [1:0] MemtoReg;
    
    assign MemRead_sim = MemRead;
    assign MemWrite_sim = MemWrite;
    assign RegWrite_sim = RegWrite;
    assign MemtoReg_sim = MemtoReg;
    assign Branch_sim = Branch;
    assign Jump_sim = Jump;
    assign JumpRegister_sim = JumpRegister;
    assign PCSrc_sim = PCSrc;
    
    wire [31:0] JumpTarget;
    wire [31:0] JumpRegisterTarget;
    wire [31:0] BranchTarget;
    wire [4:0] RegisterDestination;
    wire [31:0] ALUResult;
    wire [31:0] ReadDataMemory;
    wire [31:0] PCAdder4;
    wire [31:0] WriteData;
    
    assign WriteData_sim = WriteData; 
    assign BranchTarget_sim = BranchTarget;  
    assign JumpTarget_sim = JumpTarget;
    assign JumpRegisterTarget_sim = JumpRegisterTarget; 
    
    // Connections from Instruction Fetch to IF/ID
    wire [31:0] PCAddResult_Instruction_Fetch_To_IF_ID;
    wire [31:0] Instruction_Instruction_Fetch_To_IF_ID;
    
    assign PCAdder4_sim = PCAddResult_Instruction_Fetch_To_IF_ID;

    // Connections from IF/ID Instruction Decode
    wire [31:0] PCAddResult_IF_ID_To_Instruction_Decode;
    wire [31:0] Instruction_IF_ID_To_Instruction_Decode;
    
    assign Instruction_sim = Instruction_IF_ID_To_Instruction_Decode;
     
    // Connections from Instruction Decode to ID/EX
    wire [2:0] RegDst_Instruction_Decode_To_ID_EX;
    wire Branch_Instruction_Decode_To_ID_EX;
    wire MemRead_Instruction_Decode_To_ID_EX;
    wire [1:0] MemtoReg_Instruction_Decode_To_ID_EX;
    wire [3:0] ALUOp_Instruction_Decode_To_ID_EX;
    wire MemWrite_Instruction_Decode_To_ID_EX;
    wire ALUSrc_Instruction_Decode_To_ID_EX;
    wire RegWrite_Instruction_Decode_To_ID_EX;
    wire [1:0] LoadType_Instruction_Decode_To_ID_EX;
    wire [1:0] StoreType_Instruction_Decode_To_ID_EX;
        
    wire [31:0] ReadData1_Instruction_Decode_To_ID_EX;
    wire [31:0] ReadData2_Instruction_Decode_To_ID_EX;
    wire [31:0] PCAddResult_Instruction_Decode_To_ID_EX;
    wire [31:0] SignExtended_Instruction_Decode_To_ID_EX;
    wire [4:0] TargetRegister_Instruction_Decode_To_ID_EX;
    wire [4:0] DestinationRegister_Instruction_Decode_To_ID_EX;
    wire [4:0] Shamt_Instruction_Decode_To_ID_EX;
    wire [5:0] Funct_Instruction_Decode_To_ID_EX;
    
    assign SignExtend_sim = SignExtended_Instruction_Decode_To_ID_EX;
     
    // Connections from ID/EX to Execute
    wire [31:0] PCAdder4_ID_EX_To_Execute;
    wire [31:0] ReadData1_ID_EX_To_Execute;
    wire [31:0] ReadData2_ID_EX_To_Execute;
    wire [31:0] SignExtended_ID_EX_To_Execute;
    wire [4:0] TargetRegister_ID_EX_To_Execute;
    wire [4:0] DestinationRegister_ID_EX_To_Execute;
    wire [4:0] Shamt_ID_EX_To_Execute;
    wire [5:0] Funct_ID_EX_To_Execute;
    
    wire ALUSrc_ID_EX_To_Execute;
    wire [2:0] RegDst_ID_EX_To_Execute;
    wire Branch_ID_EX_To_Execute;
    wire RegWrite_ID_EX_To_Execute;
    wire [3:0] ALUOp_ID_EX_To_Execute;
    wire MemWrite_ID_EX_To_Execute;
    wire MemRead_ID_EX_To_Execute;
    wire [1:0] MemtoReg_ID_EX_To_Execute;
    wire [1:0] LoadType_ID_EX_To_Execute;
    wire [1:0] StoreType_ID_EX_To_Execute;

    assign ReadData1_sim = ReadData1_Instruction_Decode_To_ID_EX;
    assign ReadData2_sim = ReadData2_Instruction_Decode_To_ID_EX;
    assign ALUOp_sim = ALUOp_ID_EX_To_Execute;
    assign ALUSrc_sim = ALUSrc_ID_EX_To_Execute;
        
    // Connections from Execute to EX/MEM
    wire [31:0] BranchTarget_Execute_To_EX_MEM;
    wire [31:0] ALUResult_Execute_To_EX_MEM;
    wire ZeroSignal_Execute_To_EX_MEM;
    wire [4:0] RegisterDestination_Execute_To_EX_MEM;
    wire [31:0] ReadData2_Execute_To_EX_MEM;
    wire [31:0] PCAdder4_Execute_To_EX_MEM;
    
    assign ALUResult_sim = ALUResult_Execute_To_EX_MEM;
    assign WriteRegister_sim = RegisterDestination_Execute_To_EX_MEM; 
    
    wire Branch_Execute_To_EX_MEM;
    wire RegWrite_Execute_To_EX_MEM;
    wire MemWrite_Execute_To_EX_MEM;
    wire MemRead_Execute_To_EX_MEM;
    wire [1:0] MemtoReg_Execute_To_EX_MEM;
    wire [1:0] LoadType_Execute_To_EX_MEM;
    wire [1:0] StoreType_Execute_To_EX_MEM;
    
    // Connections from EX/MEM to Memory Access
    wire [1:0] MemtoReg_EX_MEM_To_Memory_Access;
    wire RegWrite_EX_MEM_To_Memory_Access;
    wire [1:0] LoadType_EX_MEM_To_Memory_Access;
    wire [1:0] StoreType_EX_MEM_To_Memory_Access;
    
    assign LoadType_sim = LoadType_EX_MEM_To_Memory_Access;
    assign StoreType_sim = StoreType_EX_MEM_To_Memory_Access;    
    
    wire [31:0] ReadData2_EX_MEM_To_Memory_Access;
    wire [31:0] BranchTarget_EX_MEM_To_Memory_Access;
    wire [31:0] ALUResult_EX_MEM_To_Memory_Access;
    wire [4:0] RegisterDestination_EX_MEM_To_Memory_Access;
    wire ZeroSignal_EX_MEM_To_Memory_Access;
    wire [31:0] PCAdder4_EX_MEM_To_Memory_Access;

    // Connections from Memory Access to MEM/WB
    wire [1:0] MemtoReg_Memory_Access_To_MEM_WB;
    wire RegWrite_Memory_Access_To_MEM_WB;
    
    wire [4:0] RegisterDestination_Memory_Access_To_MEM_WB;
    wire [31:0] ReadDataMemory_Memory_Access_To_MEM_WB;
    wire [31:0] ALUResult_Memory_Access_To_MEM_WB;
    wire [31:0] PCAdder4_Memory_Access_To_MEM_WB;    
                         
    InstructionFetchStage Instruction_Fetch (
        // Inputs
        // Clk & Reset
        .Clk(Clk),
        .Reset(Reset),
    
        // Control Signals
        .PCSrc(PCSrc),
        .Jump(Jump),
        .JumpRegister(JumpRegister),

        // Branching, Jumping, & JumpRegister Target Address
        .BranchTarget(BranchTarget),
        .JumpTarget(JumpTarget),
        .JumpRegisterTarget(JumpRegisterTarget),
    
        // Outputs
        // Current & Next Instruction
        .PCAddResult(PCAddResult_Instruction_Fetch_To_IF_ID),
        .Instruction(Instruction_Instruction_Fetch_To_IF_ID)
    );
    
    IF_ID_RegisterFile IF_ID (
        .Clk(Clk),
        .Reset(Reset),
    
        .PCAdder4_in(PCAddResult_Instruction_Fetch_To_IF_ID),
        .Instruction_in(Instruction_Instruction_Fetch_To_IF_ID),
    
        .PCAdder4_out(PCAddResult_IF_ID_To_Instruction_Decode),
        .Instruction_out(Instruction_IF_ID_To_Instruction_Decode)
    );
    
    InstructionDecodeStage Instruction_Decode (
        // Inputs
        // Clk & Reset
        .Clk(Clk),
        .Reset(Reset),

        // Instruction, PCAdder4, Write Registet & Data
        .Instruction(Instruction_IF_ID_To_Instruction_Decode),
        .PCAdder4_in(PCAddResult_IF_ID_To_Instruction_Decode),
        .WriteRegister(RegisterDestination),
        .WriteData(WriteData),
    
        // Control Signals
        .RegWrite_in(RegWrite),
    
        // Ouputs
        // Control Signals
        .RegDst(RegDst_Instruction_Decode_To_ID_EX),
        .Jump(Jump),
        .Branch(Branch_Instruction_Decode_To_ID_EX),
        .MemRead(MemRead_Instruction_Decode_To_ID_EX),
        .MemtoReg(MemtoReg_Instruction_Decode_To_ID_EX),
        .ALUOp(ALUOp_Instruction_Decode_To_ID_EX),
        .MemWrite(MemWrite_Instruction_Decode_To_ID_EX),
        .ALUSrc(ALUSrc_Instruction_Decode_To_ID_EX),
        .JumpRegister(JumpRegister),
        .RegWrite_out(RegWrite_Instruction_Decode_To_ID_EX),
        .LoadType(LoadType_Instruction_Decode_To_ID_EX),
        .StoreType(StoreType_Instruction_Decode_To_ID_EX),
    
        // Decoded Instruction
        .JumpTarget(JumpTarget),
        .ReadData1(ReadData1_Instruction_Decode_To_ID_EX),
        .ReadData2(ReadData2_Instruction_Decode_To_ID_EX),
        .PCAdder4_out(PCAddResult_Instruction_Decode_To_ID_EX),
        .SignExtended(SignExtended_Instruction_Decode_To_ID_EX),
        .TargetRegister(TargetRegister_Instruction_Decode_To_ID_EX),
        .DestinationRegister(DestinationRegister_Instruction_Decode_To_ID_EX),
        .Shamt(Shamt_Instruction_Decode_To_ID_EX),
        .Funct(Funct_Instruction_Decode_To_ID_EX)
    );
    
    ID_EX_RegisterFile ID_EX(
        // Inputs
        // Clk & Reset
        .Clk(Clk),
        .Reset(Reset),
    
        .PCAdder4_in(PCAddResult_Instruction_Decode_To_ID_EX),
        .ReadData1_in(ReadData1_Instruction_Decode_To_ID_EX),
        .ReadData2_in(ReadData2_Instruction_Decode_To_ID_EX),
        .SignExtended_in(SignExtended_Instruction_Decode_To_ID_EX),
        .TargetRegister_in(TargetRegister_Instruction_Decode_To_ID_EX),
        .DestinationRegister_in(DestinationRegister_Instruction_Decode_To_ID_EX),
        .Shamt_in(Shamt_Instruction_Decode_To_ID_EX),
        .Funct_in(Funct_Instruction_Decode_To_ID_EX),

        // Input Control Signals
        .ALUSrc_in(ALUSrc_Instruction_Decode_To_ID_EX),
        .RegDst_in(RegDst_Instruction_Decode_To_ID_EX),
        .Branch_in(Branch_Instruction_Decode_To_ID_EX),
        .RegWrite_in(RegWrite_Instruction_Decode_To_ID_EX),
        .ALUOp_in(ALUOp_Instruction_Decode_To_ID_EX),
        .MemWrite_in(MemWrite_Instruction_Decode_To_ID_EX),
        .MemRead_in(MemRead_Instruction_Decode_To_ID_EX),
        .MemtoReg_in(MemtoReg_Instruction_Decode_To_ID_EX),
        .LoadType_in(LoadType_Instruction_Decode_To_ID_EX),
        .StoreType_in(StoreType_Instruction_Decode_To_ID_EX),
    
        // Output Control Signals
        .ALUSrc_out(ALUSrc_ID_EX_To_Execute),
        .RegDst_out(RegDst_ID_EX_To_Execute),
        .Branch_out(Branch_ID_EX_To_Execute),
        .RegWrite_out(RegWrite_ID_EX_To_Execute),
        .ALUOp_out(ALUOp_ID_EX_To_Execute),
        .MemWrite_out(MemWrite_ID_EX_To_Execute),
        .MemRead_out(MemRead_ID_EX_To_Execute),
        .MemtoReg_out(MemtoReg_ID_EX_To_Execute),
        .LoadType_out(LoadType_ID_EX_To_Execute),
        .StoreType_out(StoreType_ID_EX_To_Execute),
        
        .PCAdder4_out(PCAdder4_ID_EX_To_Execute),
        .ReadData1_out(ReadData1_ID_EX_To_Execute),
        .ReadData2_out(ReadData2_ID_EX_To_Execute),
        .SignExtended_out(SignExtended_ID_EX_To_Execute),
        .TargetRegister_out(TargetRegister_ID_EX_To_Execute),
        .DestinationRegister_out(DestinationRegister_ID_EX_To_Execute),
        .Shamt_out(Shamt_ID_EX_To_Execute),
        .Funct_out(Funct_ID_EX_To_Execute)    
    );
    

    ExecuteStage Execute (
        // Inputs
        .PCAdder4_in(PCAdder4_ID_EX_To_Execute),
        .ReadData1(ReadData1_ID_EX_To_Execute),
        .ReadData2_in(ReadData2_ID_EX_To_Execute),
        .SignExtended(SignExtended_ID_EX_To_Execute),
        .TargetRegister(TargetRegister_ID_EX_To_Execute),
        .DestinationRegister(DestinationRegister_ID_EX_To_Execute),
        .Shamt(Shamt_ID_EX_To_Execute),
        .Funct(Funct_ID_EX_To_Execute),
    
        // Control Signals
        .ALUSrc(ALUSrc_ID_EX_To_Execute),
        .RegDst(RegDst_ID_EX_To_Execute),
        .Branch_in(Branch_ID_EX_To_Execute),
        .RegWrite_in(RegWrite_ID_EX_To_Execute),
        .ALUOp(ALUOp_ID_EX_To_Execute),
        .MemWrite_in(MemWrite_ID_EX_To_Execute),
        .MemRead_in(MemRead_ID_EX_To_Execute),
        .MemtoReg_in(MemtoReg_ID_EX_To_Execute),
        .LoadType_in(LoadType_ID_EX_To_Execute),
        .StoreType_in(StoreType_ID_EX_To_Execute),
    
        // Outputs 
        .BranchTarget(BranchTarget_Execute_To_EX_MEM),
        .JumpRegisterTarget(JumpRegisterTarget),
        .ALUResult(ALUResult_Execute_To_EX_MEM),
        .ZeroSignal(ZeroSignal_Execute_To_EX_MEM),
        .RegisterDestination(RegisterDestination_Execute_To_EX_MEM),
        .ReadData2_out(ReadData2_Execute_To_EX_MEM),
        .PCAdder4_out(PCAdder4_Execute_To_EX_MEM),
    
        // Control Signals
        .Branch_out(Branch_Execute_To_EX_MEM),
        .RegWrite_out(RegWrite_Execute_To_EX_MEM),
        .MemWrite_out(MemWrite_Execute_To_EX_MEM),
        .MemRead_out(MemRead_Execute_To_EX_MEM),
        .MemtoReg_out(MemtoReg_Execute_To_EX_MEM),
        .LoadType_out(LoadType_Execute_To_EX_MEM),
        .StoreType_out(StoreType_Execute_To_EX_MEM)      
    );
                     
    EX_MEM_RegisterFile EX_MEM (
        // Inputs
        // Clk & Reset
        .Clk(Clk),
        .Reset(Reset),
        
        // Control Signals
        .RegWrite_in(RegWrite_Execute_To_EX_MEM),
        .Branch_in(Branch_Execute_To_EX_MEM),
        .MemWrite_in(MemWrite_Execute_To_EX_MEM),
        .MemRead_in(MemRead_Execute_To_EX_MEM),
        .MemtoReg_in(MemtoReg_Execute_To_EX_MEM),
         .LoadType_in(LoadType_Execute_To_EX_MEM),
        .StoreType_in(StoreType_Execute_To_EX_MEM),
        
        .ReadData2_in(ReadData2_Execute_To_EX_MEM),
        .BranchAddress_in(BranchTarget_Execute_To_EX_MEM),
        .ZeroSignal_in(ZeroSignal_Execute_To_EX_MEM),
        .ALUResult_in(ALUResult_Execute_To_EX_MEM),
        .WriteRegister_in(RegisterDestination_Execute_To_EX_MEM),
        .PCAdder4_in(PCAdder4_Execute_To_EX_MEM),
    
        // Outputs
        .ReadData2_out(ReadData2_EX_MEM_To_Memory_Access),
        .BranchAddress_out(BranchTarget_EX_MEM_To_Memory_Access),
        .ZeroSignal_out(ZeroSignal_EX_MEM_To_Memory_Access),
        .ALUResult_out(ALUResult_EX_MEM_To_Memory_Access),
        .WriteRegister_out(RegisterDestination_EX_MEM_To_Memory_Access), 
        .PCAdder4_out(PCAdder4_EX_MEM_To_Memory_Access),
   
        // Control Signals
        .RegWrite_out(RegWrite_EX_MEM_To_Memory_Access),
        .Branch_out(Branch),
        .MemWrite_out(MemWrite),
        .MemRead_out(MemRead),
        .MemtoReg_out(MemtoReg_EX_MEM_To_Memory_Access),
        .LoadType_out(LoadType_EX_MEM_To_Memory_Access),
        .StoreType_out(StoreType_EX_MEM_To_Memory_Access)    
    );
     
    MemoryAccessStage Memory_Access(
        // Inputs
        // Clk
        .Clk(Clk),
    
        // Control Signals
        .Branch(Branch),
        .MemWrite(MemWrite),
        .MemRead(MemRead),
        .MemtoReg_in(MemtoReg_EX_MEM_To_Memory_Access),
        .RegWrite_in(RegWrite_EX_MEM_To_Memory_Access),
        .LoadType(LoadType_EX_MEM_To_Memory_Access),
        .StoreType(StoreType_EX_MEM_To_Memory_Access),
    
        .ReadData2(ReadData2_EX_MEM_To_Memory_Access),
        .BranchTarget_in(BranchTarget_EX_MEM_To_Memory_Access),
        .ALUResult_in(ALUResult_EX_MEM_To_Memory_Access),
        .RegisterDestination_in(RegisterDestination_EX_MEM_To_Memory_Access),
        .ZeroSignal(ZeroSignal_EX_MEM_To_Memory_Access),
        .PCAdder4_in(PCAdder4_EX_MEM_To_Memory_Access),
    
        // Outputs
        // Control Signals
        .MemtoReg_out(MemtoReg_Memory_Access_To_MEM_WB),
        .RegWrite_out(RegWrite_Memory_Access_To_MEM_WB),
        .PCSrc(PCSrc),
    
        .RegisterDestination_out(RegisterDestination_Memory_Access_To_MEM_WB),
        .ReadDataMemory(ReadDataMemory_Memory_Access_To_MEM_WB),
        .ALUResult_out(ALUResult_Memory_Access_To_MEM_WB),
        .BranchTarget_out(BranchTarget),
        .PCAdder4_out(PCAdder4_Memory_Access_To_MEM_WB)
    );
        
    MEM_WB_RegisterFile MEM_WB (
        // Inputs
        // Clk & Reset
        .Clk(Clk),
        .Reset(Reset),
    
        // Control Signals
        .MemtoReg_in(MemtoReg_Memory_Access_To_MEM_WB),
        .RegWrite_in(RegWrite_Memory_Access_To_MEM_WB),

        .ReadDataMemory_in(ReadDataMemory_Memory_Access_To_MEM_WB),
        .ALUResult_in(ALUResult_Memory_Access_To_MEM_WB),
        .WriteRegister_in(RegisterDestination_Memory_Access_To_MEM_WB),
        .PCAdder4_in(PCAdder4_Memory_Access_To_MEM_WB), 
    
        // Outputs
        // Control Signals
        .RegWrite_out(RegWrite),
        .MemtoReg_out(MemtoReg),
        
        .ReadDataMemory_out(ReadDataMemory),
        .ALUResult_out(ALUResult),
        .WriteRegister_out(RegisterDestination),
        .PCAdder4_out(PCAdder4)
    ); 
        
    Mux32Bit3To1 MemtoReg_Signal (
        // Inputs
        .inA(ALUResult),
        .inB(ReadDataMemory),
        .inC(PCAdder4),
        .sel(MemtoReg),
        
        // Outputs
        .out(WriteData)
    );       
    
endmodule
