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
---  Module Name: calculate_new_capacity
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module calculate_new_capacity(
 park_location,
 parking_capacity,
 new_capacity);
input [7:0] park_location;
input [7:0] parking_capacity;
output [7:0] new_capacity;

/*
wire [7:0]c;
fulladder a1(new_capacity[0],c[0],park_location[0],parking_capacity[0],0);
fulladder a2(new_capacity[1],c[1],park_location[1],parking_capacity[1],0);
fulladder a3(new_capacity[2],c[2],park_location[2],parking_capacity[2],0);
fulladder a4(new_capacity[3],c[3],park_location[3],parking_capacity[3],0);
fulladder a5(new_capacity[4],c[4],park_location[4],parking_capacity[4],0);
fulladder a6(new_capacity[5],c[5],park_location[5],parking_capacity[5],0);
fulladder a7(new_capacity[6],c[6],park_location[6],parking_capacity[6],0);
fulladder a8(new_capacity[7],c[7],park_location[7],parking_capacity[7],0);

*/

//data flow
assign new_capacity[0] = park_location[0] + parking_capacity[0];
assign new_capacity[1] = park_location[1] + parking_capacity[1];
assign new_capacity[2] = park_location[2] + parking_capacity[2];
assign new_capacity[3] = park_location[3] + parking_capacity[3];
assign new_capacity[4] = park_location[4] + parking_capacity[4];
assign new_capacity[5] = park_location[5] + parking_capacity[5];
assign new_capacity[6] = park_location[6] + parking_capacity[6];
assign new_capacity[7] = park_location[7] + parking_capacity[7];

endmodule