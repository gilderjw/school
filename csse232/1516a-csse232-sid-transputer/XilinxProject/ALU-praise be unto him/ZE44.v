`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:23:57 11/08/2015 
// Design Name: 
// Module Name:    ZE44 
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
module ZE44(
    input [11:0] instruction,
    output reg [15:0] lolWut
    );
always @(instruction)
		lolWut = 16'h0000 + instruction;

endmodule
