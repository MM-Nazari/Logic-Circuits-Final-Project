`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:29:00 01/05/2022 
// Design Name: 
// Module Name:    adder_subtractor 
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
module adder_subtractor (
	input a ,
	input b ,
	input cin ,
	input sel ,
	output sum ,
	output cout
);
    wire y;
    xor x0(y,b,sel);
    fulladder f1(sum,cout,a,y,cin);

endmodule
