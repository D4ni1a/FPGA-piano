module selector #(
	parameter INPUT = 50000000,
	parameter WIDTH = $clog2(INPUT / 131 / 2 - 1)
) (
	input b, a, g, f, e, d, c, p1, p2,
	output reg [WIDTH-1:0] tone
);

localparam FREQ_B1 = 494;
localparam FREQ_A1 = 440;
localparam FREQ_G1 = 392;
localparam FREQ_F1 = 349;
localparam FREQ_E1 = 330;
localparam FREQ_D1 = 294;
localparam FREQ_C1 = 262;

localparam FREQ_B2 = 494;
localparam FREQ_A2 = 440;
localparam FREQ_G2 = 392;
localparam FREQ_F2 = 349;
localparam FREQ_E2 = 330;
localparam FREQ_D2 = 294;
localparam FREQ_C2 = 262;

localparam FREQ_B3 = 494;
localparam FREQ_A3 = 440;
localparam FREQ_G3 = 392;
localparam FREQ_F3 = 349;
localparam FREQ_E3 = 330;
localparam FREQ_D3 = 294;
localparam FREQ_C3 = 262;

localparam TONE_B1 = INPUT / 247 / 2 - 1;
localparam TONE_A1 = INPUT / 220 / 2 - 1;
localparam TONE_G1 = INPUT / 196 / 2 - 1;
localparam TONE_F1 = INPUT / 175 / 2 - 1;
localparam TONE_E1 = INPUT / 165 / 2 - 1;
localparam TONE_D1 = INPUT / 148 / 2 - 1;
localparam TONE_C1 = INPUT / 131 / 2 - 1;

localparam TONE_B2 = INPUT / 494 / 2 - 1;
localparam TONE_A2 = INPUT / 440 / 2 - 1;
localparam TONE_G2 = INPUT / 392 / 2 - 1;
localparam TONE_F2 = INPUT / 349 / 2 - 1;
localparam TONE_E2 = INPUT / 330 / 2 - 1;
localparam TONE_D2 = INPUT / 294 / 2 - 1;
localparam TONE_C2 = INPUT / 262 / 2 - 1;

localparam TONE_B3 = INPUT / 523 / 2 - 1;
localparam TONE_A3 = INPUT / 587 / 2 - 1;
localparam TONE_G3 = INPUT / 659 / 2 - 1;
localparam TONE_F3 = INPUT / 698 / 2 - 1;
localparam TONE_E3 = INPUT / 784 / 2 - 1;
localparam TONE_D3 = INPUT / 880 / 2 - 1;
localparam TONE_C3 = INPUT / 988 / 2 - 1;

always @(*) begin
	if(b && !p1 && !p2)
		tone = TONE_B1[WIDTH-1:0];
	else if (a && !p1 && !p2)
		tone = TONE_A1[WIDTH-1:0];
	else if (g && !p1 && !p2)
		tone = TONE_G1[WIDTH-1:0];
	else if (f && !p1 && !p2)
		tone = TONE_F1[WIDTH-1:0];
	else if (e && !p1 && !p2)
		tone = TONE_E1[WIDTH-1:0];
	else if (d && !p1 && !p2)
		tone = TONE_D1[WIDTH-1:0];
	else if(c && !p1 && !p2)
		tone = TONE_C1[WIDTH-1:0];
		
	else if(b && ((p1 && !p2) || (!p1 && p2)))
		tone = TONE_B2[WIDTH-1:0];
	else if (a && ((p1 && !p2) || (!p1 && p2)))
		tone = TONE_A2[WIDTH-1:0];
	else if (g && ((p1 && !p2) || (!p1 && p2)))
		tone = TONE_G2[WIDTH-1:0];
	else if (f && ((p1 && !p2) || (!p1 && p2)))
		tone = TONE_F2[WIDTH-1:0];
	else if (e && ((p1 && !p2) || (!p1 && p2)))
		tone = TONE_E2[WIDTH-1:0];
	else if (d && ((p1 && !p2) || (!p1 && p2)))
		tone = TONE_D2[WIDTH-1:0];
	else if(c && ((p1 && !p2) || (!p1 && p2)))
		tone = TONE_C2[WIDTH-1:0];
		
	else if(b && p1 && p2)
		tone = TONE_B3[WIDTH-1:0];
	else if (a && p1 && p2)
		tone = TONE_A3[WIDTH-1:0];
	else if (g && p1 && p2)
		tone = TONE_G3[WIDTH-1:0];
	else if (f && p1 && p2)
		tone = TONE_F3[WIDTH-1:0];
	else if (e && p1 && p2)
		tone = TONE_E3[WIDTH-1:0];
	else if (d && p1 && p2)
		tone = TONE_D3[WIDTH-1:0];
	else if (c && p1 &&p2)
		tone = TONE_C3[WIDTH-1:0];
end

endmodule
