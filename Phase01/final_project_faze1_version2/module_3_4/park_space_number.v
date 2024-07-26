`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:27:18 01/03/2022 
// Design Name: 
// Module Name:    park_space_number 
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
module park_space_number(
 enable,
 parking_capacity,
 park_number);
 // agar enable 0 bashe khorooji chand bayad bede ???
input enable;
input [7:0] parking_capacity;
output  [2:0] park_number;
//output [2:0] park_number;
// santez warning midad ke parking_capacity[7] estefade nashode ama farghi nemikone kari nemishe kard
// //wire valid ;




wire [7:0] w ;
and W1 ( w[0] , parking_capacity[1] ,  ~parking_capacity[2] ,  ~parking_capacity[4] , ~parking_capacity[6] );
and W2 ( w[1] , parking_capacity[3] ,  ~parking_capacity[4] ,  ~parking_capacity[6]  );
and W3 ( w[2] , parking_capacity[5] ,  ~parking_capacity[6] );
and W4 ( w[3] , parking_capacity[2] ,  ~parking_capacity[4] ,  ~parking_capacity[5]  );
and W5 ( w[4] , parking_capacity[3] ,    ~parking_capacity[4] , ~parking_capacity[5] );
or W6 ( w[5] , w[0] , w[1] , w[2] , parking_capacity[7] ) ;
or W7 ( w[6] , w[3] , w[4] ,  parking_capacity[6] , parking_capacity[7]) ;
or W8 ( w[7] ,  parking_capacity[7] , parking_capacity[6] , parking_capacity[5] , parking_capacity[4] ) ;
and W9 ( park_number[0] , w[5] , enable ) ;
and W10 ( park_number[1] , w[6] , enable ) ;
and W11 (park_number[2], w[7] , enable ) ;

/*
wire [7:0] w ;
wire a1,a2,a3 ;
and W1 ( w[0] , parking_capacity[6] ,  ~parking_capacity[5] ,  ~parking_capacity[3] , ~parking_capacity[1] );
and W2 ( w[1] , parking_capacity[4] ,  ~parking_capacity[3] ,  ~parking_capacity[1]  );
and W3 ( w[2] , parking_capacity[2] ,  ~parking_capacity[1] );
and W4 ( w[3] , parking_capacity[5] ,  ~parking_capacity[3] ,  ~parking_capacity[2]  );
and W5 ( w[4] , parking_capacity[4] ,    ~parking_capacity[3] , ~parking_capacity[2] );
or W6 ( w[5] , w[0] , w[1] , w[2] , parking_capacity[0] ) ;
or W7 ( w[6] , w[3] , w[4] ,  parking_capacity[1] , parking_capacity[0]) ;
or W8 ( w[7] ,  parking_capacity[0] , parking_capacity[1] , parking_capacity[2] , parking_capacity[3] ) ;
and W9 ( a1 , w[5] , enable ) ;
and W10 ( a2 , w[6] , enable ) ;
and W11 ( a3 , w[7] , enable ) ;
not F1 ( park_number[0] , a1);
not F2 ( park_number[1] , a2);
not F3 ( park_number[2] , a3);
*/
// //or T1 ( valid , parking_capacity[0] , parking_capacity[1] , parking_capacity[2] , parking_capacity[3] , parking_capacity[4] , parking_capacity[5] , parking_capacity[6] , parking_capacity[7] );  
 // encoder normal ba always
 /*
 always @(parking_capacity or enable)
begin
if(enable)
begin
if( parking_capacity[7] == 1)
begin
  park_number = 3'b111 ;
end
else if( parking_capacity[6] == 1 )
begin
  park_number = 3'b110 ;
end
else if( parking_capacity[5] == 1 )
begin
  park_number = 3'b101 ;
end
else if( parking_capacity[4] == 1 )
begin
  park_number = 3'b100 ;
end
else if( parking_capacity[3] == 1 )
begin
  park_number = 3'b011 ;
end
else if( parking_capacity[2] == 1 )
begin
  park_number = 3'b010 ;
end
else if( parking_capacity[1] == 1 )
begin
  park_number = 3'b001 ;
end
else if( parking_capacity[0] == 1 )
begin
  park_number = 3'b000 ;
end
end
end */
endmodule