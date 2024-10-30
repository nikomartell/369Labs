'timescale 1ns / 1ps

module id_ex_tb;

    // Inputs
    reg clk;
    reg reset;
    reg [31:0] id_data;
    reg [4:0] id_reg;

    // Outputs
    wire [31:0] ex_data;
    wire [4:0] ex_reg;

    // Instantiate the Unit Under Test (UUT)
    id_ex uut (
        .clk(clk), 
        .reset(reset), 
        .id_data(id_data), 
        .id_reg(id_reg), 
        .ex_data(ex_data), 
        .ex_reg(ex_reg)
    );

    initial begin
        // Initialize Inputs
        clk = 0;
        reset = 0;
        id_data = 0;
        id_reg = 0;

        // Wait for global reset
        #100;
        
        // Apply test vectors
        reset = 1;
        #10;
        reset = 0;
        id_data = 32'hA5A5A5A5;
        id_reg = 5'b10101;
        #10;
        
        id_data = 32'h5A5A5A5A;
        id_reg = 5'b01010;
        #10;
        
        // Add more test vectors as needed
    end
    
    always #5 clk = ~clk; // Clock generator

endmodule
