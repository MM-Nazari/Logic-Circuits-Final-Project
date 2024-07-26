`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:33:13 01/05/2022 
// Design Name: 
// Module Name:    tb_adder_subtractor 
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
module tb_adder_subtractor(
    );
	reg a ;
	reg b ;
	reg cin ;
	reg sel ;
	wire sum ;
	wire cout;
	adder_subtractor ss1 ( a, b, cin , sel , sum , cout ) ;
	initial
	begin
	a = 1 ;
	b = 1 ;
	cin = 0 ; 
   sel = 0 ;
   #20 ;	
	a = 1 ;
	b = 1 ;
	cin = 1 ; 
   sel = 1 ;
   #20 ;	
	end
endmodule
