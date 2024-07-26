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
---  Module Name: parking_capacity_counter
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module parking_capacity_counter(
 new_capacity,
 parked,
 empty
 ,c,d,w1,w2,w3,w4,w5,w6,w7,w8
 );
input [7:0] new_capacity;
output [3:0] parked;
output [3:0] empty;
/*
integer k  ;
integer k1=0 ;
integer k2=0 ;
*/
// version ba santez unconnected
/*
wire [8:0]c ;
wire [7:0]d;
wire [3:0] w1,w2,w3,w4,w5,w6,w7,w8;
*/

output [8:0]c ;
output [7:0]d;
output [3:0] w1,w2,w3,w4,w5,w6,w7,w8;
wire [3:0] parkedCars;

adder_subtractor_4bit a0x(.A(4'b0000),.B({3'b000,new_capacity[0]}),.sel(0),.S(w1),.cout(c[0]));
adder_subtractor_4bit a1x(.A(w1),.B({3'b000,new_capacity[1]}),.sel(0),.S(w2),.cout(c[1]));
adder_subtractor_4bit a2x(.A(w2),.B({3'b000,new_capacity[2]}),.sel(0),.S(w3),.cout(c[2]));
adder_subtractor_4bit a3x(.A(w3),.B({3'b000,new_capacity[3]}),.sel(0),.S(w4),.cout(c[3]));
adder_subtractor_4bit a4x(.A(w4),.B({3'b000,new_capacity[4]}),.sel(0),.S(w5),.cout(c[4]));
adder_subtractor_4bit a5x(.A(w5),.B({3'b000,new_capacity[5]}),.sel(0),.S(w6),.cout(c[5]));
adder_subtractor_4bit a6x(.A(w6),.B({3'b000,new_capacity[6]}),.sel(0),.S(w7),.cout(c[6]));
adder_subtractor_4bit a7x(.A(w7),.B({3'b000,new_capacity[7]}),.sel(0),.S(w8),.cout(c[7]));
 
adder_subtractor_4bit sub(.A(4'b1000),.B(w8),.sel(1),.S(parkedCars),.cout(c[8]));



fulladder fa0(empty[0],d[0],w8[0],0,0);
fulladder fa1(empty[1],d[1],w8[1],0,0);
fulladder fa2(empty[2],d[2],w8[2],0,0);
fulladder fa3(empty[3],d[3],w8[3],0,0);

fulladder fa4(parked[0],d[4],parkedCars[0],0,0);
fulladder fa5(parked[1],d[5],parkedCars[1],0,0);
fulladder fa6(parked[2],d[6],parkedCars[2],0,0);
fulladder fa7(parked[3],d[7],parkedCars[3],0,0);

// tosif raftari
/*
always @(new_capacity)
begin
for(k=0 ; k<=7 ; k=k+1 )
begin
if( new_capacity[k] == 1)
k1 = k1 +1 ;
else
k2 = k2 +1 ;
end
end

 parked = k1 ;
 empty = k2 ;
*/
endmodule




