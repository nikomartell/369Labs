`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2024 02:38:07 PM
// Design Name: 
// Module Name: Top
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


module Top(
    input clk,
    input rst
);
    //wires out of ID/EX Register
    wire [31:0] pc_out_idex; // address out
    wire [31:0] reg_data1_out_idex; //read data1 out
    wire [31:0] reg_data2_out_idex; //read data2 out
    wire [31:0] sign_ext_offset_out_idex; //sign extended out
    wire [4:0] rd_out_idex; //destination reg out
    wire [4:0] rt_out_idex; //target reg out
    wire [5:0] ALUop_out_idex; //func out
    wire Shamt_out_idex; //shamt out
    wire alusrc_out_idex;
    wire [2:0] regdst_out_idex;
    wire regwrite_out_idex;
    wire [3:0] aluop_out_idex;
    wire memwrite_out_idex;
    wire memread_out_idex;
    wire [1:0] memtoreg_out_idex;
    wire [5:0] opcode_out_idex; //i just want to try to see if decode will work with these 2
    wire [1:0] decodeop_out_idex;
    
    //wires out of execute phase
    wire [31:0] ALU_result;
    wire [4:0] regdst;
    
    //wires out of EX/MEM Register 
    wire [31:0] pc_out_exmem; //pc adder 4 out 
    wire [31:0] alu_result_out_exmem;
    wire [31:0] read_data2_out_exmem;
    wire [4:0] instruction_mux_out_exmem; //write reg out mux 
    wire regwrite_out_exmem;
    wire memwrite_out_exmem;
    wire memread_out_exmem;
    wire [1:0] memtoreg_out_exmem;
    wire [5:0] opcode_out_exmem; //i just want to try to see if decode will work with these 2
    wire [1:0] decodeop_out_exmem;
    
    //wires out of memory phase
    wire [31:0] read_mem_data_out;
    
    
    id_ex IDEX();
    ExecutePhase(reg_data1_out_idex, reg_data2_out_idex, sign_ext_offset_out_idex, rd_out_idex, rt_out_idex, Shamt_out_idex, alusrc_out_idex, regdst_out_idex, aluop_out_idex,
        ALU_result, regdst
    );
    ex_mem EXMEM();
    MemoryPhase(clk, alu_result_out_exmem, read_data2_out_exmem, opcode_out_exmem, decodeop_out_exmem, memwrite_out_exmem, memread_out_exmem,
        read_mem_data_out
    );
    
    
endmodule
