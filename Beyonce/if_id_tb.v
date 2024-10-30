`timescale 1ns / 1ps

module if_id_tb;

    // Inputs
    reg clk;
    reg reset;
    reg [31:0] id_instr;
    reg [31:0] id_pc;
    reg [31:0] id_data1;
    reg [31:0] id_data2;
    reg [4:0] id_rd;
    reg [4:0] id_rs1;
    reg [4:0] id_rs2;
    reg id_reg_write;
    reg id_mem_read;
    reg id_mem_write;
    reg id_mem_to_reg;
    reg id_alu_src;
    reg [1:0] id_alu_op;

    // Outputs
    wire [31:0] ex_instr;
    wire [31:0] ex_pc;
    wire [31:0] ex_data1;
    wire [31:0] ex_data2;
    wire [4:0] ex_rd;
    wire [4:0] ex_rs1;
    wire [4:0] ex_rs2;
    wire ex_reg_write;
    wire ex_mem_read;
    wire ex_mem_write;
    wire ex_mem_to_reg;
    wire ex_alu_src;
    wire [1:0] ex_alu_op;

    // Instantiate the Unit Under Test (UUT)
    id_ex uut (
        .clk(clk), 
        .reset(reset), 
        .id_instr(id_instr), 
        .id_pc(id_pc), 
        .id_data1(id_data1), 
        .id_data2(id_data2), 
        .id_rd(id_rd), 
        .id_rs1(id_rs1), 
        .id_rs2(id_rs2), 
        .id_reg_write(id_reg_write), 
        .id_mem_read(id_mem_read), 
        .id_mem_write(id_mem_write), 
        .id_mem_to_reg(id_mem_to_reg), 
        .id_alu_src(id_alu_src), 
        .id_alu_op(id_alu_op), 
        .ex_instr(ex_instr), 
        .ex_pc(ex_pc), 
        .ex_data1(ex_data1), 
        .ex_data2(ex_data2), 
        .ex_rd(ex_rd), 
        .ex_rs1(ex_rs1), 
        .ex_rs2(ex_rs2), 
        .ex_reg_write(ex_reg_write), 
        .ex_mem_read(ex_mem_read), 
        .ex_mem_write(ex_mem_write), 
        .ex_mem_to_reg(ex_mem_to_reg), 
        .ex_alu_src(ex_alu_src), 
        .ex_alu_op(ex_alu_op)
    );

    initial begin
        // Initialize Inputs
        clk = 0;
        reset = 0;
        id_instr = 0;
        id_pc = 0;
        id_data1 = 0;
        id_data2 = 0;
        id_rd = 0;
        id_rs1 = 0;
        id_rs2 = 0;
        id_reg_write = 0;
        id_mem_read = 0;
        id_mem_write = 0;
        id_mem_to_reg = 0;
        id_alu_src = 0;
        id_alu_op = 0;

        // Wait for global reset
        #100;
        
        // Apply first test vector
        reset = 1;
        #10;
        reset = 0;
        id_instr = 32'h12345678;
        id_pc = 32'h00000004;
        id_data1 = 32'h00000001;
        id_data2 = 32'h00000002;
        id_rd = 5'b00001;
        id_rs1 = 5'b00010;
        id_rs2 = 5'b00011;
        id_reg_write = 1;
        id_mem_read = 0;
        id_mem_write = 1;
        id_mem_to_reg = 0;
        id_alu_src = 1;
        id_alu_op = 2'b10;

        // Wait for some time
        #50;

        // Apply second test vector
        id_instr = 32'h87654321;
        id_pc = 32'h00000008;
        id_data1 = 32'h00000003;
        id_data2 = 32'h00000004;
        id_rd = 5'b00100;
        id_rs1 = 5'b00101;
        id_rs2 = 5'b00110;
        id_reg_write = 0;
        id_mem_read = 1;
        id_mem_write = 0;
        id_mem_to_reg = 1;
        id_alu_src = 0;
        id_alu_op = 2'b01;

        // Wait for some time
        #50;

        // Apply third test vector
        id_instr = 32'hAABBCCDD;
        id_pc = 32'h0000000C;
        id_data1 = 32'h00000005;
        id_data2 = 32'h00000006;
        id_rd = 5'b01000;
        id_rs1 = 5'b01001;
        id_rs2 = 5'b01010;
        id_reg_write = 1;
        id_mem_read = 1;
        id_mem_write = 1;
        id_mem_to_reg = 1;
