`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Brian Suchy, The People's Champion
// 
// Create Date:    19:59:52 10/27/2015 
// Design Name: 
// Module Name:    RegisterFile 
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
module RegisterFile(
    input clk,
    input [3:0] AAddress,
    input [3:0] BAddress,
    input [3:0] WriteAddress,
    input RegWrite,
    input RegRead,
    input [15:0] DataIn,
    output reg [15:0] A,
    output reg [15:0] B
    );
	 reg [15:0] Zero; reg [15:0] One; reg [15:0] Two; reg [15:0]Three; reg [15:0]Four;reg [15:0] Five; reg [15:0] Six; reg [15:0] Seven; reg [15:0] Eight;
	 reg [15:0] Nine;reg [15:0] Ten;reg [15:0] Eleven;reg [15:0] Twelve;reg [15:0] Thirteen;reg [15:0] Fourteen;reg [15:0] Fifteen;
	 
always @(negedge clk) begin

//Writeing to a register
if(RegWrite == 1)
begin
case(WriteAddress)
4'h0	:	Zero <= DataIn;
4'h1	:	One <= DataIn;
4'h2	:	Two <= DataIn;
4'h3	:	Three <= DataIn;
4'h4	:	Four <= DataIn;
4'h5	:	Five <= DataIn;
4'h6	:	Six <= DataIn;
4'h7	:	Seven <= DataIn;
4'h8	:	Eight <= DataIn;
4'h9	:	Nine <= DataIn;
4'hA	:	Ten <= DataIn;
4'hB	:	Eleven <= DataIn;
4'hC	:	Twelve <= DataIn;
4'hD	:	Thirteen <= DataIn;
4'hE	:	Fourteen <= DataIn;
4'hF	:	Fifteen <= DataIn;

endcase
end


// Registers
if(RegRead == 1)
begin


case(AAddress)
4'h0	:	assign A = Zero;
4'h1	:	assign A = One;
4'h2	:	assign A = Two;
4'h3	:	assign A = Three;
4'h4	:	assign A = Four;
4'h5	:	assign A = Five;
4'h6	:	assign A = Six;
4'h7	:	assign A = Seven;
4'h8	:	assign A = Eight;
4'h9	:	assign A = Nine;
4'hA	:	assign A = Ten;
4'hB	:	assign A = Eleven;
4'hC	:	assign A = Twelve;
4'hD	:	assign A = Thirteen;
4'hE	:	assign A = Fourteen;
4'hF	:	assign A = Fifteen;
endcase
case(BAddress)
4'h0	:	assign B = Zero;
4'h1	:	assign B = One;
4'h2	:	assign B = Two;
4'h3	:	assign B = Three;
4'h4	:	assign B = Four;
4'h5	:	assign B = Five;
4'h6	:	assign B = Six;
4'h7	:	assign B = Seven;
4'h8	:	assign B = Eight;
4'h9	:	assign B = Nine;
4'hA	:	assign B = Ten;
4'hB	:	assign B = Eleven;
4'hC	:	assign B = Twelve;
4'hD	:	assign B = Thirteen;
4'hE	:	assign B = Fourteen;
4'hF	:	assign B = Fifteen;
endcase


end//end if


//End Always
end

endmodule
