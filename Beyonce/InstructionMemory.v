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
    
    reg [31:0] memory [127:0]; //Memory to hold instructions 128 words of 32-bits memory sort of like matrix  
    integer i;
   
    initial begin
        //$readmemb("", memory);
        memory[0] <= 32'b00000000000000000000000000000000; // main: nop
memory[1] <= 32'b001000_00000_01000_0000000000000000; // loop: addi $t0, $zero, 0
memory[2] <= 32'b00000000000000000000000000000000; // nop
memory[3] <= 32'b00000000000000000000000000000000; // nop
memory[4] <= 32'b00000000000000000000000000000000; // nop
memory[5] <= 32'b00000000000000000000000000000000; // nop
memory[6] <= 32'b00000000000000000000000000000000; // nop
memory[7] <= 32'b001000_00000_01001_0000000010101011; // addi $t1, $zero, 171
memory[8] <= 32'b00000000000000000000000000000000; // nop
memory[9] <= 32'b00000000000000000000000000000000; // nop
memory[10] <= 32'b00000000000000000000000000000000; // nop
memory[11] <= 32'b00000000000000000000000000000000; // nop
memory[12] <= 32'b00000000000000000000000000000000; // nop
memory[13] <= 32'b001000_00000_01010_0001001000110100; // addi $t2, $zero, 4660
memory[14] <= 32'b00000000000000000000000000000000; // nop
memory[15] <= 32'b00000000000000000000000000000000; // nop
memory[16] <= 32'b00000000000000000000000000000000; // nop
memory[17] <= 32'b00000000000000000000000000000000; // nop
memory[18] <= 32'b00000000000000000000000000000000; // nop
memory[19] <= 32'b101000_01000_01001_0000000000000000; // sb $t1, 0($t0)
memory[20] <= 32'b00000000000000000000000000000000; // nop
memory[21] <= 32'b00000000000000000000000000000000; // nop
memory[22] <= 32'b00000000000000000000000000000000; // nop
memory[23] <= 32'b00000000000000000000000000000000; // nop
memory[24] <= 32'b00000000000000000000000000000000; // nop
memory[25] <= 32'b101001_01000_01010_0000000000000010; // sh $t2, 2($t0)  
memory[26] <= 32'b00000000000000000000000000000000; // nop
memory[27] <= 32'b00000000000000000000000000000000; // nop
memory[28] <= 32'b00000000000000000000000000000000; // nop
memory[29] <= 32'b00000000000000000000000000000000; // nop
memory[30] <= 32'b00000000000000000000000000000000; // nop
memory[31] <= 32'b100000_01000_10000_0000000000000000; // lb $s0, 0($t0)
memory[32] <= 32'b00000000000000000000000000000000; // nop
memory[33] <= 32'b00000000000000000000000000000000; // nop
memory[34] <= 32'b00000000000000000000000000000000; // nop
memory[35] <= 32'b00000000000000000000000000000000; // nop
memory[36] <= 32'b00000000000000000000000000000000; // nop
memory[37] <= 32'b100001_01000_10001_0000000000000010; // lh $s1, 2($t0)
memory[38] <= 32'b00000000000000000000000000000000; // nop
memory[39] <= 32'b00000000000000000000000000000000; // nop
memory[40] <= 32'b00000000000000000000000000000000; // nop
memory[41] <= 32'b00000000000000000000000000000000; // nop
memory[42] <= 32'b00000000000000000000000000000000; // nop
memory[43] <= 32'b000000_10000_10001_0101100000100000; // add $t3, $s0, $s1
memory[44] <= 32'b00000000000000000000000000000000; // nop
memory[45] <= 32'b00000000000000000000000000000000; // nop
memory[46] <= 32'b00000000000000000000000000000000; // nop
memory[47] <= 32'b00000000000000000000000000000000; // nop
memory[48] <= 32'b00000000000000000000000000000000; // nop
memory[49] <= 32'b001100_01011_01100_0000000011111111; // andi $t4, $t3, 255
memory[50] <= 32'b00000000000000000000000000000000; // nop
memory[51] <= 32'b00000000000000000000000000000000; // nop
memory[52] <= 32'b00000000000000000000000000000000; // nop
memory[53] <= 32'b00000000000000000000000000000000; // nop
memory[54] <= 32'b00000000000000000000000000000000; // nop
memory[55] <= 32'b000000_10000_10001_0110100000100101; // or $t5, $s0, $s1
memory[56] <= 32'b00000000000000000000000000000000; // nop
memory[57] <= 32'b00000000000000000000000000000000; // nop
memory[58] <= 32'b00000000000000000000000000000000; // nop
memory[59] <= 32'b00000000000000000000000000000000; // nop
memory[60] <= 32'b00000000000000000000000000000000; // nop
memory[61] <= 32'b000010_00000000000000000000000001; // j loop
memory[62] <= 32'b00000000000000000000000000000000; // nop

    end

    always @(Address) begin //Replace with text file later , for now trash values to itirate through memory    
        Instruction <= memory[Address[8:2]];
    end 

endmodule
