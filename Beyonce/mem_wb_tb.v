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
        
        // Test vector 1
        mem_data_in = 32'hA5A5A5A5;
        alu_result_in = 32'h5A5A5A5A;
        reg_write_addr_in = 5'b10101;
        reg_write_en_in = 1;
        #20;
        
        // Test vector 2
        mem_data_in = 32'hFFFFFFFF;
        alu_result_in = 32'h00000000;
        reg_write_addr_in = 5'b01010;
        reg_write_en_in = 0;
        #20;

        // Test vector 3
        mem_data_in = 32'h12345678;
        alu_result_in = 32'h87654321;
        reg_write_addr_in = 5'b11111;
        reg_write_en_in = 1;
        #20;

        // Test vector 4
        mem_data_in = 32'hDEADBEEF;
        alu_result_in = 32'hBEEFDEAD;
        reg_write_addr_in = 5'b00001;
        reg_write_en_in = 0;
        #20;

        // Test vector 5
        mem_data_in = 32'hCAFEBABE;
        alu_result_in = 32'hBABECAFE;
        reg_write_addr_in = 5'b00100;
        reg_write_en_in = 1;
        #20;

        // Add more test vectors as needed
    end
    
    always #5 clk = ~clk; // Clock generator

endmodule
