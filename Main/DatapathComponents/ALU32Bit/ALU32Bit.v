`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369 - Computer Architecture
// 
// Module - ALU32Bit.v
// Description - 32-Bit wide arithmetic logic unit (ALU).
//
// INPUTS:-
// ALUControl: N-Bit input control bits to select an ALU operation.
// A: 32-Bit input port A.
// B: 32-Bit input port B.
//
// OUTPUTS:-
// ALUResult: 32-Bit ALU result output.
// ZERO: 1-Bit output flag. 
//
// FUNCTIONALITY:-
// Design a 32-Bit ALU, so that it supports all arithmetic operations 
// needed by the MIPS instructions given in Labs5-8.docx document. 
//   The 'ALUResult' will output the corresponding result of the operation 
//   based on the 32-Bit inputs, 'A', and 'B'. 
//   The 'Zero' flag is high when 'ALUResult' is '0'. 
//   The 'ALUControl' signal should determine the function of the ALU 
//   You need to determine the bitwidth of the ALUControl signal based on the number of 
//   operations needed to support. 
////////////////////////////////////////////////////////////////////////////////

module ALU32Bit(ALUControl, A, B, ALUResult, Zero);

	input [3:0] ALUControl; // control bits for ALU operation
                                // you need to adjust the bitwidth as needed
	input [31:0] A, B;	    // inputs

	output reg [31:0] ALUResult;	// answer
	output reg Zero;	    // Zero=1 if ALUResult == 0

    always @(ALUControl, A, B) begin
        case (ALUControl)
            0: begin 
                ALUResult <= A + B; //add
            end
            1: begin 
                ALUResult <= A - B; //sub
            end
            2: begin 
                ALUResult <= A & B; //and
            end
            3: begin
                ALUResult <= A | B; //or 
            end
            4: begin 
		        ALUResult <= ~(A | B); //nor 
            end
            5: begin 
                ALUResult <= A ^ B; // xor 
            end 
            6: begin 
                ALUResult <= A << B << shamt; //sll
            end
            7: begin 
                ALUResult <= A >> B >> shamt; //srl
            end
	        8: begin 
		        ALUResult <= A * B; //multiply 
	        end 
            9: begin
		        ALUResult <= (A < B) ? 1 : 0; //set on less than 
	        end 
	        10: begin 
		        ALUResult <= (A >= 0) ? 0 : 1; //branch on greater than or equal to zero 
	        end 
	    11: begin 
			ALUResult <= (A - B != 0) ? 0 : 1;  //branch if not equal 
   		end 
     		12: begin 
       			ALUResult <= (A > 0) ? 0 : 1; //branch greater than zero 
	  end 
   		13: begin 
     			ALUResult <= (A <= 0) ? 0 : 1; //branch less than or equal to zero 
	end
 		14: begin 
   			ALUResult <= (A < 0) ? 0 : 1; // branch on less than zero 
      end 
		
        endcase
    end
    
    // zero flag for branch signal 
    always @(ALUResult) begin 
        if (ALUResult == 0) begin 
            Zero <= 1;
        end
        else begin 
            Zero <= 0;
        end
    end

endmodule

