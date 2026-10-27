// Yael Roque
// Structural design for a Four Bit Full Adder

module lab2b (
		input [0:3] A, B,
		output [0:3] sum, 
		output cout);
				 
		wire C1, C2, C3;
		

		halfadder HA0(A[0], B[0], sum[0], C1);
		fulladder FA1(A[1], B[1], C1, sum[1], C2);
		fulladder FA2(A[2], B[2], C2, sum[2], C3);
		fulladder FA3(A[3], B[3], C3, sum[3], cout);

endmodule
		