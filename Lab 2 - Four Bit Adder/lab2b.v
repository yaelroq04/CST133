// Yael Roque
// Structural design for a Four Bit Full Adder

module lab2b (
		input [0:7] SW,
		output [0:4] LEDR);
				 
		wire C1, C2, C3;
		

		halfadder HA0(SW[0], SW[4], LEDR[0], C1);
		fulladder FA1(SW[1], SW[5], C1, LEDR[1], C2);
		fulladder FA2(SW[2], SW[6], C2, LEDR[2], C3);
		fulladder FA3(SW[3], SW[7], C3, LEDR[3], LEDR[4]);

endmodule
		