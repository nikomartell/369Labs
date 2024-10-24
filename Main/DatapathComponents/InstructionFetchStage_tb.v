`timescale 1ns / 1ps

module InstructionFetchStage_tb;
    // Inputs
    reg Clk;
    reg Reset;
    reg PCSrc;
    reg Jump;
    reg JumpRegister;
    reg [31:0] BranchTarget;
    reg [31:0] JumpTarget;
    reg [31:0] JumpRegisterTarget;

    // Outputs
    wire [31:0] PCAddResult;
    wire [31:0] Instruction;

    // Instantiate the Unit Under Test (UUT)
    InstructionFetchStage uut (
        .Clk(Clk), 
        .Reset(Reset), 
        .PCSrc(PCSrc), 
        .Jump(Jump), 
        .JumpRegister(JumpRegister), 
        .BranchTarget(BranchTarget), 
        .JumpTarget(JumpTarget), 
        .JumpRegisterTarget(JumpRegisterTarget), 
        .PCAddResult(PCAddResult), 
        .Instruction(Instruction)
    );

    // Clock generation
    always #5 Clk = ~Clk;

    initial begin
        // Initialize Inputs
        Clk = 0;
        Reset = 0;
        PCSrc = 0;
        Jump = 0;
        JumpRegister = 0;
        BranchTarget = 0;
        JumpTarget = 0;
        JumpRegisterTarget = 0;

        // Wait 100 ns for global reset to finish
        #100;
        
        // Test case 1: Reset
        Reset = 1;
        #10;
        Reset = 0;
        
        // Test case 2: Normal operation
        #10;
        PCSrc = 0;
        Jump = 0;
        JumpRegister = 0;
        
        // Test case 3: Branch
        #10;
        PCSrc = 1;
        BranchTarget = 32'h00000010;
        
        // Test case 4: Jump
        #10;
        PCSrc = 0;
        Jump = 1;
        JumpTarget = 32'h00000020;
        
        // Test case 5: Jump Register
        #10;
        Jump = 0;
        JumpRegister = 1;
        JumpRegisterTarget = 32'h00000030;
        
        // Add more test cases as needed
        
        // Finish simulation
        #100;
        $finish;
    end
      
endmodule
