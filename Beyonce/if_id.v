module if_id (
    input wire clk,
    input wire reset,
    
    input wire [31:0] pc_in,
    input wire [31:0] instr_in,
    
    (* mark_debug = "true" *) output reg [31:0] pc_out,
    (* mark_debug = "true" *) output reg [31:0] instr_out
);

initial begin 
    pc_out <= 0;
    instr_out <= 0;
end

always @(posedge clk or posedge reset) begin
    if (reset) begin
        pc_out <= 32'b0;
        instr_out <= 32'b0;
    end else begin
        pc_out <= pc_in;
        instr_out <= instr_in;
    end
end

endmodule
