`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369 - Computer Architecture
// 
// Module - ALU32Bit_tb.v
// Description - Test the 'ALU32Bit.v' module.
////////////////////////////////////////////////////////////////////////////////

module ALU32Bit_tb(); 

	reg [3:0] ALUControl;   // control bits for ALU operation
	reg [31:0] A, B;	        // inputs

	wire [31:0] ALUResult;	// answer
	wire Zero;	        // Zero=1 if ALUResult == 0

    ALU32Bit u0(
        .ALUControl(ALUControl), 
        .A(A), 
        .B(B), 
        .ALUResult(ALUResult), 
        .Zero(Zero)
    );

	initial begin
	
    //add test
		A = 32'h00000001;
		B = 32'h00000001;
	ALUControl = 4'b0000;
	#10;
		$display("Add: %h + %h = %h, Zero = %b", A, B, ALUResult, Zero);
   //sub test 
	 A = 32'h00000003; // 3
        B = 32'h00000001; // 1
        ALUControl = 4'b0001; // ALU subtraction
        #10;
        $display("Sub: %h - %h = %h, Zero = %b", A, B, ALUResult, Zero);
   //and test
	A = 32'hFFFFFFFF; // 0xFFFFFFFF
        B = 32'h0000000F; // 0x0000000F
        ALUControl = 4'b0010; // ALU AND
        #10;
        $display("AND: %h & %h = %h, Zero = %b", A, B, ALUResult, Zero);
   //or test
	A = 32'h0F0F0F0F; // 0x0F0F0F0F
        B = 32'hF0F0F0F0; // 0xF0F0F0F0
        ALUControl = 4'b0011; // ALU OR
        #10;
        $display("OR: %h | %h = %h, Zero = %b", A, B, ALUResult, Zero);		 
   //nor test
	A = 32'h0000000F; // 0x0000000F
        B = 32'h000000F0; // 0x000000F0
        ALUControl = 4'b0100; // ALU NOR
        #10;
        $display("NOR: ~(%h | %h) = %h, Zero = %b", A, B, ALUResult, Zero);		 
   //xor test		 
	 A = 32'hAAAA5555; // 0xAAAA5555
        B = 32'h5555AAAA; // 0x5555AAAA
        ALUControl = 4'b0101; // ALU XOR
        #10;
        $display("XOR: %h ^ %h = %h, Zero = %b", A, B, ALUResult, Zero);
        
   //sll 
	A = 32'h00000001; // 1
        B = 32'd1;        // Shift by 1
        ALUControl = 4'b0110; // ALU Left Shift
        #10;
        $display("Left Shift: %h << %d = %h, Zero = %b", A, B, ALUResult, Zero);
        		 
   //srl 
	A = 32'h00000002; // 2
        B = 32'd1;        // Shift by 1
        ALUControl = 4'b0111; // ALU Right Shift
        #10;
        $display("Right Shift: %h >> %d = %h, Zero = %b", A, B, ALUResult, Zero);
			 
$finish;
	
	end

endmodule

