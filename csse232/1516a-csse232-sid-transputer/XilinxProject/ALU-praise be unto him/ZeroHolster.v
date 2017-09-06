`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:38:43 11/10/2015 
// Design Name: 
// Module Name:    ZeroHolster 
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
module ZeroHolster(
    input Zero,
	 input enable,
    output reg Holster
    );

always@* begin
	if(enable==1'b1)begin
		Holster <= Zero;
	end
end

endmodule
