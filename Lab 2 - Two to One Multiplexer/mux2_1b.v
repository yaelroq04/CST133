// Yael Roque
// Structural design for a two to one multiplexer using Verilog

module mux2_1b (
		input a,
		input b,
		input sel,
		output x
);

		wire sel_not;
		wire w1, w2;
		
		not G1 (sel_not, sel);
		and G2 (w1, a, sel_not);
		and G3 (w2, b, sel);
		or G4 (x, w1, w2);

endmodule