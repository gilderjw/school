`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:05:11 10/22/2015 
// Design Name: 
// Module Name:    Addby2 
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
module Addby2(
    input [15:0] oldPC,
    output reg [15:0] nextPC
    );
	always @* 
	 nextPC <= oldPC+1;


endmodule
