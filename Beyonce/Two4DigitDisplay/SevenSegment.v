`timescale 1ns / 1ps
module SevenSegment(numin, segout);
    input	[3:0] numin;
    output	reg [6:0] segout;    //segout[0] - seg_a, segout[1] - seg_b, segout[2] - seg_c,
                                //segout[3] - seg_d, segout[4] - seg_e, segout[5] - seg_f, segout[6] - seg_g
    always @(numin)
    begin
        case (numin)
                4'b0000: segout <= 7'b1000000;    //0 
                4'b0001: segout <= 7'b1111001;    //1
                4'b0010: segout <= 7'b0100100;    //2
                4'b0011: segout <= 7'b0110000;    //3
                4'b0100: segout <= 7'b0011001;    //4
                4'b0101: segout <= 7'b0010010;    //5
                4'b0110: segout <= 7'b0000010;    //6
                4'b0111: segout <= 7'b1111000;    //7
                4'b1000: segout <= 7'b0000000;    //8
                4'b1001: segout <= 7'b0010000;    //9
                4'b1010: segout <= 7'b0001000;    //A
                4'b1011: segout <= 7'b0000011;    //B
                4'b1100: segout <= 7'b1000110;    //C
                4'b1101: segout <= 7'b0100001;    //D
                4'b1110: segout <= 7'b0000110;    //E
                4'b1111: segout <= 7'b0001110;    //F
                default: segout <= 7'b1111111;  // - - -
       endcase
     end
endmodule

