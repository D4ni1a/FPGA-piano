module top(
	input clk,
	input s1, s2, s3, s4, s5, s6, s7, 
	input sw1, sw2,
	output q
);

	localparam INPUT = 50000000;
	localparam WIDTH = $clog2(INPUT / 131 / 2 - 1);

	wire [WIDTH-1:0] tone;

	selector #(INPUT, WIDTH) selector(s1, s2, s3, s4, s5, s6, s7, sw1, sw2, tone);
	beeper #(WIDTH) beeper(clk, s1 | s2 | s3 | s4 | s5 | s6 | s7, tone, q);

endmodule
