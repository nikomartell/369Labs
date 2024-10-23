`timescale 1ns / 1ps
module mem_wb (
    input wire clk,
    input wire reset,
    
    input wire [31:0] ALUResult,
    input wire [31:0] mem_read,
    input wire [4:0] regdst, //write register in 
    input wire [31:0] pc_in, 
    
    output reg [31:0] ALUResult_out,
    output reg [31:0] mem_read_out, 
    output reg [4:0] regdst_out, //write register out
    output reg [31:0] pc_out,
    
    //input control signals 
    input wire [1:0] memtoreg,
    input wire regwrite,
    
    //output control signals 
    output reg [1:0] memtoreg_out,
    output reg regwrite_out
    
);

always @(posedge clk or posedge reset) begin
    if (reset) begin
        ALUResult_out <= 32'b0;
        mem_read_out <= 32'b0;
        regdst_out <= 5'b0;
        pc_out <= 32'b0;
        
        //control signals reset 
        regwrite_out <= 1'b0;
        memtoreg_out <= 1'b0;
        
    end else begin
        ALUResult_out <= ALUResult;
        mem_read_out <= mem_read;
        regdst_out <= regdst;
        pc_out <= pc_in;
        
        //control signals passing 
        regwrite_out <= regwrite;
        memtoreg_out <= memtoreg;
    end
end

endmodule
