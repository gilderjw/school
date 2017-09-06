`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:26:56 10/23/2015 
// Design Name: 
// Module Name:    PCSelectMux 
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
module PCSelectMux(
    input PCSrc,
    input [15:0] One,
    input [15:0] Zero,
    output reg [15:0] Output
    );
always @*
case(PCSrc)
1'b0	:	assign Output = Zero;
1'b1	:	assign Output = One;
endcase

endmodule
