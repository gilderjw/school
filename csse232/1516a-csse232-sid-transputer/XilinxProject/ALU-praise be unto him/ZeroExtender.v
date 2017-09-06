`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:09:57 11/08/2015 
// Design Name: 
// Module Name:    ZeroExtender 
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
module ZeroExtender(
    input [1:0] compareIn,
    output reg [15:0] cmp
    );
always @(compareIn)
  cmp = compareIn + 16'h0000;

endmodule
