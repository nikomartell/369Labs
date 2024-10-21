module DecodeUnit (
    input [31:0] instruction,
    output reg [31:0] pc_value
);

always @(*) begin
    reg [6:0] opcode;
    reg [31:0] imm;

    opcode = instruction[6:0];
    
    // Calculate the immediate value for branch instructions
    imm = {{20{instruction[31]}}, instruction[7], instruction[30:25], instruction[11:8], 1'b0};

    // Set the PC value based on the opcode and immediate value
    case (opcode)
        7'b1100011: // Branch instructions
            pc_value = imm;
        default:
            pc_value = 32'b0; // Default case
    endcase
end

endmodule

endmodule