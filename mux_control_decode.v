/*
Author: Spence Johnston
Module: mux control decoder
Purpose: controlls muxed inputs for CL341AH
*/

module mux_control_decode (
	input clk,
	input [1:0] select,
	output reg [3:0] display
);

always @ ( posedge clk )
begin
	case ( select )
		2'b00:
			display = 4'b1110;
		2'b01:
			display = 4'b1101;
		2'b10:
			display = 4'b1011;
		2'b11:
			display = 4'b0111;
	endcase
end

endmodule 