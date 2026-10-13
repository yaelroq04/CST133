// Yael Roque
// Structural design to connect 4 two to one multiplexers

module lab2(
		input [3:0] a,
		input [3:0] b,
		input sel,
		output [3:0] x
);

		mux2_1b M0(a[0], b[0], sel, x[0]);
		mux2_1b M1(a[1], b[1], sel, x[1]);
		mux2_1b M2(a[2], b[2], sel, x[2]);
		mux2_1b M3(a[3], b[3], sel, x[3]);
		
endmodule