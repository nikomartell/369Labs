`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369A - Computer Architecture
// Laboratory  1
// Module - InstructionMemory.v
// Description - 32-Bit wide instruction memory.
//
// INPUT:-
// Address: 32-Bit address input port.
//
// OUTPUT:-
// Instruction: 32-Bit output port.
//
// FUNCTIONALITY:-
// Similar to the DataMemory, this module should also be byte-addressed
// (i.e., ignore bits 0 and 1 of 'Address'). All of the instructions will be 
// hard-coded into the instruction memory, so there is no need to write to the 
// InstructionMemory.  The contents of the InstructionMemory is the machine 
// language program to be run on your MIPS processor.
//
//
//we will store the machine code for a code written in C later. for now initialize 
//each entry to be its index * 3 (memory[i] = i * 3;)
//all you need to do is give an address as input and read the contents of the 
//address on your output port. 
// 
//Using a 32bit address you will index into the memory, output the contents of that specific 
//address. for data memory we are using 1K word of storage space. for the instruction memory 
//you may assume smaller size for practical purpose. you can use 128 words as the size and 
//hardcode the values.  in this case you need 7 bits to index into the memory. 
//
//be careful with the least two significant bits of the 32bit address. those help us index 
//into one of the 4 bytes in a word. therefore you will need to use bit [8-2] of the input address. 


////////////////////////////////////////////////////////////////////////////////

module InstructionMemory(Address, Instruction); 

    input [31:0] Address;        // Input Address 

    output reg [31:0] Instruction;    // Instruction at memory location Address
    
    reg [31:0] Memory [127:0]; //Memory to hold instructions 128 words of 32-bits memory sort of like matrix  
    integer i;
   
   initial begin
        Memory[0] = 32'b0; // nop
        Memory[1] = 32'b001000_00000_00010_0000000000001110; // loop: addi $2, $0, 14
        Memory[2] = 32'b0; // nop
        Memory[3] = 32'b0; // nop
        Memory[4] = 32'b0; // nop
        Memory[5] = 32'b0; // nop
        Memory[6] = 32'b0; // nop
        Memory[7] = 32'b001000_00000_00011_1111_1111_1111_1110; // addi $3, $0, some large int
        Memory[8] = 32'b0; // nop
        Memory[9] = 32'b0; // nop
        Memory[10] = 32'b0; // nop
        Memory[11] = 32'b0; // nop 
        Memory[12] = 32'b0; // nop
        Memory[13] = 32'b000000_00010_00011_00001_00000_100111; // nor $1, $2, $3
        Memory[14] = 32'b0; // nop
        Memory[15] = 32'b0; // nop
        Memory[16] = 32'b0; // nop
        Memory[17] = 32'b0; // nop
        Memory[18] = 32'b0; // nop
        Memory[19] = 32'b000000_00011_00010_00100_00000_101010; // slt $4, $3, $1
        Memory[20] = 32'b0; // nop
        Memory[21] = 32'b0; // nop
        Memory[22] = 32'b0; // nop
        Memory[23] = 32'b0; // nop
        Memory[24] = 32'b000100_00100_00101_1111111111101000; // beq $4, $5 loop 
        Memory[25] = 32'b0; // nop
        Memory[26] = 32'b0; // nop
        Memory[27] = 32'b0; // nop
        Memory[28] = 32'b0; // nop
        Memory[29] = 32'b0; // nop





    end

    
    always @(Address) begin //Replace with text file later , for now trash values to itirate through memory    
        Instruction <= Memory[Address[8:2]];
    end 

endmodule
