
/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2021-2022
--  *******************************************************
--  Student ID  : 
--  Student Name: 
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: decrypt 
-----------------------------------------------------------*/

module decrypt(
 exit,
 token,
 pattern,
 park_number);
 
input exit;
input [2:0] token;
input [2:0] pattern;
output [2:0] park_number;

always @( posedge exit) 
	begin
		xor3bit x1(token , pattern , park_number);
	end

endmodule

module xor3bit(in1,in2,out);
input [2:0] in1;
input [2:0] in2;
output [2:0] out;

xor1bit bit0(in1[0],in2[0],out[0]);
xor1bit bit1(in1[1],in2[1],out[1]);
xor1bit bit1(in1[1],in2[1],out[1]);

endmodule

module xor1bit(in1,in2,out);
input in1;
input in2;
output reg out;

if(in1 == 1 & in2 == 1)
	out = 1'b0;
else if(in1 == 0 & in2 == 0)
	out = 1'b0;
else
	out = 1'b1;
	


endmodule

