`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369 - Computer Architecture
// 
// Module - DataMemory_tb.v
// Description - Test the 'DataMemory.v' module.
////////////////////////////////////////////////////////////////////////////////

module DataMemory_tb(); 

    reg     [31:0]  Address;
    reg     [31:0]  WriteData;
    reg             Clk;
    reg             MemWrite;
    reg             MemRead;

    wire [31:0] ReadData;

    DataMemory u0(
        .Address(Address), 
        .WriteData(WriteData), 
        .Clk(Clk), 
        .MemWrite(MemWrite), 
        .MemRead(MemRead), 
        .ReadData(ReadData)
    ); 

	initial begin
		Clk <= 1'b0;
		forever #10 Clk <= ~Clk;
	end

	initial begin
	
    /// Initialize inputs
        Address = 32'h00000000;
        WriteData = 32'h00000000;
        MemWrite = 1'b0;
        MemRead = 1'b0;

        // Wait for global reset
        #100;

        // Test 1: Write data to memory
        Address = 32'h00000004;
        WriteData = 32'hDEADBEEF;
        MemWrite = 1'b1;
        MemRead = 1'b0;
        #20;
        MemWrite = 1'b0;

        // Test 2: Read data from memory
        Address = 32'h00000004;
        MemWrite = 1'b0;
        MemRead = 1'b1;
        #20;
        MemRead = 1'b0;

        // Test 3: Write and read another data
        Address = 32'h00000008;
        WriteData = 32'hCAFEBABE;
        MemWrite = 1'b1;
        MemRead = 1'b0;
        #20;
        MemWrite = 1'b0;

        Address = 32'h00000008;
        MemWrite = 1'b0;
        MemRead = 1'b1;
        #20;
        MemRead = 1'b0;

        // Test 4: Read from an address that was not written to
        Address = 32'h0000000C;
        MemWrite = 1'b0;
        MemRead = 1'b1;
        #20;
        MemRead = 1'b0;

        // Finish simulation
        $finish;
    end

endmodule

