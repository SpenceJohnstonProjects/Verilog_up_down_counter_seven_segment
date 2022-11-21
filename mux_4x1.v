/*
Author: Spence Johnston
Module:  4x1 mux
Purpose: 4x1 mux that outputs proper input.
*/

module mux_4x1 (
	input clk,
	input [6:0] a, b, c, d, 
	input [1:0] sel,
	output reg [6:0] out
);

always @ ( posedge clk)
begin
	case (sel)
		2'b00:
			out = a;
		2'b01:
			out = b;
		2'b10:
			out = c;
		2'b11:
			out = d;
	endcase
end

endmodule 