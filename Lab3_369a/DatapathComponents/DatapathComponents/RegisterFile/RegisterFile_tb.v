`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369 - Computer Architecture
// 
// Module - RegisterFile.v
// Description - Test the register_file
// Suggested test case - First write arbitrary values into 
// the saved and temporary registers (i.e., register 8 through 25). Then, 2-by-2, 
// read values from these registers.
////////////////////////////////////////////////////////////////////////////////


module RegisterFile_tb();

	reg [4:0] ReadRegister1;
	reg [4:0] ReadRegister2;
	reg	[4:0] WriteRegister;
	reg [31:0] WriteData;
	reg RegWrite;
	reg Clk;

	wire [31:0] ReadData1;
	wire [31:0] ReadData2;


	RegisterFile u0(
		.ReadRegister1(ReadRegister1), 
		.ReadRegister2(ReadRegister2), 
		.WriteRegister(WriteRegister), 
		.WriteData(WriteData), 
		.RegWrite(RegWrite), 
		.Clk(Clk), 
		.ReadData1(ReadData1), 
		.ReadData2(ReadData2)
	);

	initial begin
		Clk <= 1'b0;
		forever #10 Clk <= ~Clk;
	end

	initial begin
	
        #5 
        RegWrite <= 1; WriteData <= 12345; WriteRegister <= 7; ReadRegister1 <= 0; ReadRegister2 <= 0;
        #10 
        RegWrite <= 0; WriteData <= 23423; WriteRegister <= 9; ReadRegister1 <= 7; ReadRegister2 <= 9;
        #10 
        RegWrite <= 1; WriteData <= 55432; WriteRegister <= 2; ReadRegister1 <= 7; ReadRegister2 <= 2;
        #10 
        RegWrite <= 0; WriteData <= 11111; WriteRegister <= 3; ReadRegister1 <= 2; ReadRegister2 <= 1;
        #10 
        RegWrite <= 1; WriteData <= 13213; WriteRegister <= 1; ReadRegister1 <= 1; ReadRegister2 <= 32;
        #10 
        RegWrite <= 0; WriteData <= 77777; WriteRegister <= 8; ReadRegister1 <= 7; ReadRegister2 <= 2;
	
	end

endmodule
