`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:49:17 10/23/2015 
// Design Name: 
// Module Name:    RegisterFileWriteAddressMux 
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
module RegisterFileWriteAddressMux(
    input [1:0] RFWA,
    input [3:0] InstructionRegister,
    output reg [3:0] r
    );
	 always @*
case(RFWA)
2'b00	: r <= InstructionRegister;
2'b01 : r <= 4'hD;
2'b10 : r <= 4'h0;
endcase

endmodule
