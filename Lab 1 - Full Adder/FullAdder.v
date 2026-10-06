// Yael Roque
// Structural design for a full adder using Verilog
module FullAdder (
		input [0:2] SW,
		output [0:1] LEDR);

		wire S1, T1, T2, T3;
		wire A, B, Cout;

	// Structural code for 1-bit Full Adder
		xor U1(S1, A, B);
		xor U2(Sum, S1, Cin);

		and U3(T3, A, B);
		and U4(T2, B, Cin);
		and U5(T1, A, Cin);

		or U6(Cout, T1, T2, T3);
		
		assign A = SW[0], B = SW[1], Cin = SW[2];
		assign LEDR[0] = Sum, LEDR[1] = Cout;
endmodule