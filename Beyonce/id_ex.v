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
    input [5:0] Func, //func in
    input [4:0] Shamt, //shamt in
    input [5:0] FuncFunc, // actually func
    
    output reg [31:0] pc_out, // address out
    output reg [31:0] reg_data1_out, //read data1 out
    output reg [31:0] reg_data2_out, //read data2 out
    output reg [31:0] sign_ext_offset_out, //sign extended out
    output reg [4:0] rd_out, //destination reg out
    output reg [4:0] rt_out, //target reg out
    output reg [5:0] Func_out, //func out
    output reg [4:0] Shamt_out, //shamt out
    output reg [5:0] FuncFunc_out, //actually func

//input control signals 
    input alusrc_in,
    input regdst_in,
    input regwrite_in,
    input [3:0] aluop_in,
    input memwrite_in,
    input memread_in,
    input memtoreg_in,
   // input [1:0] loadtype_in,
   // input [1:0] storetype_in,

//output control signals 
    output reg alusrc_out,
    output reg regdst_out,
    output reg regwrite_out,
    output reg [3:0] aluop_out,
    output reg memwrite_out,
    output reg memread_out,
    output reg memtoreg_out
    //output reg [1:0] loadtype_out,
    //output reg [1:0] storetype_out
);

initial begin 
        pc_out <= 32'b0;
        reg_data1_out <= 32'b0;
        reg_data2_out <= 32'b0;
        sign_ext_offset_out <= 32'b0;
        rd_out <= 5'b0;
        rt_out <= 5'b0;
        Func_out <= 6'b0;
        Shamt_out <= 5'b0;
        FuncFunc_out <= 6'b0;
        
        //control signals reset 
        alusrc_out <= 1'b0;
        regdst_out <= 1'b0;
        regwrite_out <= 1'b0;
        aluop_out <= 4'b0000;
        memwrite_out <= 1'b0;
        memread_out <= 1'b0;
        memtoreg_out <= 1'b0;
        //loadtype_out <= 2'b0;
        //storetype_out <= 2'b0;
end

always @(negedge clk or posedge reset) begin
    if (reset) begin 
        pc_out <= 32'b0;
        reg_data1_out <= 32'b0;
        reg_data2_out <= 32'b0;
        sign_ext_offset_out <= 32'b0;
        rd_out <= 5'b0;
        rt_out <= 5'b0;
        Func_out <= 6'b0;
        Shamt_out <= 5'b0;
        FuncFunc_out <= 6'b0;
        
        //control signals reset 
        alusrc_out <= 1'b0;
        regdst_out <= 1'b0;
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
        Func_out <= Func;
        Shamt_out <= Shamt;
        FuncFunc_out <= FuncFunc;
        
        //control signals pass through 
        alusrc_out <= alusrc_in;
        regdst_out <= regdst_in;
        regwrite_out <= regwrite_in;
        aluop_out <= aluop_in;
        memwrite_out <= memwrite_in;
        memread_out <= memread_in;
        memtoreg_out <= memtoreg_in;
        //loadtype_out <= loadtype_in;
        //storetype_out <= storetype_in;
        
    end
end

endmodule
