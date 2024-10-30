`timescale 1ns / 1ps

module DecodeUnit_tb;

    // Parameters
    reg [31:0] MemOut;
    reg [31:0] Rt;
    reg [5:0] opcode;
    reg [1:0] DecodeOp;
    wire [31:0] decode_result;

    // Instantiate the DecodeUnit
    DecodeUnit uut (
        .MemOut(MemOut),
        .Rt(Rt),
        .opcode(opcode),
        .DecodeOp(DecodeOp),
        .decode_result(decode_result)
    );

    initial begin
        // Initialize Inputs
        MemOut = 32'h00000000;
        Rt = 32'h00000000;
        opcode = 6'b000000; // Default opcode
        DecodeOp = 2'b00; // Default DecodeOp
        
        // Monitor output
        $monitor("Time: %0t | MemOut: %h | Rt: %h | opcode: %b | DecodeOp: %b | decode_result: %h", 
                 $time, MemOut, Rt, opcode, DecodeOp, decode_result);
        
        // Test case 1: LW (Load Word)
        #10;
        opcode = 6'b100011; // LW
        MemOut = 32'hAABBCCDD; // Example data from memory
        Rt = 32'h00000000;
        
        // Test case 2: SW (Store Word)
        #10;
        opcode = 6'b101011; // SW
        Rt = 32'h11223344; // Example data to store
        
        // Test case 3: LH (Load Halfword)
        #10;
        opcode = 6'b100001; // LH
        MemOut = 32'h12345678; // Example data from memory
        DecodeOp = 2'b00; // Default
        
        // Test case 4: SH (Store Halfword)
        #10;
        opcode = 6'b101001; // SH
        Rt = 32'hAABBCCDD; // Example data to store
        DecodeOp = 2'b01; // Change DecodeOp
        
        // Test case 5: LB (Load Byte)
        #10;
        opcode = 6'b100000; // LB
        MemOut = 32'hDEADBEEF; // Example data from memory
        DecodeOp = 2'b10; // Different DecodeOp
        
        // Test case 6: SB (Store Byte)
        #10;
        opcode = 6'b101000; // SB
        Rt = 32'hFF000000; // Example data to store
        DecodeOp = 2'b11; // Different DecodeOp
        
        // Test case 7: Invalid opcode
        #10;
        opcode = 6'b111111; // Invalid opcode
        MemOut = 32'hFFFFFFFF; 
        Rt = 32'hFFFFFFFF; 
        DecodeOp = 2'b00; 
        
        // Finish simulation
        #10;
        $finish;
    end
endmodule
