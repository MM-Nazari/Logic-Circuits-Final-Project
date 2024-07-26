`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:29:09 01/03/2022 
// Design Name: 
// Module Name:    tb_entry_checker 
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
module tb_entry_checker(
    );
reg entry;
reg [7:0] parking_capacity;
wire enable;
entry_checker X1 (entry , parking_capacity , enable) ;
initial
begin
entry <= 1'b1;
parking_capacity <= 8'b00000000 ;
#20 ;
entry <= 1'b1;
parking_capacity <= 8'b00000010 ;
#20 ;
entry <= 1'b0;
parking_capacity <= 8'b00000000 ;
#20 ;
entry <= 1'b0;
parking_capacity <= 8'b00000010 ;
end

endmodule
