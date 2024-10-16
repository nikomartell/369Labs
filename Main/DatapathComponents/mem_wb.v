module mem_wb (
    input wire clk,
    input wire reset,
    input wire [31:0] ALUResult,
    input wire [31:0] mem_read,
    input wire [4:0] RegDst,
    input wire MemtoReg,
    input wire RegWrite,
    output reg [31:0] alu_out_wb,
    output reg [31:0] mem_read_out, 
    output reg [4:0] RegDst_out,
    output reg MemtoReg_out,
    output reg RegWrite_out
);

always @(posedge clk or posedge reset) begin
    if (reset) begin
        alu_out_wb <= 32'b0;
        mem_read_out <= 32'b0;
        RegDst_out <= 5'b0;
        RegWrite_out <= 1'b0;
        MemtoReg_out <= 1'b0;
    end else begin
        alu_out_wb <= ALUResult;
        mem_read_out <= mem_read;
        RegDst_out <= RegDst;
        RegWrite_out <= RegWrite;
        MemtoReg_out <= MemtoReg;
    end
end

endmodule