`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:  
// Engineer:  
//  
// Create Date:	20:38:41 10/27/2015  
// Design Name:  
// Module Name:	AluTheGOD  
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
module AluTheGOD(
		input CLK,
		input [3:0] Opcode,
		output reg [1:0] PCSrc,
		output reg PCWrite,
		output reg[1:0] MAddr,
     output reg MDin,
     output reg MRead,
     output reg MWrite,
     output reg [1:0] RFWA,
     output reg [2:0] RFWD,
     output reg RFRead,
     output reg RDWrite,
     output reg SPWrite,
     output reg AWrite,
     output reg BWrite,
     output reg ALUInA,
     output reg [1:0] ALUInB,
     output reg [3:0] ALUOp,
     output reg ALUOutWrite,
     output reg Branch,
     output reg SPRel,
     output reg PshPop,
	  output reg [3:0] CrtState,
	  output reg IRWrite
	);
reg[3:0] CurrentState = 4'h0;
reg[3:0] NextState = 4'h0;


//This is all the control signals that need to be set each time.
//assign PCSrc = 2'b00; assign PCWrite = 1'b0; assign MAddr = 2'b00; assign MDin = 1'b0; assign MRead = 1'b0; assign MWrite = 1'b0; assign RFWA = 2'b00; assign RFWD = 3'b000;
//assign RFRead = 1'b0; assign RDWrite = 1'b0; assign SPWrite = 1'b0; assign AWrite = 1'b0; assign BWrite = 1'b0; assign ALUInA = 1'b0; assign ALUInB = 2'b00; assign ALUOp = 4'b0000;
//assign ALUOutWrite = 1'b0; assign Branch = 1'b0; assign SPRel = 1'b0; assign PshPop = 1'b0;


always @* begin
CrtState <= CurrentState;
end


//STATE CONTROL
always @(posedge CLK) begin

CurrentState <= NextState;
end

always @* begin
case(CurrentState)


//Fetch
4'h0	:	begin NextState <= 4'h1;			end	//To Decode
			
			
//Decode			
4'h1	:	begin 

					case(Opcode) 
					
					 4'h1    :    NextState <= 4'h3; 		//SW
   				 4'h0    :    NextState <= 4'h4;			//LW
   				 4'h3    :    NextState <= 4'h5;			//J
   				 4'h7    :    NextState <= 4'h6;			//LI
   				 4'hF    :    NextState <= 4'h7;			//Mov
   				 4'h4    :    NextState <= 4'hC;   		//BEQ 1
   				 4'hC    :    NextState <= 4'hB; 		//Jal
   				 4'hD    :    NextState <= 4'h9;  		//Push
   				 4'hE    :    NextState <= 4'hE;  		//Pop
   				 4'h2    :    NextState <= 4'h2;			//Add
   				 4'h5    :    NextState <= 4'h2;			//SLL
   				 4'h6    :    NextState <= 4'h2; 		//SRL
   				 4'h8    :    NextState <= 4'h2;			//And
   				 4'h9    :    NextState <= 4'h2;			//Or
   				 4'hB    :    NextState <= 4'h2;			//Subtract
				
					endcase
					
			end
			
//R-Type 1			
4'h2	:	begin NextState <= 4'h8;			end	//To R-Type 2

//SW
4'h3	:	begin NextState <= 4'h0;			end	//To RST

//LW 1
4'h4	:	begin NextState <= 4'hA;			end	//To LW 2

//J
4'h5	:	begin NextState <= 4'h0;			end	//To LI--------------------------------------now we go back to 0

//LI
4'h6	:	begin NextState <= 4'h0;			end	//To RST

//MOV
4'h7	:	begin NextState <= 4'h0; 			end	//To RST

//R-Type 2
4'h8	:	begin NextState <= 4'h0;			end	//To RST

//Push
4'h9	:	begin NextState <= 4'h0; 			end	//To RST

//LW 2
4'hA	:	begin NextState <= 4'h0;  		  	end	//To RST

//JAL
4'hB	:	begin NextState <= 4'h6;			end	//To LI

//BEQ 1
4'hC	:	begin NextState <= 4'hD;			end	//To BEQ 2	
										
//BEQ 2			
4'hD	:	begin NextState <= 4'h0;			end	//TO LI---------------------------------now we go back to 0

//POP 1
4'hE	:	begin NextState <= 4'hF;		 	end	//TO POP 2

//POP 2
4'hF	:	begin NextState <= 4'h0;			end	//TO RST

default: 
			NextState <= 4'h0;

endcase	//End State Control Case

end		//End State Control





//OUTPUT CONTROL
always @(*) begin


case(CurrentState)
 
//Fetch
4'h0    :    begin

			//Important Signals
				  MAddr <= 2'b01; 
				  PCSrc <= 2'b01; 
				  PCWrite <= 1'b0;
				  IRWrite <= 1'b1;
				  MRead <= 1'b0;
				 
			//Unchanged Signals
   			 MDin <= 1'b0;				MWrite <= 1'b0; 		RFWA <= 2'b00; 		 RFWD <= 3'b101;
   			 RFRead <= 1'b0;  		RDWrite <= 1'b0; 	 	SPWrite <= 1'b0;		 AWrite <= 1'b0;
				 BWrite <= 1'b0;  		ALUInA <= 1'b0; 	 	ALUInB <= 2'b00; 		 ALUOp <= 4'b0000;
   			 ALUOutWrite <= 1'b0;	Branch <= 1'b0; 	 	SPRel <= 1'b0; 		 PshPop <= 1'b0;
   		 end
//Decode   	 
4'h1    :    begin


					case(Opcode)
					 4'h2    :    ALUOp <= 4'h0;			//Add
   				 4'h5    :    ALUOp <= 4'h3;			//SLL
   				 4'h6    :    ALUOp <= 4'h4; 			//SRL
   				 4'h8    :    ALUOp <= 4'h1;			//And
   				 4'h9    :    ALUOp <= 4'h2;			//Or
   				 4'hB    :    ALUOp <= 4'h5;			//Subtract
					 
					 default	:	  ALUOp <= 4'h0;			//ALU Not Used
						
					endcase
					
						
						
			//Important Signals
				  AWrite <= 1'b1;
				  RFRead <= 1'b1; 
				  BWrite <= 1'b1; 
				  PCWrite <= 1'b1;
				  PCSrc <= 2'b01;
				  
			//Unchanged Signals
   			 MDin <= 1'b0;				MWrite <= 1'b0; 		RFWA <= 2'b00; 		 RFWD <= 3'b101;
   			 RDWrite <= 1'b0; 	 	SPWrite <= 1'b0;		 
				 ALUInA <= 1'b0; 	 		ALUInB <= 2'b00; 		MRead <= 1'b0;
   			 ALUOutWrite <= 1'b0;	Branch <= 1'b0; 	 	SPRel <= 1'b0; 		 PshPop <= 1'b0;
				 MAddr <= 2'b01;			IRWrite <= 1'b0;
				 
   		 end

//R-TYPE 1
4'h2    :    begin
   			 
			//Important Signals
				 ALUInA <= 1'b0;
				 ALUInB <= 2'b00;
				 ALUOutWrite <= 1'b1;
				 
			//Unchanged Signals
   			 MDin <= 1'b0;				MWrite <= 1'b0; 		RFWA <= 2'b00; 		 RFWD <= 3'b101;
   			 RDWrite <= 1'b0; 	 	SPWrite <= 1'b0;		AWrite <= 1'b0;		 RFRead <= 1'b0; 
				 BWrite <= 1'b0; 		   Branch <= 1'b0; 	 	SPRel <= 1'b0; 		 PshPop <= 1'b0;	 	 
				 MAddr <= 2'b01;			PCSrc <= 2'b00; 		PCWrite <= 1'b0;		 IRWrite <= 1'b0; 
				 MRead <= 1'b0;
   		 end
//SW
4'h3    :    begin
   			 
			//Important Signals
				 MDin <= 1'b1; 
				 MAddr <= 2'b11;
				 MWrite <= 1'b1; 
				 MRead <= 1'b1;
			//Unchanged Signals
   			 RFWA <= 2'b00; 			RFWD <= 3'b101;		
   			 RDWrite <= 1'b0; 	 	SPWrite <= 1'b0;		AWrite <= 1'b0;		PshPop <= 1'b0;
				 RFRead <= 1'b0; 			BWrite <= 1'b0;		PCWrite <= 1'b0;
				 ALUInA <= 1'b0; 	 		ALUInB <= 2'b00; 		SPRel <= 1'b0; 		ALUOp <= 4'b0000;
   			 ALUOutWrite <= 1'b0;	Branch <= 1'b0; 	 	PCSrc <= 2'b00;		IRWrite <= 1'b0;
				 
   			 
   		 end
//LW 1
4'h4    :    begin
   			 
			//Important Signals
				 MAddr <= 2'b00;
				 MRead <= 1'b1;
				 
			//Unchanged Signals
   			 MDin <= 1'b0;				MWrite <= 1'b0; 		RFWA <= 2'b00; 		RFWD <= 3'b101;
   			 RDWrite <= 1'b0; 	 	SPWrite <= 1'b0;		AWrite <= 1'b0;		PshPop <= 1'b0;
				 RFRead <= 1'b0; 			BWrite <= 1'b0;		PCWrite <= 1'b0;
				 ALUInA <= 1'b0; 	 		ALUInB <= 2'b00; 		SPRel <= 1'b0; 		ALUOp <= 4'b0000;
   			 ALUOutWrite <= 1'b0;	Branch <= 1'b0; 	 	PCSrc <= 2'b00;		IRWrite <= 1'b0;
   			 
   			
   		 end
//J
4'h5    :    begin
   			 
			//Important Signals
				 PCSrc <= 2'b11;  
				 PCWrite <= 1'b1; 
				 MRead <= 1'b1;	
				 
			//Unchanged Signals
   			 MDin <= 1'b0;				MWrite <= 1'b0; 		RFWA <= 2'b00; 		RFWD <= 3'b101;
   			 RDWrite <= 1'b0; 	 	SPWrite <= 1'b0;		AWrite <= 1'b0;		PshPop <= 1'b0;
				 RFRead <= 1'b0; 			BWrite <= 1'b0;				
				 ALUInA <= 1'b0; 	 		ALUInB <= 2'b00; 		SPRel <= 1'b0; 		ALUOp <= 4'b0000;
   			 ALUOutWrite <= 1'b0;	Branch <= 1'b0; 	 	MAddr <= 2'b01;		IRWrite <= 1'b0;	
				 
   			 
   		 end
//LI
4'h6    :    begin
   			  
			//Important Signals
				 RFWA <= 2'b10; 
				 RFWD <= 3'b100;
				 RDWrite <= 1'b1;
				 MRead <= 1'b1;
			//Unchanged Signals
   			 MDin <= 1'b0;				MWrite <= 1'b0; 		 		
   			 SPWrite <= 1'b0;			AWrite <= 1'b0;		PshPop <= 1'b0;		
				 RFRead <= 1'b0; 			BWrite <= 1'b0;		PCWrite <= 1'b0;		IRWrite <= 1'b0;
				 ALUInA <= 1'b0; 	 		ALUInB <= 2'b00; 		SPRel <= 1'b0; 		ALUOp <= 4'b0000;
   			 ALUOutWrite <= 1'b0;	MAddr <= 2'b01;		PCSrc <= 2'b00; 		Branch <= 1'b0;
   			
   		 end
//MOV
4'h7    :    begin
   			 
			//Important Signals
				 RDWrite <= 1'b1; 
				 RFWD <= 3'b010;
				 RFWA <= 2'b00; 
				 MRead <= 1'b1;
			//Unchanged Signals
   			 MDin <= 1'b0;				MWrite <= 1'b0; 				
   			 SPWrite <= 1'b0;			AWrite <= 1'b0;		PshPop <= 1'b0;		
				 RFRead <= 1'b0; 			BWrite <= 1'b0;		PCWrite <= 1'b0;		IRWrite <= 1'b0;
				 ALUInA <= 1'b0; 	 		ALUInB <= 2'b00; 		SPRel <= 1'b0; 		ALUOp <= 4'b0000;
   			 ALUOutWrite <= 1'b0;	Branch <= 1'b0; 	 	MAddr <= 2'b01;		PCSrc <= 2'b00;
				
   		 end
//R-TYPE 2
4'h8    :    begin
   			 
			//Important Signals
				 RFWD <= 3'b011;  
				 RFWA <= 2'b00; 
				 RDWrite <= 1'b1;
				 ALUOutWrite <= 1'b1;
				 MRead <= 1'b1;
			//Unchanged Signals
   			 MDin <= 1'b0;				MWrite <= 1'b0; 				
   			 SPWrite <= 1'b0;			AWrite <= 1'b0;		PshPop <= 1'b0;
				 RFRead <= 1'b0; 			BWrite <= 1'b0;		PCWrite <= 1'b0;		
				 ALUInA <= 1'b0; 	 		ALUInB <= 2'b00; 		SPRel <= 1'b0; 		ALUOp <= 4'b0000;
   			 Branch <= 1'b0; 	 		MAddr <= 2'b01;		PCSrc <= 2'b00;		IRWrite <= 1'b0;
					
   			 end
				 
//PUSH 1
4'h9    :    begin
   			 
			//Important Signals
				 PshPop <= 1'b0;
				 MAddr <= 2'b10;
				 SPWrite <= 1'b1;	
				 MDin <= 1'b1;
				 MWrite <= 1'b1; 
				 MRead <= 1'b1;
			//Unchanged Signals
   			 RFWA <= 2'b00; 		RFWD <= 3'b101;
   			 RDWrite <= 1'b0; 	 	AWrite <= 1'b0;		
				 RFRead <= 1'b0; 			BWrite <= 1'b0;		PCWrite <= 1'b0;		
				 ALUInA <= 1'b0; 	 		ALUInB <= 2'b00; 		SPRel <= 1'b0; 		ALUOp <= 4'b0000;
   			 ALUOutWrite <= 1'b0;	Branch <= 1'b0; 	 	PCSrc <= 2'b00;		IRWrite <= 1'b0;
   			 
   		 end
//LW 2
4'hA    :    begin
   			 
   		//Important Signals
				 RFWD <= 3'b000; 
				 RDWrite <= 1'b1;
				 RFWA <= 2'b00; 
				 MRead <= 1'b1;
			//Unchanged Signals
   			 MDin <= 1'b0;				MWrite <= 1'b0; 				
   			 SPWrite <= 1'b0;			AWrite <= 1'b0;		PshPop <= 1'b0;		
				 RFRead <= 1'b0; 			BWrite <= 1'b0;		PCWrite <= 1'b0;		IRWrite <= 1'b0;
				 ALUInA <= 1'b0; 	 		ALUInB <= 2'b00; 		SPRel <= 1'b0; 		ALUOp <= 4'b0000;
   			 ALUOutWrite <= 1'b0;	Branch <= 1'b0; 	 	MAddr <= 2'b01;		PCSrc <= 2'b00;
				 
   		 end
//JAL
4'hB    :    begin
				 
			//Important Signals
				 RFWA <= 2'b01;  
				 RFWD <= 3'b001;
				 RDWrite <= 1'b1; 
				 PCSrc <= 2'b11;
				 PCWrite <= 1'b1;
				 MRead <= 1'b1;	
				 	
				 
			//Unchanged Signals
   			 MDin <= 1'b0;				MWrite <= 1'b0; 		ALUOp <= 4'b0000;		
   			 SPWrite <= 1'b0;			AWrite <= 1'b0;		PshPop <= 1'b0;
				 RFRead <= 1'b0; 			BWrite <= 1'b0;				
				 ALUInA <= 1'b0; 	 		ALUInB <= 2'b00; 		SPRel <= 1'b0; 		
   			 ALUOutWrite <= 1'b0;	Branch <= 1'b0; 	 	MAddr <= 2'b01;	IRWrite <= 1'b0;	
				 
   			 
   		 end
//BEQ
4'hC    :    begin
				
			//Important Signals
				 ALUOp <= 4'h5; 
				 ALUInA <= 2'b01; 
				 ALUInB <= 2'b00;
				 MRead <= 1'b0;
				 Branch <= 1'b1;
				 PCSrc <= 2'b11;
			//Unchanged Signals
   			 MDin <= 1'b0;				MWrite <= 1'b0; 		RFWA <= 2'b00; 		RFWD <= 3'b101;
   			 RDWrite <= 1'b0; 	 	SPWrite <= 1'b0;		AWrite <= 1'b0;		PshPop <= 1'b0;
				 RFRead <= 1'b0; 			BWrite <= 1'b0;		PCWrite <= 1'b0;		IRWrite <= 1'b0;
				 SPRel <= 1'b0; 			MAddr <= 2'b01;		
   			 ALUOutWrite <= 1'b0;	
				
   		 end
			 
			 
//BEQ 2
4'hD    :    begin
   			 
   		//Important Signals
				 PCWrite <= 1'b0; 
				 Branch <= 1'b1; 
				 PCSrc <= 2'b11;
				 MRead <= 1'b1;
			//Unchanged Signals
   			 MDin <= 1'b0;				MWrite <= 1'b0; 		RFWA <= 2'b00; 		RFWD <= 3'b101;
   			 RDWrite <= 1'b0; 	 	SPWrite <= 1'b0;		AWrite <= 1'b0;		PshPop <= 1'b0;
				 RFRead <= 1'b0; 			BWrite <= 1'b0;		IRWrite <= 1'b0;
				 ALUInA <= 1'b0; 	 		ALUInB <= 2'b00; 		SPRel <= 1'b0; 		ALUOp <= 4'b0000;
   			 ALUOutWrite <= 1'b0;	MAddr <= 2'b01;		
				 
   		 end
//POP 1
4'hE    :    begin
   			
			//Important Signals
				 PshPop <= 1'b1; 	
				 MAddr <= 2'b01;
				 SPWrite <= 1'b1;
				 MRead <= 1'b1;
			//Unchanged Signals
   			 MDin <= 1'b0;				MWrite <= 1'b0; 		RFWA <= 2'b00; 		RFWD <= 3'b101;
   			 RDWrite <= 1'b0; 	 	AWrite <= 1'b0;		
				 RFRead <= 1'b0; 			BWrite <= 1'b0;		PCWrite <= 1'b0;
				 ALUInA <= 1'b0; 	 		ALUInB <= 2'b00; 		SPRel <= 1'b0; 		ALUOp <= 4'b0000;
   			 ALUOutWrite <= 1'b0;	Branch <= 1'b0; 	 	PCSrc <= 2'b00;		IRWrite <= 1'b0;
   			 
   		 end
//POP 2 
4'hF    :    begin

			//Important Signals
				 RFWD <= 3'b000;
				 RFWA <= 2'b00;
				 RDWrite <= 1'b1;
				  
			//Unchanged Signals
   			 MDin <= 1'b0;				MWrite <= 1'b0; 				
   			 SPWrite <= 1'b0;			AWrite <= 1'b0;		PshPop <= 1'b0;
				 RFRead <= 1'b0; 			BWrite <= 1'b0;		PCWrite <= 1'b0;		IRWrite <= 1'b0;
				 ALUInA <= 1'b0; 	 		ALUInB <= 2'b00; 		SPRel <= 1'b0; 		ALUOp <= 4'b0000;
   			 ALUOutWrite <= 1'b0;	Branch <= 1'b0; 	 	MAddr <= 2'b01;		PCSrc <= 2'b00;
					
   		 end
 
 default	:	begin
 				
					PCWrite <= 1'b1;
					PCSrc <= 2'b11;
			//Unchanged Signals
   			 MDin <= 1'b0;				MWrite <= 1'b0; 		RDWrite <= 1'b0; 		IRWrite <= 1'b0;	
   			 SPWrite <= 1'b0;			AWrite <= 1'b0;		PshPop <= 1'b0;		RFWA <= 2'b00;
				 RFRead <= 1'b0; 			BWrite <= 1'b0;				RFWD <= 3'b000;
				 ALUInA <= 1'b0; 	 		ALUInB <= 2'b00; 		SPRel <= 1'b0; 		ALUOp <= 4'b0000;
   			 ALUOutWrite <= 1'b0;	Branch <= 1'b0; 	 	MAddr <= 2'b00;		
				 MRead <= 1'b0;
				 end
endcase

end
endmodule

