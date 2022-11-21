/*
Author: Spence Johnston
Module: up down counter
Purpose: Counts up or down depending on input. outputs number.

Notes: ud high = up
*/

module ud_counter
#(	
	parameter N = 12	//number of bits the counter counts to
) (
	input clk, en, reset, ud, // ud = up down. if high, up
	output reg [N-1:0] out
);

initial out = 0;

always @ ( posedge clk or posedge reset)
begin
	if(reset)
		out = 0;
	else
	if (en)
	begin
		if(ud)
			out = out + 1'd1;
		else
			out = out - 1'd1;
	end
	else
		out = out;
end

endmodule 