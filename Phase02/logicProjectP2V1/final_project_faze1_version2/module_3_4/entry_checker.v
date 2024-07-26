`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:23:23 01/03/2022 
// Design Name: 
// Module Name:    entry_checker 
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
module entry_checker(
 entry,
 parking_capacity,
 enable);
input entry;
input  [7:0] parking_capacity;
//output reg enable;
output enable ;
wire w1 , w2 ;
//and Q1 (enable , w1 , w2 );
or Q2 ( w1 , entry , {1'b0} );
or Q3 ( w2 , parking_capacity[0] , parking_capacity[1] , parking_capacity[2] , parking_capacity[3] , parking_capacity[4] , parking_capacity[5] , parking_capacity[6] , parking_capacity[7] ); 
 

and Q1 (enable , w1 , w2 );

 /*always @(entry or parking_capacity)
 begin
 if(entry == 1'b1 && parking_capacity != 8'b00000000 )
    enable = 1'b1 ;
 else
    enable = 1'b0 ; 
 end */
endmodule
