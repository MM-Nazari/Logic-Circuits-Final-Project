`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:11:30 01/05/2022 
// Design Name: 
// Module Name:    tb_exit_park 
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
module tb_exit_park(
    );
reg exit;
reg [2:0] token;
reg [2:0] pattern;
wire [7:0] park_location;

exit_park ee1 ( exit , token , pattern , park_location ) ;
initial
begin
exit <= 1'b1 ;
token <= 3'b001;
pattern <= 3'b111 ;
#20;
exit <= 1'b0 ;
token <= 3'b011;
pattern <= 3'b011 ;
#20;
end
endmodule
