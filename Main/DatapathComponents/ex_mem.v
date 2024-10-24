`timescale 1ns / 1ps
module ex_mem (
    input clk,
    input reset,
    
    //input values
   // input [31:0] add_result, not needed as branch moved to decode phase
   // input alu_zero,    zero not needed as branch moved to decode phase
    input [31:0] pc_in, //pc adder 4 in
    input [31:0] alu_result,
    input [31:0] read_data2, //read data2 in 
    input [4:0] instruction_mux, //write register in mux 
    input [5:0] opcode, //i just want to try to see if decode will work with these 2
    input [1:0] decodeop,
    // input zero_signal_in, 
    
    //output reg [31:0] add_result_out,
    //output reg alu_zero_out,
    output reg [31:0] pc_out, //pc adder 4 out 
    output reg [31:0] alu_result_out,
    output reg [31:0] read_data2_out,
    output reg [4:0] instruction_mux_out, //write reg out mux 
    output reg [5:0] opcode_out, //i just want to try to see if decode will work with these 2
    output reg [1:0] decodeop_out,
    
    //input control signals 
    input regwrite, //reg write in 
    input memwrite, 
    input memread, 
    input [1:0] memtoreg,
   
    //output control signals 
    output reg regwrite_out, 
    output reg memwrite_out,
    output reg memread_out, 
    output reg [1:0] memtoreg_out
);

//
always @(posedge clk or posedge reset) begin
    if (reset) begin
        //add_result_out <= 32'b0;
        //alu_zero_out <= 1'b0;
        alu_result_out <= 32'b0;
        read_data2_out <= 32'b0;
        instruction_mux_out <= 5'b0;
        pc_out <= 32'b0;
        opcode_out <= 6'b0;
        decodeop_out <= 2'b0;
        
        
        //control signals reset 
        memread_out <= 1'b0;
        memwrite_out <= 1'b0;
        memtoreg_out <= 1'b0;
        regwrite_out <= 1'b0;
        
        
    end else begin
        //add_result_out <= add_result;
        //alu_zero_out <= alu_zero;
        alu_result_out <= alu_result;
        read_data2_out <= read_data2;
        instruction_mux_out <= instruction_mux;
        pc_out <= pc_in;
        opcode_out <= opcode;
        decodeop_out <= decodeop;
        
        //control signals passing 
        memread_out <= memread;
        memwrite_out <= memwrite;
        memtoreg_out <= memtoreg;
        regwrite_out <= regwrite;
    end
end
endmodule
