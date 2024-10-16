module id_ex (
    input clk,
    input reset,
    input [31:0] reg_data1,
    input [31:0] reg_data2,
    input [31:0] sign_ext_offset,
    input [4:0] rd,
    input [4:0] rt,
    input ALUsrc,
    input [5:0] ALUop,
    input RegDst,
    input PCSrc,
    input memRead,
    input memWrite,
    input MemtoReg,
    input RegWrite,
    output reg [31:0] reg_data1_out,
    output reg [31:0] reg_data2_out,
    output reg [31:0] sign_ext_offset_out,
    output reg [4:0] rd_out,
    output reg [4:0] rt_out,
    output reg ALUsrc_out,
    output reg [1:0] ALUop_out,
    output reg RegDst_out,
    output reg PCSrc_out,
    output reg memRead_out,
    output reg memWrite_out,
    output reg MemtoReg_out,
    output reg RegWrite_out
);

always @(posedge clk or posedge reset) begin
    if (reset) begin
        reg_data1_out <= 32'b0;
        reg_data2_out <= 32'b0;
        sign_ext_offset_out <= 32'b0;
        rd_out <= 5'b0;
        rt_out <= 5'b0;
        ALUsrc_out <= 1'b0;
        ALUop_out <= 6'b0;
        RegDst_out <= 1'b0;
        PCSrc_out <= 1'b0;
        memRead_out <= 1'b0;
        memWrite_out <= 1'b0;
        MemtoReg_out <= 1'b0;
        RegWrite_out <= 1'b0;
    end else begin
        reg_data1_out <= reg_data1;
        reg_data2_out <= reg_data2;
        sign_ext_offset_out <= sign_ext_offset;
        rd_out <= rd;
        rt_out <= rt;
        ALUsrc_out <= ALUsrc;
        ALUop_out <= ALUop;
        RegDst_out <= RegDst;
        PCSrc_out <= PCSrc;
        memRead_out <= memRead;
        memWrite_out <= memWrite;
        MemtoReg_out <= MemtoReg;
        RegWrite_out <= RegWrite;
    end
end

endmodule