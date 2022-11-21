/*
Author: Spence Johnston
Module: mux controller
Purpose: counter for the mux controls.
*/

module mux_controller (
	input clk, reset,
	output reg [1:0] control
);

initial control = 0;

always @ ( posedge clk )
begin
	
	if (reset)
		control = 2'b00;
	else
	begin
		control = control + 1;
	end
end

endmodule 