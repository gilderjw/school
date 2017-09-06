`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:09:48 11/08/2015 
// Design Name: 
// Module Name:    F forcer
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
module Fforcer(
    input [15:0]A,
	 input CLK,
	 output reg [15:0] r
    );
	 always @(posedge CLK) begin
		r = A;
		r[15:12]=4'hf;
	 end

endmodule