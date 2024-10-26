`timescale 1ns / 1ps

module ExecutePhase_tb;

    // Testbench signals
    reg [31:0] reg_data1_in;
    reg [31:0] reg_data2_in;
    reg [31:0] sign_ext_offset_in;
    reg [4:0] rd_in;
    reg [4:0] rt_in;
    reg [5:0] ALUop;
    reg Shamt_in;
    reg alusrc_in;
    reg [2:0] regdst_in;
    reg [3:0] aluop_in;

    wire [31:0] ALU_result;
    wire [4:0] regdst;

    // Instantiate the ExecutePhase module
    ExecutePhase uut (
        .reg_data1_in(reg_data1_in),
        .reg_data2_in(reg_data2_in),
        .sign_ext_offset_in(sign_ext_offset_in),
        .rd_in(rd_in),
        .rt_in(rt_in),
        .ALUop(ALUop),
        .Shamt_in(Shamt_in),
        .alusrc_in(alusrc_in),
        .regdst_in(regdst_in),
        .aluop_in(aluop_in),
        .ALU_result(ALU_result),
        .regdst(regdst)
    );

    // Test stimulus
    initial begin
        // Initialize inputs
        reg_data1_in = 32'h00000005; // Example register data 1
        reg_data2_in = 32'h00000003; // Example register data 2
        sign_ext_offset_in = 32'h00000002; // Example sign-extended offset
        rd_in = 5'b00001; // Destination register
        rt_in = 5'b00010; // Target register
        ALUop = 6'b000000; // Example ALU operation code
        Shamt_in = 0; // Shift amount
        alusrc_in = 1; // Use second input for ALU
        regdst_in = 3'b001; // Example register destination selector
        aluop_in = 4'b0000; // ALU operation selector
        
        // Wait for a clock cycle
        #10;

        // Test Case 1: Simple Addition
        reg_data1_in = 32'h00000005; // 5
        reg_data2_in = 32'h00000003; // 3
        sign_ext_offset_in = 32'h00000000; // Not used in this case
        ALUop = 6'b100000; // ALU operation code for addition (add)
        #10; // Wait and observe outputs

        // Check expected output for addition
        // Expected ALU_result = 5 + 3 = 8

        // Test Case 2: Subtraction
        reg_data1_in = 32'h00000005; // 5
        reg_data2_in = 32'h00000003; // 3
        ALUop = 6'b100010; // ALU operation code for subtraction (sub)
        #10; // Wait and observe outputs

        // Check expected output for subtraction
        // Expected ALU_result = 5 - 3 = 2

        // Test Case 3: ALU with Immediate Value
        alusrc_in = 1; // ALU uses second input as immediate
        reg_data2_in = 32'h00000003; // 3
        sign_ext_offset_in = 32'h00000002; // Immediate value of 2
        ALUop = 6'b000000; // Example ALU operation code (e.g., add)
        #10; // Wait and observe outputs

        // Check expected output for addition with immediate
        // Expected ALU_result = 5 + 2 = 7

        // Test Case 4: Shift Operation
        Shamt_in = 2; // Shift amount
        ALUop = 6'b000100; // ALU operation code for logical left shift (sll)
        #10; // Wait and observe outputs

        // Check expected output for shift
        // Expected ALU_result = 5 << 2 = 20 (binary 10100)

        // Finish simulation
        $finish;
    end

    // Monitor outputs
    initial begin
        $monitor("Time: %0dns | ALU_result: %h | regdst: %b | reg_data1: %h | reg_data2: %h | sign_ext_offset: %h | ALUop: %b", 
                 $time, ALU_result, regdst, reg_data1_in, reg_data2_in, sign_ext_offset_in, ALUop);
    end

endmodule
