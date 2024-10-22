module ex_mem (
    input clk,
    input reset,
    //input [31:0] add_result,  not needed as branch moved to decode phase
    //input alu_zero,    zero not needed as branch moved to decode phase
    input [31:0] alu_result,
    input [31:0] read_data2,
    input [4:0] instruction_mux, 
    input PCSrc,
    input memRead,
    input memWrite,
    input MemtoReg,
    input RegWrite,
    input [5:0] ALUop,
    //output reg [31:0] add_result_out,
    //output reg alu_zero_out,
    output reg [31:0] alu_result_out,
    output reg [31:0] read_data2_out,
    output reg [4:0] instruction_mux_out,
    output reg PCSrc_out,
    output reg memRead_out,
    output reg memWrite_out,
    output reg MemtoReg_out,
    output reg RegWrite_out,
    output reg [5:0] ALUop_out
);

always @(posedge clk or posedge reset) begin
    if (reset) begin
        //add_result_out <= 32'b0;
        //alu_zero_out <= 1'b0;
        alu_result_out <= 32'b0;
        read_data2_out <= 32'b0;
        instruction_mux_out <= 5'b0;
        PCSrc_out <= 1'b0;
        memRead_out <= 1'b0;
        memWrite_out <= 1'b0;
        MemtoReg_out <= 1'b0;
        RegWrite_out <= 1'b0;
        ALUop_out <= 1'b0;
    end else begin
        //add_result_out <= add_result;
        //alu_zero_out <= alu_zero;
        alu_result_out <= alu_result;
        read_data2_out <= read_data2;
        instruction_mux_out <= instruction_mux;
        PCSrc_out <= PCSrc;
        memRead_out <= memRead;
        memWrite_out <= memWrite;
        MemtoReg_out <= MemtoReg;
        RegWrite_out <= RegWrite;
        ALUop <= ALUop_out;
    end
end
endmodule