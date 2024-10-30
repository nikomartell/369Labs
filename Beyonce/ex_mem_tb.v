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
        reset = 1;
        #10;
        reset = 0;
        ex_data = 32'hA5A5A5A5;
        ex_control = 1;
        #10;
        ex_data = 32'h5A5A5A5A;
        ex_control = 0;
        #10;
        $finish;
    end
    
    always #5 clk = ~clk;

endmodule
