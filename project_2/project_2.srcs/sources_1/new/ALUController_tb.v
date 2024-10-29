`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2024 02:02:06 PM
// Design Name: ALUController_tb
// Module Name: ALUController_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// Test bench for the ALUController module
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module ALUController_tb;

    // Declare testbench registers and wires
    reg [5:0] OpCode;        // Opcode input
    reg [5:0] Function;      // Function input
    wire [3:0] ALUControl;   // ALU Control output

    // Instantiate the ALUController
    ALUController uut (
        .OpCode(OpCode),
        .Function(Function),
        .ALUControl(ALUControl)
    );

    // Test sequence
    initial begin
        // Test cases for R-type instructions
        OpCode = 6'b000000; // R-type
        Function = 6'b100000; // add
        #10; // Wait for 10 ns
        $display("OpCode: %b, Function: %b, ALUControl: %b", OpCode, Function, ALUControl); // Expect: 0000
        
        Function = 6'b100010; // sub
        #10;
        $display("OpCode: %b, Function: %b, ALUControl: %b", OpCode, Function, ALUControl); // Expect: 0001
        
        Function = 6'b011000; // mul
        #10;
        $display("OpCode: %b, Function: %b, ALUControl: %b", OpCode, Function, ALUControl); // Expect: 1000
        
        Function = 6'b100100; // and
        #10;
        $display("OpCode: %b, Function: %b, ALUControl: %b", OpCode, Function, ALUControl); // Expect: 0010
        
        Function = 6'b100101; // or
        #10;
        $display("OpCode: %b, Function: %b, ALUControl: %b", OpCode, Function, ALUControl); // Expect: 0011
        
        Function = 6'b100111; // nor
        #10;
        $display("OpCode: %b, Function: %b, ALUControl: %b", OpCode, Function, ALUControl); // Expect: 0100
        
        Function = 6'b100110; // xor
        #10;
        $display("OpCode: %b, Function: %b, ALUControl: %b", OpCode, Function, ALUControl); // Expect: 0101
        
        Function = 6'b000000; // sll
        #10;
        $display("OpCode: %b, Function: %b, ALUControl: %b", OpCode, Function, ALUControl); // Expect: 0110
        
        Function = 6'b000010; // srl
        #10;
        $display("OpCode: %b, Function: %b, ALUControl: %b", OpCode, Function, ALUControl); // Expect: 0111
        
        Function = 6'b101010; // slt
        #10;
        $display("OpCode: %b, Function: %b, ALUControl: %b", OpCode, Function, ALUControl); // Expect: 1001

        // Test cases for I-type instructions
        OpCode = 6'b001000; // addi
        Function = 6'bxxxxxx; // Don't care
        #10;
        $display("OpCode: %b, ALUControl: %b", OpCode, ALUControl); // Expect: 0000
        
        OpCode = 6'b100011; // lw
        #10;
        $display("OpCode: %b, ALUControl: %b", OpCode, ALUControl); // Expect: 0000
        
        OpCode = 6'b101011; // sw
        #10;
        $display("OpCode: %b, ALUControl: %b", OpCode, ALUControl); // Expect: 0000
        
        OpCode = 6'b001111; // lb
        #10;
        $display("OpCode: %b, ALUControl: %b", OpCode, ALUControl); // Expect: 0000
        
        OpCode = 6'b001101; // ori
        Function = 6'bxxxxxx; // Don't care
        #10;
        $display("OpCode: %b, ALUControl: %b", OpCode, ALUControl); // Expect: 0011

        // Add more tests as needed for other opcodes...

        // Finish simulation
        $finish;
    end

endmodule

