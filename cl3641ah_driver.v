/*
Author: Spence Johnston
Module: CL3651AH driver 
Purpose: Drives the CL3651AH using mux_controller, mux_4x1, and mux_control_decode.

Notes:
	LEDs are active high.
	control are active low.
*/

module cl3641ah_driver (
	input clk, reset,
	input [6:0] a, b, c, d, 
	output [6:0] seven_seg,
	output [3:0] control
);

wire [1:0] mux_controller_out;

mux_controller m0 ( clk, reset, mux_controller_out);
mux_4x1 m1 ( clk, a, b, c, d, mux_controller_out, seven_seg);
mux_control_decode d0 (clk, mux_controller_out, control); 

endmodule