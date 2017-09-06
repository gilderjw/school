`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:33:42 10/23/2015 
// Design Name: 
// Module Name:    MemoryAddressSelector 
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
module MemoryAddressSelector(
    input [1:0] MAddr,
    input [15:0] Three,
    input [15:0] Two,
    input [15:0] One,
    input [15:0] Zero,
    output reg [15:0] r
    );
always @(MAddr or Three or Two or One or Zero)
case(MAddr)
2'b00	:	r = Zero;
2'b01	:	r = One;
2'b10	:	r = Two;
2'b11	:	r = Three;
endcase

endmodule
