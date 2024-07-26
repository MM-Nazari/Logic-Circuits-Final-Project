`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:20:47 01/03/2022 
// Design Name: 
// Module Name:    tb_entry_park 
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
module tb_entry_park(
    );
reg entry;
reg [7:0] parking_capacity;
wire [2:0] park_number;

entry_park Y4 ( entry , parking_capacity , park_number ) ;

initial
begin
entry <= 1'b1 ;
parking_capacity <= 8'b10001000 ;
#20 ;
parking_capacity <= 8'b11010110 ;
#20 ;
parking_capacity <= 8'b00000000 ;
#20 ;
entry <= 1'b0 ;
parking_capacity <= 8'b10100010 ;
end

endmodule