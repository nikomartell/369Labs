`timescale 1ns / 1ps

module Top_tb;

    // Inputs
    reg clk;
    reg rst;

    // Outputs
    wire [31:0] x;
    wire [31:0] y;
    
    //wire [6:0] out7;
    //wire [7:0] end_out;

    // Instantiate the Unit Under Test (UUT)
    Top uut (
        .Clk(clk), 
        .rst(rst),
        .x(x),
        .y(y)
        //.out7(out7), 
        //.en_out(end_out)
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
