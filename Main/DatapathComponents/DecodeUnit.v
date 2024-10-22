module DecodeUnit (
    input [31:0] ReadData,
    input [1:0] DecodeOp, // Assuming DecodeOp is a 2-bit control signal
    output reg [31:0] decode_result
);

always @(*) begin

    // Still need the seperate values for opcode and base

    // Set the decode result based on the opcode and base
    case (opcode)
        7'b1100011: // Branch instructions
            decode_result = base;
        default:
            decode_result = 32'b0; // Default case
    endcase

    // Additional logic based on DecodeOp
    case (DecodeOp)
        2'b00: // Load half byte
            // Add your logic for load half byte here
        2'b01: // Load byte
            // Add your logic for load byte here
        2'b10: // Store half byte
            // Add your logic for store half byte here
        default:
            // Default case for DecodeOp
    endcase
end

endmodule
