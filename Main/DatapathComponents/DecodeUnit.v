module DecodeUnit (
    input [31:0] ReadData,
    input [1:0] DecodeOp, // Assuming DecodeOp is a 2-bit control signal
    output reg [31:0] decode_result
);

always @(*) begin

    // Extract fields from ReadData
    opcode = ReadData[6:0];
    base = ReadData[25:21];
    rt = ReadData[20:16];
    offset = ReadData[15:0];

    // Sign-extend the offset to 32 bits
    imm = {{16{offset[15]}}, offset};

    // Set the decode result based on the opcode and immediate value
    case (opcode)
        7'b1100011: // Branch instructions
            decode_result = imm;
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
