`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:14:13 10/23/2015 
// Design Name: 
// Module Name:    ALUSourceAMux 
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
module ALUSourceAMux(
    input [1:0] ALUSrcA,
    input [15:0] Three,
    input [15:0] Two,
    input [15:0] One,
    input [15:0] Zero,
    output reg [15:0] Output
    );
always @*
case(ALUSrcA)
2'b00	:	assign Output = Zero;
2'b01	:	assign Output = One;
2'b10	:	assign Output = Two;
2'b11	:	assign Output = Three;
endcase

endmodule
