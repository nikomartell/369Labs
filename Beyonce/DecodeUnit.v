module DecodeUnit (
    input [31:0] MemOut,
    input [31:0] Rt,
    input [5:0] opcode,
    input [1:0] DecodeOp, // Assuming DecodeOp is a 2-bit control signal
    output reg [31:0] decode_result
);

initial begin 
    decode_result <= 0;
end

always @(*) begin

    // Still need the seperate values for opcode and base

    // Set the decode result based on the opcode and base
    if (opcode == 6'b100011) begin //LW 
        decode_result <= MemOut;
    end
    else if (opcode == 6'b101011) begin //SW
        decode_result <= Rt;
    end
    else if (opcode == 6'b101001) begin // SH
        if (DecodeOp[1]) begin 
            decode_result <= {Rt[15:0], MemOut[15:0]};
        end
        else begin 
            decode_result <= {MemOut[31:16], Rt[15:0]};
        end
    end
    else if (opcode == 6'b100001) begin //LH
        if (DecodeOp[1]) begin 
            decode_result <= {MemOut[15:0], Rt[15:0]};
        end
        else begin 
            decode_result <= {Rt[31:16], MemOut[15:0]};
        end
    end
    else if (opcode == 6'b101000) begin //SB
        case (DecodeOp) 
            2'b00: begin
                decode_result <= {MemOut[31:8], Rt[7:0]};
            end
            2'b01: begin
                decode_result <= {MemOut[31:16], Rt[7:0], MemOut[7:0]};
            end
            2'b10: begin
                decode_result <= {MemOut[31:24], Rt[7:0], MemOut[15:0]};
            end
            2'b11: begin 
                decode_result <= {Rt[7:0], MemOut[23:0]};
            end
            default: decode_result <= 0;
        endcase
    end
    else if (opcode == 6'b100000) begin //LB
        case (DecodeOp) 
            2'b00: begin
                decode_result <= {Rt[31:8], MemOut[7:0]};
            end
            2'b01: begin
                decode_result <= {Rt[31:16], MemOut[7:0], Rt[7:0]};
            end
            2'b10: begin
                decode_result <= {Rt[31:24], MemOut[7:0], Rt[15:0]};
            end
            2'b11: begin 
                decode_result <= {MemOut[7:0], Rt[23:0]};
            end
            default: decode_result <= 0;
        endcase
        
    end
end

endmodule
