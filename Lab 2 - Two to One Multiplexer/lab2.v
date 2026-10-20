// Yael Roque
// Structural design to connect 4 two to one multiplexers

module lab2(
		input [9:0] SW,
		output [3:0] LEDR
);

		mux2_1b M0(SW[0], SW[4], SW[8], LEDR[0]);
		mux2_1b M1(SW[1], SW[5], SW[8], LEDR[1]);
		mux2_1b M2(SW[2], SW[6], SW[8], LEDR[2]);
		mux2_1b M3(SW[3], SW[7], SW[8], LEDR[3]);
		
endmodule