`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369 - Computer Architecture
// 
// Module - data_memory.v
// Description - 32-Bit wide data memory.
//
// INPUTS:-
// Address: 32-Bit address input port.
// WriteData: 32-Bit input port.
// Clk: 1-Bit Input clock signal.
// MemWrite: 1-Bit control signal for memory write.
// MemRead: 1-Bit control signal for memory read.
//
// OUTPUTS:-
// ReadData: 32-Bit registered output port.
//
// FUNCTIONALITY:-
// Design the above memory similar to the 'RegisterFile' model in the previous 
// assignment. Create a 1K memory, for which we need 10 bits. In order to 
// implement byte addressing, we will use bits Address[11:2] to index the 
// memory location. The 'WriteData' value is written into the address 
// corresponding to Address[11:2] in the positive clock edge if 'MemWrite' 
// signal is 1. 'ReadData' is the value of memory location Address[11:2] if 
// 'MemRead' is 1, otherwise, it is 0x00000000. The reading of memory is not 
// clocked.
////////////////////////////////////////////////////////////////////////////////

module DataMemory(
    input [31:0] Address,    // Input Address 
    input [31:0] WriteData,  // Data that needs to be written into the address 
    input Clk,
    input MemWrite,          // Control signal for memory write 
    input MemRead,           // Control signal for memory read 
    output reg [31:0] ReadData // Contents of memory location at Address
    //output wire [31:0] debug_reg
); 
    
    // Declare the memory array 1024 - 32-bit words
    reg [31:0] Memory [0:1023];

    // Initialize memory to zero
    integer i;
    initial begin
        $readmemh("data_memory.mem", Memory);
        ReadData <= 32'b0;
    end
    
    always @(posedge Clk) begin
        // Write operation
        if (MemWrite) begin
            Memory[Address[11:2]] <= WriteData; // Use Address[11:2] for word alignment
        end
    end

    always @(*) begin
        // Read operation
        if (MemRead) begin
            ReadData = Memory[Address[11:2]]; // Read data if MemRead is asserted
        end else begin
            ReadData = 32'b0; // Return 0 if MemRead is not asserted
        end
    end

endmodule
