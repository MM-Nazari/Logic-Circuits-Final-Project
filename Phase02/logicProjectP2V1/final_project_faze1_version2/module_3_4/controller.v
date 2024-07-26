`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:04:27 01/13/2022 
// Design Name: 
// Module Name:    controller 
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
module controller(
input [2:0] system_token,
input request,
input [7:0] TimeData,
input reset,
input clock,
input confirm,
input [2:0] user_token ,
output [7:0] data_Q,
output [7:0] data_P //,
// output reg P , output reg Q
);

reg Q ;
reg P ;
reg [2:0] state ;
parameter[2:0] A=3'b000 , B = 3'b001 , C = 3'b010 , D = 3'b011 , E = 3'b100 ;


//assign state = A ;
//begin : loop 
//register QQ ( TimeData , clock , reset , Q , data_Q );
//register PP ( TimeData , clock , reset , P , data_P );
always @ (posedge clock or negedge reset   )
		begin 
		/*
         if (~reset || ~request) 
				begin
					state = A;  
					P = 1'b0;
					Q = 1'b0 ;
				end*/
			if(~reset)
				begin
					state = A;  
					P=0;
					Q=0;
				end
			else if(~request)
				begin
					state = A;
					P=0;
					Q=0;
				end
			else
				begin
					case(state)
						A: if(request)
								begin
									state = B ;
									 P = 1'b0;
									 Q = 1'b0 ;
								end
						B:
							begin
								if(confirm) 
									begin
										if( user_token == system_token )
											begin
												state = C ;
												 P = 1'b0;
												 Q = 1'b0 ;
											end
										else
											begin
												state = E ;
												 P = 1'b0;
												 Q = 1'b0 ;
											end
									end
							end
						C:
							if(confirm)
								begin
									state = D ;
									 P = 1'b0;
									 Q = 1'b0 ;
								end
						D:
							begin
								if(TimeData[3:0] == 4'b1111 )
									begin
										 P = 1'b1;
										 Q = 1'b0 ;
				  /* generate
				  register QQ ( TimeData , clock , reset , Q , data_Q );
              register PP ( TimeData , clock , reset , P , data_P );
				  endgenerate*/
				 // break ;
				 //$finish ;
				 //disable loop ;
				
									end
								else
									begin
										 P = 1'b0;
										 Q = 1'b1 ;
				  /*generate
				  register QQ ( TimeData , clock , reset , Q , data_Q );
              register PP ( TimeData , clock , reset , P , data_P );
				  endgenerate*/
				  //break ;
				  //$finish;
				 // disable loop ;
									end
							end
						default : state = A ;
					endcase
				end
			
			end
///register PP ( TimeData , clock , reset , P , data_P );
//end

register QQ ( TimeData , clock , reset , Q , data_Q );
register PP ( TimeData , clock , reset , P , data_P );

endmodule
