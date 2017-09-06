`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:02:17 10/06/2015 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [15:0] a,
    input [15:0] b,
    input [3:0] opcode,
	 input clk,
    output reg [15:0] r,
    output reg cout,
    output reg zero,
	 output reg error,
	 output reg [1:0] compareVal
    );


always @(*)
begin

if(r==0)begin
compareVal =0;
end
case(opcode)
4'h 0 :	{cout,r} <= a+b;	//Addition
4'h 1 :	r <= a&b;			//And
4'h 2 :  r <= a|b;			//Or
4'h 3 :	r <= a << b;		//Shift Left
4'h 4 :	r <= a >> b;		//Shift Right
4'h 5 :  begin 
			r <= a-b;
					if(a > b)
						begin
							compareVal = 1;
						end
					else
							begin
							compareVal = -1;
							end
			end
default: begin error <= 1; end
endcase

zero = (!compareVal[0]) & 1'b1;

end
endmodule
