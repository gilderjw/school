`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:09:48 11/08/2015 
// Design Name: 
// Module Name:    F forcer testbench
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
module Fforcer_tb;
	reg [15:0]in;
	reg clk;
	wire [15:0]out;
	
	Fforcer uut (
	.A(in),
	.CLK(clk),
	.r(out)
	);
	
	initial begin
		clk=0;
	end
	
	always begin
		#20 clk= ~clk;
	end
	
	initial begin
		in = 16'h1234;
		#40
		if(out == 16'hf234)
			$display("F forced \o/");
	end
endmodule