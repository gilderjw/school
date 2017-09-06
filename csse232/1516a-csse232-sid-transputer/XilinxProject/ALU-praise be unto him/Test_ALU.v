`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:10:51 10/30/2015
// Design Name:   ALU
// Module Name:   /home/wangs4/1516a-csse232-sid-transputer/XilinxProject/Milestone 4/AluTheGOD/Test_ALU.v
// Project Name:  AluTheGOD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_ALU;

	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	reg [3:0] opcode;
	reg clk;

	// Outputs
	wire [15:0] r;
	wire cout;
	wire zero;
	wire error;
	wire [1:0] compareVal;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.a(a), 
		.b(b), 
		.opcode(opcode), 
		.r(r), 
		.cout(cout), 
		.zero(zero), 
		.error(error), 
		.compareVal(compareVal)
	);

	initial begin
		// Initialize Inputs
		a = 1;
		b = 0;
		opcode = 0;
		clk=0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		if(r==1)
		begin
		$display("+ done");
		end
		opcode=1;
		#100
		if(r==0)
		begin 
		$display ("& done");
		end
		opcode=2;
		#100
		if(r==1)
		begin
		$display("| done");
		end
		opcode=3;
		a=3'b100;
		b=1;
		#100
		
		if(r==4'b1000)
		begin 
		$display("<< done");
		end
		opcode=4;
		#100
		if(r==2'b10)
		begin
		$display(">> done");
		end
		
		
		opcode = 5;
		a = 5;
		b = 4;
		#100
		if(r != 0 && zero == 0 && compareVal == 1) $display("sub1 pass");
		else $display("sub1 fail");
		
		a = 2;
		b = 2;
		#100
		if(r == 0 && zero == 1 && compareVal == 0) $display("sub2 pass");
		else $display("sub2 fail");
		
		a = 1;
		b = 3;
		#100
		if(r == 16'b1111111111111110 && zero == 0 && compareVal == 2'b11) $display("sub3 pass");
		else $display("sub3 fail");
		
	end
    
endmodule
