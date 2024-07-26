`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:06:35 01/05/2022 
// Design Name: 
// Module Name:    tb_exit_parking_lot 
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
module tb_exit_parking_lot(
    );
reg [2:0] park_number;
wire [7:0] park_location;

exit_parking_lot ss1 ( park_number , park_location );
initial
begin
park_number <= 3'b010 ;
#20;
park_number <= 3'b110 ;
#20;
end
endmodule
