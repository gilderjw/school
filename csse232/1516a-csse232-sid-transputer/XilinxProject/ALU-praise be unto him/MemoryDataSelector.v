`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:46:49 10/23/2015 
// Design Name: 
// Module Name:    MemoryDataSelector 
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
module MemoryDataSelector(
    input MDin,
    input [15:0] One,
    input [15:0] Zero,
    output reg [15:0] r
    );
	 always @*
case(MDin)
1'b0	:	r <= Zero;
1'b1	:	r <= One;

endcase


endmodule
