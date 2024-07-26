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
---  Module Name: exit_park 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module exit_park(
 exit,
 token,
 pattern,
 park_location);
 
input exit;
input [2:0] token;
input [2:0] pattern;
output [7:0] park_location;

wire [2:0] park_number;

decrypt decrypt1(exit,token,pattern,park_number);
exit_parking_lot epl1(park_number,park_location);

endmodule