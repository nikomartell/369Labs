`timescale 1ns / 1ps

module InstructionDecodePhase_tb;

    // Parameters
    reg Clk;
    reg Reset;
    
    // Inputs from the pipeline and registers
    reg [31:0] instr_in;
    reg [31:0] pc_in;
    reg [31:0] WriteData;
    reg [4:0] WriteRegister;
    reg RegWrite_in;
    
    // Outputs from the module
    wire [2:0] RegDst;
    wire Jump;
    wire Branch;
    wire MemRead;
    wire [1:0] MemtoReg;
    wire [3:0] ALUOp;
    wire MemWrite;
    wire ALUSrc;
    wire JumpRegister;
    wire RegWrite_out;
    wire [1:0] LoadType;
    wire [1:0] StoreType;
    wire [31:0] JumpTarget;
    wire [31:0] reg_data1_in;
    wire [31:0] reg_data2_in;
    wire [31:0] pc_out;
    wire [31:0] sign_ext_offset_in;
    wire [4:0] rd_in;
    wire [4:0] rt_in;
    wire [4:0] Shamt_in;
    wire [5:0] ALUop_in;

    // Instantiate the InstructionDecodePhase module
    InstructionDecodePhase uut (
        .Clk(Clk),
        .Reset(Reset),
        .instr_in(instr_in),
        .pc_in(pc_in),
        .WriteData(WriteData),
        .WriteRegister(WriteRegister),
        .RegWrite_in(RegWrite_in),
        .RegDst(RegDst),
        .Jump(Jump),
        .Branch(Branch),
        .MemRead(MemRead),
        .MemtoReg(MemtoReg),
        .ALUOp(ALUOp),
        .MemWrite(MemWrite),
        .ALUSrc(ALUSrc),
        .JumpRegister(JumpRegister),
        .RegWrite_out(RegWrite_out),
        .LoadType(LoadType),
        .StoreType(StoreType),
        .JumpTarget(JumpTarget),
        .reg_data1_in(reg_data1_in),
        .reg_data2_in(reg_data2_in),
        .pc_out(pc_out),
        .sign_ext_offset_in(sign_ext_offset_in),
        .rd_in(rd_in),
        .rt_in(rt_in),
        .Shamt_in(Shamt_in),
        .ALUop_in(ALUop_in)
    );

    // Clock generation
    initial begin
        Clk = 0;
        forever #5 Clk = ~Clk; // 10 ns clock period
    end

    // Test procedure
    initial begin
        // Initialize Inputs
        Reset = 1;
        instr_in = 0;
        pc_in = 0;
        WriteData = 0;
        WriteRegister = 0;
        RegWrite_in = 0;

        // Wait for global reset
        #10;
        Reset = 0;

        // Test case 1: Load Word (LW) instruction
        instr_in = 32'b10001100000000010000000000000000; // LW $1, 0($0)
        pc_in = 32'h00000004; // PC = 4
        RegWrite_in = 1; // Assume write is enabled
        
        // Wait for a clock cycle
        #10;
        
        // Check outputs for LW
        // Expected Outputs:
        // RegDst = 3'b001 (destination is rt)
        // MemRead = 1, MemWrite = 0
        // Jump = 0, Branch = 0
        // ALUSrc = 1, RegWrite_out = 1
        // LoadType = 2'b00 (just for this example)
        
        // Test case 2: Store Word (SW) instruction
        instr_in = 32'b10101100000000010000000000000000; // SW $1, 0($0)
        pc_in = 32'h00000008; // PC = 8
        
        // Wait for a clock cycle
        #10;

        // Check outputs for SW
        // Expected Outputs:
        // RegDst = 3'b001 (destination is rt)
        // MemRead = 0, MemWrite = 1
        // Jump = 0, Branch = 0
        // ALUSrc = 1, RegWrite_out = 0

        // Test case 3: R-type instruction (e.g., ADD)
        instr_in = 32'b00000000001000100001100000100000; // ADD $3, $1, $2
        pc_in = 32'h0000000C; // PC = 12
        
        // Wait for a clock cycle
        #10;

        // Check outputs for R-type
        // Expected Outputs:
        // RegDst = 3'b010 (destination is rd)
        // MemRead = 0, MemWrite = 0
        // Jump = 0, Branch = 0
        // ALUSrc = 0, RegWrite_out = 1
        // ALUOp = 4'b0010 (for ADD operation)

        // Finish simulation
        #10;
        $finish;
    end

    // Monitor the outputs
    initial begin
        $monitor("Time: %0t | instr_in: %b | pc_in: %h | RegDst: %b | Jump: %b | Branch: %b | MemRead: %b | MemWrite: %b | RegWrite_out: %b", 
                 $time, instr_in, pc_in, RegDst, Jump, Branch, MemRead, MemWrite, RegWrite_out);
    end

endmodule
