`timescale 1ns / 1ps
module id_ex (
    input clk,
    input reset,
    
    input [31:0] pc_in, //address passed
    input [31:0] reg_data1, //read data 1 
    input [31:0] reg_data2, //read data 2
    input [31:0] sign_ext_offset, //sign extended in
    input [4:0] rd, //destination reg in
    input [4:0] rt, //target reg in 
    input [5:0] ALUop, //func in
    input Shamt, //shamt in
    input [5:0] opcode, //i just want to try to see if decode will work with these 2
    input [1:0] decodeop, 
    
    output reg [31:0] pc_out, // address out
    output reg [31:0] reg_data1_out, //read data1 out
    output reg [31:0] reg_data2_out, //read data2 out
    output reg [31:0] sign_ext_offset_out, //sign extended out
    output reg [4:0] rd_out, //destination reg out
    output reg [4:0] rt_out, //target reg out
    output reg [5:0] ALUop_out, //func out
    output reg Shamt_out, //shamt out
    output reg [5:0] opcode_out, //i just want to try to see if decode will work with these 2
    output reg [1:0] decodeop_out,

//input control signals 
    input alusrc_in,
    input [2:0] regdst_in,
    input regwrite_in,
    input [3:0] aluop_in,
    input memwrite_in,
    input memread_in,
    input [1:0] memtoreg_in,
    //input Branch_in,
    //input [1:0] LoadType_in,
    //input [1:0] StoreType_in,

//output control signals 
    output reg alusrc_out,
    output reg [2:0] regdst_out,
    //output reg Branch_out,
    output reg regwrite_out,
    output reg [3:0] aluop_out,
    output reg memwrite_out,
    output reg memread_out,
    output reg [1:0] memtoreg_out
    //output reg [1:0] LoadType_out,
    //output reg [1:0] StoreType_out
);

always @(posedge clk or posedge reset) begin
    if (reset) begin 
        pc_out <= 32'b0;
        reg_data1_out <= 32'b0;
        reg_data2_out <= 32'b0;
        sign_ext_offset_out <= 32'b0;
        rd_out <= 5'b0;
        rt_out <= 5'b0;
        ALUop_out <= 6'b0;
        Shamt_out <= 5'b0;
        opcode_out <= 6'b0;
        decodeop_out <= 2'b0;
        
        //control signals reset 
        alusrc_out <= 1'b0;
        regdst_out <= 1'b0;
        //branch_out <= 1'b0;
        regwrite_out <= 1'b0;
        aluop_out <= 4'b0000;
        memwrite_out <= 1'b0;
        memread_out <= 1'b0;
        memtoreg_out <= 1'b0;
        //loadtype_out <= 2'b0;
        //storetype_out <= 2'b0;
            
    end else begin
        pc_out <= pc_in;
        reg_data1_out <= reg_data1;
        reg_data2_out <= reg_data2;
        sign_ext_offset_out <= sign_ext_offset;
        rd_out <= rd;
        rt_out <= rt;
        ALUop_out <= ALUop;
        Shamt_out <= Shamt;
        opcode_out <= opcode;
        decodeop_out <= decodeop;
        
        //control signals pass through 
        alusrc_out <= alusrc_in;
        regdst_out <= regdst_in;
       // branch_out <= branch_in;
        regwrite_out <= regwrite_in;
        aluop_out <= aluop_in;
        memwrite_out <= memwrite_in;
        memread_out <= memread_in;
        memtoreg_out <= memtoreg_in;
       // loadtype_out <= loadtype_in;
       // storetype_out <= storetype_in;
        
    end
end

endmodule
