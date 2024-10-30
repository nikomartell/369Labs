`timescale 1ns / 1ps

module MemoryPhase_tb;

    // Testbench signals
    reg clk;
    reg [31:0] alu_result;
    reg [31:0] read_data2;
    reg [5:0] opcode;
    reg [1:0] decodeop;
    reg memwrite;
    reg memread;

    wire [31:0] read_data_out;

    // Instantiate the MemoryPhase module
    MemoryPhase uut (
        .clk(clk),
        .alu_result(alu_result),
        .read_data2(read_data2),
        .opcode(opcode),
        .decodeop(decodeop),
        .memwrite(memwrite),
        .memread(memread),
        .read_data_out(read_data_out)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10 ns clock period
    end

    // Test stimulus
    initial begin
        // Initialize inputs
        alu_result = 32'h00000000; // Example ALU result
        read_data2 = 32'h00000000; // Example data to write/read
        opcode = 6'b000000; // Example opcode
        decodeop = 2'b00; // Example decode operation
        memwrite = 0; // Initially no memory write
        memread = 0; // Initially no memory read
        
        // Wait for a clock cycle
        #10;

        // Test Case 1: Write to Memory
        // Prepare inputs for writing
        alu_result = 32'h00000004; // Address to write to
        read_data2 = 32'h000000AB; // Data to write
        opcode = 6'b101011; // Opcode for store word (SW)
        decodeop = 2'b00; // Standard operation
        memwrite = 1; // Enable memory write
        memread = 0; // Disable memory read

        // Wait for a clock cycle
        #10;
        
        // Check that read_data_out is unchanged during write
        // Since memread is 0, read_data_out should be undefined or zero

        // Disable write and enable read
        memwrite = 0;
        memread = 1; // Enable memory read

        // Test Case 2: Read from Memory
        // Assume we are reading from the same address
        alu_result = 32'h00000004; // Address to read from
        #10; // Wait for a clock cycle

        // Expected: read_data_out should reflect the data written previously (0xAB)

        // Test Case 3: Write-Read Cycle
        // Prepare inputs for another write
        alu_result = 32'h00000008; // New address to write to
        read_data2 = 32'h000000CD; // New data to write
        opcode = 6'b101011; // Opcode for store word (SW)
        decodeop = 2'b00; // Standard operation
        memwrite = 1; // Enable memory write
        memread = 0; // Disable memory read

        // Wait for a clock cycle
        #10;

        // Disable write and enable read for the new address
        memwrite = 0;
        memread = 1; // Enable memory read
        alu_result = 32'h00000008; // Address to read from
        #10; // Wait for a clock cycle

        // Expected: read_data_out should reflect the new data written (0xCD)

        // Finish simulation
        $finish;
    end

    // Monitor outputs
    initial begin
        $monitor("Time: %0dns | ALU Result: %h | Read Data2: %h | Opcode: %b | DecodeOp: %b | MemWrite: %b | MemRead: %b | Read Data Out: %h", 
                 $time, alu_result, read_data2, opcode, decodeop, memwrite, memread, read_data_out);
    end

endmodule
