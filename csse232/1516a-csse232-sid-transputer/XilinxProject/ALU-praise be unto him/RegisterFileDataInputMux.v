`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:40:29 10/23/2015 
// Design Name: 
// Module Name:    RegisterFileDataInputMux 
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
module RegisterFileDataInputMux(
    input [2:0] RFWD,
	 input [15:0] Five,
	 input [15:0] Four,
    input [15:0] Three,
    input [15:0] Two,
    input [15:0] One,
    input [15:0] Zero,
    output reg[15:0] r
    );
always @(RFWD or Five or Four or Three or Two or One or Zero)
case(RFWD)
3'b000	:	r = Zero;
3'b001	:	r = One;
3'b010	:	r = Two;
3'b011	:	r = Three;
3'b100	:	r = Four;
3'b101	:	r = Five;
endcase
endmodule
