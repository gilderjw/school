// Verilog test fixture created from schematic /home/gilderjw/Documents/csse232/1516a-csse232-sid-transputer/XilinxLabs/memory/whatever.sch - Tue Oct 13 19:04:00 2015

`timescale 1ns / 1ps

module whatever_whatever_sch_tb();

// Inputs
   reg [9:0] addra;
   reg [15:0] dina;
   reg wea;
   reg clock;
   reg reset;

// Output
   wire [15:0] memToControl;
   wire alusrc;
   wire memtoreg;
   wire regdest;
   wire regwrite;
   wire memread;
   wire memwrite;
   wire branch;

// Bidirs

// Instantiate the UUT
   whatever UUT (
		.memToControl(memToControl), 
		.addra(addra), 
		.dina(dina), 
		.wea(wea), 
		.clock(clock), 
		.alusrc(alusrc), 
		.memtoreg(memtoreg), 
		.regdest(regdest), 
		.regwrite(regwrite), 
		.memread(memread), 
		.memwrite(memwrite), 
		.branch(branch), 
		.reset(reset)
   );
// Initialize Inputs
integer i;
	initial begin
		i = 0;
		addra = 0;
		dina = 0;
		wea = 0;
		clock = 0;
		reset = 0;

		#10
		clock = !clock;

		
		#10
		clock = !clock;
		addra = addra + 1;
		
		#10
		clock = !clock;
		
		
		#10
		clock = !clock;
		addra = addra + 1;
		
		#10
		clock = !clock;
		
		
		#10
		clock = !clock;
		addra = addra + 1;
		
				#10
		clock = !clock;

		
		#10
		clock = !clock;
		addra = addra + 1;
		
		#10
		clock = !clock;
		
		
		#10
		clock = !clock;
		addra = addra + 1;
		
		#10
		clock = !clock;
		
		
		#10
		clock = !clock;
		addra = addra + 1;
		
		#10 
		clock = !clock;
	end
	
endmodule
