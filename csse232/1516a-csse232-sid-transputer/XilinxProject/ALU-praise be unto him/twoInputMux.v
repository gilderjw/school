`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:51:17 11/09/2015 
// Design Name: 
// Module Name:    twoInputMux 
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
module twoInputMux(
    input [15:0] Zero,
    input [15:0] One,
    output reg [15:0] R,
    input SelectorBit
    );

always@(Zero or One or SelectorBit)
case(SelectorBit)
1'b0	:	R = Zero;
1'b1	:	R = One;

endcase


endmodule
