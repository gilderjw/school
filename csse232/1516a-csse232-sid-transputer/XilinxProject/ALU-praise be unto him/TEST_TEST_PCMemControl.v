// Verilog test fixture created from schematic /home/gilderjw/Documents/csse232/1516a-csse232-sid-transputer/XilinxProject/ALU-praise be unto him/TEST_PCMemControl.sch - Tue Nov  3 18:57:55 2015

`timescale 1ns / 1ps

module TEST_PCMemControl_TEST_PCMemControl_sch_tb();

// Inputs
   reg CLK;
   reg Comparison;

// Output
   wire PCWrite;
   wire MDin;
   wire MRead;
   wire MWrite;
   wire RFRead;
   wire RDWrite;
   wire SPWrite;
   wire AWrite;
   wire BWrite;
   wire ALUInA;
   wire ALUOutWrite;
   wire Branch;
   wire SPRel;
   wire PshPop;
   wire [1:0] PCSrc;
   wire [1:0] MAddr;
   wire [1:0] RFWA;
   wire [2:0] RFWD;
   wire [1:0] AluInB;
   wire [3:0] ALUOp;
	wire [15:0] d2a;
	wire [15:0] PC;
	wire [3:0] CrtState;

// Bidirs

// Instantiate the UUT
   TEST_PCMemControl UUT (
		.CLK(CLK), 
		.Comparison(Comparison), 
		.PCWrite(PCWrite), 
		.MDin(MDin), 
		.MRead(MRead), 
		.MWrite(MWrite), 
		.RFRead(RFRead), 
		.RDWrite(RDWrite), 
		.SPWrite(SPWrite), 
		.AWrite(AWrite), 
		.BWrite(BWrite), 
		.ALUInA(ALUInA), 
		.ALUOutWrite(ALUOutWrite), 
		.Branch(Branch), 
		.SPRel(SPRel), 
		.PshPop(PshPop), 
		.PCSrc(PCSrc), 
		.MAddr(MAddr), 
		.RFWA(RFWA), 
		.RFWD(RFWD), 
		.ALUInB(ALUInB), 
		.ALUOp(ALUOp),
		.d2a(d2a),
		.PC(PC)	
   );
// Initialize Inputs
   initial begin
			// Initialize Inputs
		CLK = 0;
		Comparison = 0;
		
		// Wait 100 ns for global reset to finish
		#100;
		
		
//FETCH TEST
      CLK = 1;
		#10
		if(PCWrite==1 & PCSrc==1 & MAddr == 1 & MRead == 1) 
			$display("Fetch Works");
		else
			$display("Fetch FAILS!!!!!!!!!!!!!!!!!!!!!!!");
		
		CLK = 0;
		
		
		
	//DECODE TEST
		#10
		CLK = 1;
		#10
		if(RFRead == 1 & AWrite == 1 & BWrite == 1)
			$display("Decode Pass");
		else
			$display("Decode FAILS!!!!!!!!!!!!!!!!!");
		#10
		CLK=0;
		

	//R-TYPE 1 TEST
		#10
		CLK = 1;
		#10
		if(ALUInA == 2'b10 & ALUInB == 0 & ALUOutWrite == 1 & ALUOp == 4'h3)
			$display("R-Type 1 Pass");
		else
			$display("R-Type 1 FAILS!!!!!!!!!!!!!!!!!");
		#10
		CLK=0;
		
//R-TYPE 2 TEST		
		#10
		CLK = 1;
		#10
		if(RFWA==0 & RFWD ==2'b11 & RDWrite ==1 )
			$display("R-TYPE 2 Pass");
		else
			$display("R-RYPE 2 FAILS!!!!!!!!!!!!!!!!!");
		#10
		CLK=0;
		
//RETURN TO FETCH TEST

		#10
		CLK = 1;
		#10
		if(PCWrite ==1 & PCSrc == 1 & MAddr == 1 & MRead==1)
			$display("RETURN TO FETCH Pass");
		else
			$display("RETURN TO FETCH FAILS!!!!!!!!!!!!!!!!!");
		#10
		
//DECODE PHASE
		CLK=0;
		#10
		CLK=1;
		#10
		CLK=0;
		#10
		
//SW TEST
		CLK = 1;
		#10
		if(MDin == 1 & MAddr == 2'b11 & MWrite == 1)
			$display("SW Pass");
		else
			$display("SW FAILS!!!!!!!!!!!!!!!!!");
		#10
		CLK=0;
		
//Through fetch and decode
		#10
		CLK=1;		//Fetch
		#10
		CLK=0;
		#10
		CLK=1;		//Decode
		#10
		CLK=0;
		#10
		
//LW 1 TEST
		CLK = 1;
		#10
		if(MAddr == 2'b00 & MRead == 1)
			$display("LW 1 Pass");
		else
			$display("LW 1 FAILS!!!!!!!!!!!!!!!!!");
		#10
		CLK=0;
		#10
		
//LW 2 TEST
		CLK = 1;
		#10
		if(RFWD==0 & RDWrite ==1 & RFWA==0)
			$display("LW 2 Pass");
		else
			$display("LW 2 FAILS!!!!!!!!!!!!!!!!!");
		#10
		CLK=0;
		
//Through fetch and decode
		#10
		CLK=1;		//Fetch
		#10
		CLK=0;
		#10
		CLK=1;		//Decode
		#10
		CLK=0;
		#10	
		
//J TEST
		CLK = 1;
		#10
		if(PCSrc ==0 & PCWrite == 1)
			$display("J Pass");
		else
			$display("J FAILS!!!!!!!!!!!!!!!!!");
		#10
		CLK=0;

//Through fetch and decode
		#10
		CLK=1;		//Fetch
		#10
		CLK=0;
		#10
		CLK=1;		//Decode
		#10
		CLK=0;
		#10

//LI TEST
		CLK = 1;
		#10
		if(RFWA == 2'b10 & RFWD ==3'b100 & RDWrite == 1)
			$display("LI Pass");
		else
			$display("LI FAILS!!!!!!!!!!!!!!!!!");
		#10
		CLK=0;

//Through fetch and decode
		#10
		CLK=1;		//Fetch
		#10
		CLK=0;
		#10
		CLK=1;		//Decode
		#10
		CLK=0;
		#10
		
//MOV TEST
		CLK = 1;
		#10
		if(RFWD == 3'b010 & RFWA == 0 & RDWrite == 1)
			$display("MOV Pass");
		else
			$display("MOV FAILS!!!!!!!!!!!!!!!!!");
		#10
		CLK=0;
		
//Through fetch and decode
		#10
		CLK=1;		//Fetch
		#10
		CLK=0;
		#10
		CLK=1;		//Decode
		#10
		CLK=0;
		#10

//BEQ 1 TEST
		CLK = 1;
		#10
		if(ALUOp == 4'h5 & ALUInA == 1 & ALUInB ==0)
			$display("BEQ 1 Pass");
		else
			$display("BEQ 1 FAILS!!!!!!!!!!!!!!!!!");
		#10
		
		CLK=0;				
		Comparison = 1;
		#10
		
//BEQ 2 TEST
		CLK = 1;
		#10
		if(PCWrite ==0 & PCSrc == 2'b10 & Branch ==1)
			$display("BEQ 2 Pass");
		else
			$display("BEQ 2 FAILS!!!!!!!!!!!!!!!!!");
		#10
		CLK=0;
		
//Through fetch and decode
		#10
		CLK=1;		//Fetch
		#10
		CLK=0;
		#10
		CLK=1;		//Decode
		#10
		CLK=0;
		#10

//JAL TEST
		CLK = 1;
		#10
		if(RFWD == 3'b001 & RFWA == 2'b01 & RDWrite == 1 & PCSrc == 0 & PCWrite ==1)
			$display("JAL Pass");
		else
			$display("JAL FAILS!!!!!!!!!!!!!!!!!");
		#10
		
		CLK=0;	
//Through fetch and decode
		#10
		CLK=1;		//Fetch
		#10
		CLK=0;
		#10
		CLK=1;		//Decode
		#10
		CLK=0;
		#10

//PUSH TEST
		CLK = 1;
		#10
		if(PshPop==0 & MAddr == 2'b01 & SPWrite == 1 & MDin == 1 & MWrite ==1)
			$display("PUSH Pass");
		else
			$display("PUSH FAILS!!!!!!!!!!!!!!!!!");
		#10
		
		CLK=0;	

//Through fetch and decode
		#10
		CLK=1;		//Fetch
		#10
		CLK=0;
		#10
		CLK=1;		//Decode
		#10
		CLK=0;
		#10

//POP1 TEST
		CLK = 1;
		#10
		if(PshPop==1 & MAddr == 2'b01 & SPWrite == 1 & MRead ==1)
			$display("POP1 Pass");
		else
			$display("POP1 FAILS!!!!!!!!!!!!!!!!!");
		#10
		CLK=0;
		#10
		
//POP2 TEST
		CLK = 1;
		#10
		if(RFWD ==0 & RFWA==0 & RDWrite == 1)
			$display("POP2 Pass");
		else
			$display("POP2 FAILS!!!!!!!!!!!!!!!!!");
		#10
		CLK=0;


$display("Testing Complete");
	end
   
endmodule
