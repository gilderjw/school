`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:10:34 10/22/2015 
// Design Name: 
// Module Name:    ALUSourceBMux 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ALUSourceBMux(
    input [1:0] ALUSrcB,
    input [15:0] Three,
    input [15:0] Two,
    input [15:0] One,
    input [15:0] Zero,
	 output reg[15:0] r
    );
always @(ALUSrcB or Zero or One or Two or Three)
case(ALUSrcB)
2'b00 : r <= Zero;
2'b01 : r <= One;
2'b10 : r <= Two;
2'b11 : r <= Three;
default	:	r <= Zero;
endcase

endmodule
