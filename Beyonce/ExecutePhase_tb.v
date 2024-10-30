`timescale 1ns / 1ps

module ExecutePhase_tb;

    // Testbench signals
    reg clk;
    reg reset;
    reg [31:0] reg_data1_in;
    reg [31:0] reg_data2_in;
    reg [31:0] sign_ext_offset_in;
    reg [4:0] rd_in;
    reg [4:0] rt_in;
    reg [5:0] ALUop;
    reg [4:0] Shamt_in; // Updated to 5-bit register
    reg alusrc_in;
    reg [2:0] regdst_in;
    reg [3:0] aluop_in;

    wire [31:0] ALU_result;
    wire [4:0] regdst;

    // Instantiate the ExecutePhase module
    ExecutePhase uut (
        .clk(clk),
        .reset(reset),
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

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns clock period
    end

    // Test stimulus
    initial begin
        // Initialize inputs
        reset = 1;
        reg_data1_in = 32'h00000000;
        reg_data2_in = 32'h00000000;
        sign_ext_offset_in = 32'h00000000;
        rd_in = 5'b00000;
        rt_in = 5'b00000;
        ALUop = 6'b000000;
        Shamt_in = 5'b00000;
        alusrc_in = 0;
        regdst_in = 3'b000;
        aluop_in = 4'b0000;

        // Apply reset
        #10;
        reset = 0;

        // Test Case 1: Simple Addition
        reg_data1_in = 32'h00000005; // 5
        reg_data2_in = 32'h00000003; // 3
        sign_ext_offset_in = 32'h00000000; // Not used in this case
        ALUop = 6'b100000; // ALU operation code for addition (add)
        #10; // Wait and observe outputs

        // Test Case 2: Subtraction
        reg_data1_in = 32'h00000005; // 5
        reg_data2_in = 32'h00000003; // 3
        ALUop = 6'b100010; // ALU operation code for subtraction (sub)
        #10; // Wait and observe outputs

        // Test Case 3: ALU with Immediate Value
        alusrc_in = 1; // ALU uses second input as immediate
        reg_data2_in = 32'h00000003; // 3
        sign_ext_offset_in = 32'h00000002; // Immediate value of 2
        ALUop = 6'b000000; // Example ALU operation code (e.g., add)
        #10; // Wait and observe outputs

        // Test Case 4: Shift Operation
        Shamt_in = 5'b00010; // Shift amount
        ALUop = 6'b000100; // ALU operation code for logical left shift (sll)
        #10; // Wait and observe outputs

        // Finish simulation
        $finish;
    end

    // Monitor outputs
    initial begin
        $monitor("Time: %0dns | ALU_result: %h | regdst: %b | reg_data1: %h | reg_data2: %h | sign_ext_offset: %h | ALUop: %b", 
                 $time, ALU_result, regdst, reg_data1_in, reg_data2_in, sign_ext_offset_in, ALUop);
    end

endmodule
