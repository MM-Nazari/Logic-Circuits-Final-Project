`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:38:49 01/13/2022 
// Design Name: 
// Module Name:    register 
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
module register(
input [7:0] D,
input CLK, 
input RST,
input en,
output reg [7:0] Q
);
	always @(posedge CLK or negedge RST)
		begin
			if(RST == 1'b0)
				Q <= 1'b0;
			else if(en == 1'b1)
				Q <= D;
			else
			   Q <= 8'bxxxxxxxx ;
		end
 
endmodule
