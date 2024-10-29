`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2024 01:49:21 PM
// Design Name: 
// Module Name: Mux32Bit3To1_tb
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

module Mux32Bit3To1_tb;

    // Declare testbench registers and wires
    reg [31:0] a;       // Input A
    reg [31:0] b;       // Input B
    reg [31:0] c;       // Input C
    reg [1:0] select;   // Select signal
    wire [31:0] result; // Output

    // Instantiate the MUX
    Mux32Bit3To1 uut (
        .out(result),
        .inA(a),
        .inB(b),
        .inC(c),
        .sel(select)
    );

    // Test sequence
    initial begin
        // Initialize inputs
        a = 32'hA0A0A0A0; // Example value for inA
        b = 32'hB0B0B0B0; // Example value for inB
        c = 32'hC0C0C0C0; // Example value for inC
        
        // Test case 1: Select inA
        select = 2'b00;
        #10; // Wait 10 time units
        $display("Select: %b, Output: %h", select, result); // Expect: A0A0A0A0
        
        // Test case 2: Select inB
        select = 2'b01;
        #10;
        $display("Select: %b, Output: %h", select, result); // Expect: B0B0B0B0
        
        // Test case 3: Select inC
        select = 2'b10;
        #10;
        $display("Select: %b, Output: %h", select, result); // Expect: C0C0C0C0

        // Test case 4: Default case (invalid select)
        select = 2'b11; // Not used in the MUX
        #10;
        $display("Select: %b, Output: %h", select, result); // Expect: 00000000 (default case)

        // Finish simulation
        $finish;
    end

endmodule
