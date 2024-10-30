`timescale 1ns / 1ps

module tb_InstructionFetchPhase;

    // Testbench signals
    reg Clk;
    reg Reset;
    reg pc_in;
    reg Jump;
    reg JumpRegister;
    reg [31:0] BranchTarget;
    reg [31:0] JumpTarget;
    reg [31:0] JumpRegisterTarget;
    
    wire [31:0] pc_out;
    wire [31:0] instr_out;

    // Instantiate the InstructionFetchPhase module
    InstructionFetchPhase uut (
        .Clk(Clk),
        .Reset(Reset),
        .pc_in(pc_in),
        .Jump(Jump),
        .JumpRegister(JumpRegister),
        .BranchTarget(BranchTarget),
        .JumpTarget(JumpTarget),
        .JumpRegisterTarget(JumpRegisterTarget),
        .pc_out(pc_out),
        .instr_out(instr_out)
    );

    // Clock generation
    initial begin
        Clk = 0;
        forever #5 Clk = ~Clk; // 10 ns clock period
    end

    // Test stimulus
    initial begin
        // Initialize inputs
        Reset = 0;
        pc_in = 0;
        Jump = 0;
        JumpRegister = 0;
        BranchTarget = 32'h00000004;
        JumpTarget = 32'h00000008;
        JumpRegisterTarget = 32'h0000000C;

        // Test Case 1: Reset Behavior
        // Inputs: Reset = 1
        // Expected Output: During reset, pc_out and instr_out should remain unchanged or zero.
        Reset = 1;
        #10; // Wait for 10 ns

        // Release reset
        Reset = 0;

        // Test Case 2: Normal Instruction Fetch
        // Inputs: Reset = 0, pc_in = 0, Jump = 0, JumpRegister = 0
        // Expected Output: pc_out should increment by 4 and instr_out should reflect fetched instructions.
        #10; // Wait for a clock cycle

        // Test Case 3: Branch Instruction Fetch
        // Inputs: pc_in = 1, Jump = 0, JumpRegister = 0
        // Expected Output: pc_out should take the value of BranchTarget (4).
        pc_in = 1;
        #10; // Wait for a clock cycle

        // Test Case 4: Jump Instruction Fetch
        // Inputs: pc_in = 0, Jump = 1, JumpRegister = 0
        // Expected Output: pc_out should take the value of JumpTarget (8).
        pc_in = 0;
        Jump = 1;
        #10; // Wait for a clock cycle

        // Test Case 5: Jump Register Instruction Fetch
        // Inputs: pc_in = 0, Jump = 0, JumpRegister = 1
        // Expected Output: pc_out should take the value of JumpRegisterTarget (12).
        Jump = 0;
        JumpRegister = 1;
        #10; // Wait for a clock cycle

        // Finish simulation
        $finish;
    end

    // Monitor outputs
    initial begin
        $monitor("Time: %0dns | pc_out: %h | instr_out: %h | pc_in: %b | Jump: %b | JumpRegister: %b", 
                 $time, pc_out, instr_out, pc_in, Jump, JumpRegister);
    end

endmodule
