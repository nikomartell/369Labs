`timescale 1ns / 1ps

module Top_tb;

    // Inputs
    reg clk;
    reg rst;

    // Outputs
    wire [31:0] WriteData_sim;
    wire [31:0] PCResult_sim;

    // Instantiate the Unit Under Test (UUT)
    Top uut (
        .clk(clk), 
        .rst(rst), 
        .WriteData_sim(WriteData_sim), 
        .PCResult_sim(PCResult_sim)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #10 clk = ~clk; // 10ns clock period
    end

    initial begin
        // Initialize Inputs
        rst = 1;

        // Wait 100 ns for global reset to finish
        #5;
        rst = 0; // Release reset
        
    end

endmodule
