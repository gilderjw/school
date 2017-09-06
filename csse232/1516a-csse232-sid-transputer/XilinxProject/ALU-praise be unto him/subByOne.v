`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:05:37 11/12/2015 
// Design Name: 
// Module Name:    subByOne 
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
module subByOne(
    input [15:0] oldValue,
    output [15:0] result
    );
assign result = oldValue -1;

endmodule
