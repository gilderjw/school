`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:37:36 10/12/2015
// Design Name:   blockmemory16kx1
// Module Name:   /home/gilderjw/Documents/csse232/1516a-csse232-sid-transputer/XilinxLabs/memory/blockmemory16kx1_tb.v
// Project Name:  memory
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: blockmemory16kx1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module blockmemory16kx1_tb;

	// Inputs
	reg clka;
	reg [0:0] wea;
	reg [9:0] addra;
	reg [15:0] dina;

	// Outputs
	wire [15:0] douta;

	// Instantiate the Unit Under Test (UUT)
	blockmemory16kx1 uut (
		.clka(clka), 
		.wea(wea), 
		.addra(addra), 
		.dina(dina), 
		.douta(douta)
	);

	initial begin
		// Initialize Inputs
		clka = 0;
		wea = 0;
		addra = 0;
		dina = 0;

		// Wait 100 ns for global reset to finish
		#100;
      wea = 1;
		addra = 8;
		dina = 16;
		#5
		clka = 1;
		#5
		clka = 0;
		wea = 0;
		addra = 0;
		dina = 0;
		#5
		clka = 1;
		#5
		clka = 0;
		addra = 8;
		#5
		clka = 1;
		
	end
      
endmodule

