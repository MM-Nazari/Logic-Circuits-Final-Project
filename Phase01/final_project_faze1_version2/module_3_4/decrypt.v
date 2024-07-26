/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2021-2022
--  *******************************************************
--  Student ID  : 9931089
--  Student Name: Fatemeh Abdi n. 
--  Student Mail: fatemehabdina@gmail.com
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: decrypt 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module decrypt(
 exit,
 token,
 pattern,
 park_number);
input exit;
input [2:0] token;
input [2:0] pattern;
//output  [2:0] park_number;
output reg [2:0] park_number;

/*
wire w1,w2,w3 ;
xor QQ1 ( w1 , token[0] , pattern[0] ) ; 
and qq1 ( park_number[0] , exit , w1 );
xor QQ2 ( w2 , token[1] , pattern[1] ) ; 
and qq2 ( park_number[1] , exit , w2 );
xor QQ3 ( w3 , token[2] , pattern[2] ) ; 
and qq3 ( park_number[2] , exit , w3 );*/

// code abdi
wire [2:0]xor3bit_output;

xor3bit x1(.in1(token ), .in2(pattern) , .out(xor3bit_output));
always @(exit or xor3bit_output)
	begin
		if(exit == 1)
			assign park_number = xor3bit_output;
	end
endmodule


module xor3bit(in1 , in2 , out);
input [2:0] in1;
input [2:0] in2;
output [2:0] out;

assign out[0] =(in1[0]^in2[0]) ;
assign out[1] =(in1[1]^in2[1]) ;
assign out[2] =(in1[2]^in2[2]) ;

endmodule