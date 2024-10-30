`timescale 1ns / 1ps

module ALUController_tb;

    // Parameters
    reg [5:0] OpCode;
    reg [5:0] Function;
    wire [3:0] ALUControl;

    // Instantiate the ALUController
    ALUController uut (
        .OpCode(OpCode),
        .Function(Function),
        .ALUControl(ALUControl)
    );

    initial begin
        // Initialize Inputs
        OpCode = 6'b000000; // Default opcode
        Function = 6'b000000; // Default function

        // Monitor output
        $monitor("Time: %0t | OpCode: %b | Function: %b | ALUControl: %b", 
                 $time, OpCode, Function, ALUControl);

        // Test case 1: ALU function - SLL
        OpCode = 6'b000000; Function = 6'b000000; // SLL
        #10;

        // Test case 2: ALU function - SRL
        OpCode = 6'b000000; Function = 6'b000010; // SRL
        #10;

        // Test case 3: ALU function - SLT
        OpCode = 6'b000000; Function = 6'b101010; // SLT
        #10;

        // Test case 4: ALU function - OR
        OpCode = 6'b000000; Function = 6'b100101; // OR
        #10;

        // Test case 5: ALU function - NOR
        OpCode = 6'b000000; Function = 6'b100111; // NOR
        #10;

        // Test case 6: ALU function - XOR
        OpCode = 6'b000000; Function = 6'b100110; // XOR
        #10;

        // Test case 7: ALU function - ADD
        OpCode = 6'b000000; Function = 6'b100000; // ADD
        #10;

        // Test case 8: ALU function - SUB
        OpCode = 6'b000000; Function = 6'b100010; // SUB
        #10;

        // Test case 9: ALU function - AND
        OpCode = 6'b000000; Function = 6'b100100; // AND
        #10;

        // Test case 10: MUL
        OpCode = 6'b011100; Function = 6'b000000; // MUL (Function ignored)
        #10;

        // Test case 11: ANDI
        OpCode = 6'b001100; Function = 6'b000000; // ANDI
        #10;

        // Test case 12: ADDI
        OpCode = 6'b001000; Function = 6'b000000; // ADDI
        #10;

        // Test case 13: LW
        OpCode = 6'b100011; Function = 6'b000000; // LW
        #10;

        // Test case 14: SW
        OpCode = 6'b101011; Function = 6'b000000; // SW
        #10;

        // Test case 15: SB
        OpCode = 6'b101000; Function = 6'b000000; // SB
        #10;

        // Test case 16: LH
        OpCode = 6'b100001; Function = 6'b000000; // LH
        #10;

        // Test case 17: LB
        OpCode = 6'b100000; Function = 6'b000000; // LB
        #10;

        // Test case 18: SH
        OpCode = 6'b101001; Function = 6'b000000; // SH
        #10;

        // Test case 19: ORI
        OpCode = 6'b001101; Function = 6'b000000; // ORI
        #10;

        // Test case 20: XORI
        OpCode = 6'b001110; Function = 6'b000000; // XORI
        #10;

        // Test case 21: SLTI
        OpCode = 6'b001010; Function = 6'b000000; // SLTI
        #10;

        // Test case 22: BGEZ
        OpCode = 6'b000001; Function = 6'b000000; // BGEZ (function ignored)
        #10;

        // Test case 23: BEQ
        OpCode = 6'b000100; Function = 6'b000000; // BEQ (function ignored)
        #10;

        // Test case 24: BNE
        OpCode = 6'b000101; Function = 6'b000000; // BNE (function ignored)
        #10;

        // Test case 25: BGTZ
        OpCode = 6'b000111; Function = 6'b000000; // BGTZ (function ignored)
        #10;

        // Test case 26: BLEZ
        OpCode = 6'b000110; Function = 6'b000000; // BLEZ (function ignored)
        #10;

        // Test case 27: BLTZ
        OpCode = 6'b000001; Function = 6'b000001; // BLTZ (function ignored)
        #10;

        // Test case 28: Invalid opcode
        OpCode = 6'b111111; Function = 6'b111111; // Invalid
        #10;

        // Finish simulation
        $finish;
    end
endmodule
