`timescale 1ns / 1ps

module ex_mem_tb;

    // Inputs
    reg clk;
    reg reset;
    reg [31:0] ex_data;
    reg ex_control;

    // Outputs
    wire [31:0] mem_data;
    wire mem_control;

    // Instantiate the Unit Under Test (UUT)
    ex_mem uut (
        .clk(clk), 
        .reset(reset), 
        .ex_data(ex_data), 
        .ex_control(ex_control), 
        .mem_data(mem_data), 
        .mem_control(mem_control)
    );

    initial begin
        // Initialize Inputs
        clk = 0;
        reset = 0;
        ex_data = 0;
        ex_control = 0;

        // Wait 100 ns for global reset to finish
        #100;
        
        // Add stimulus here
        // Test Case 1: Apply reset
        reset = 1;
        #10;
        reset = 0;

        // Test Case 2: Apply first set of data and control signals
        ex_data = 32'hA5A5A5A5;
        ex_control = 1;
        #10;

        // Test Case 3: Apply second set of data and control signals
        ex_data = 32'h5A5A5A5A;
        ex_control = 0;
        #10;

        // Test Case 4: Apply third set of data and control signals
        ex_data = 32'hFFFFFFFF;
        ex_control = 1;
        #10;

        // Test Case 5: Apply fourth set of data and control signals
        ex_data = 32'h00000000;
        ex_control = 0;
        #10;

        // Finish simulation
        $finish;
    end
    
    // Clock generation
    always #5 clk = ~clk;

endmodule
