`timescale 1ns / 1ps

module mem_wb_tb;

    // Inputs
    reg clk;
    reg reset;
    reg [31:0] mem_data_in;
    reg [31:0] alu_result_in;
    reg [4:0] reg_write_addr_in;
    reg reg_write_en_in;

    // Outputs
    wire [31:0] mem_data_out;
    wire [31:0] alu_result_out;
    wire [4:0] reg_write_addr_out;
    wire reg_write_en_out;

    // Instantiate the Unit Under Test (UUT)
    mem_wb uut (
        .clk(clk), 
        .reset(reset), 
        .mem_data_in(mem_data_in), 
        .alu_result_in(alu_result_in), 
        .reg_write_addr_in(reg_write_addr_in), 
        .reg_write_en_in(reg_write_en_in), 
        .mem_data_out(mem_data_out), 
        .alu_result_out(alu_result_out), 
        .reg_write_addr_out(reg_write_addr_out), 
        .reg_write_en_out(reg_write_en_out)
    );

    initial begin
        // Initialize Inputs
        clk = 0;
        reset = 0;
        mem_data_in = 0;
        alu_result_in = 0;
        reg_write_addr_in = 0;
        reg_write_en_in = 0;

        // Wait for global reset
        #100;
        
        // Apply test vectors
        reset = 1;
        #10;
        reset = 0;
        #10;
        
        mem_data_in = 32'hA5A5A5A5;
        alu_result_in = 32'h5A5A5A5A;
        reg_write_addr_in = 5'b10101;
        reg_write_en_in = 1;
        #20;
        
        mem_data_in = 32'hFFFFFFFF;
        alu_result_in = 32'h00000000;
        reg_write_addr_in = 5'b01010;
        reg_write_en_in = 0;
        #20;
        
        // Add more test vectors as needed
    end
    
    always #5 clk = ~clk; // Clock generator

endmodule
