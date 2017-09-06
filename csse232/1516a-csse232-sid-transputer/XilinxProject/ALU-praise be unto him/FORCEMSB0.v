`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:34:30 11/08/2015 
// Design Name: 
// Module Name:    FORCEMSB0 
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
module FORCEMSB0(
    input [15:0] notForced,
    output reg [15:0] forced
    );
	always @(notForced) begin
		forced[15:12] <= 4'h0;
		forced[11:0] <= notForced[11:0];
end
endmodule
