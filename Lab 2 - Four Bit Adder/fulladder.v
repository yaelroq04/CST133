// Yael Roque
// Structural design for a single bit Full Adder

module fulladder(

			input A, B, Cin,
			output Sum, Cout);
			
			wire S1, T1, T2, T3;
			
			xor U1(S1, A, B);
			xor U2(Sum, S1, Cin);

			and U3(T3, A, B);
			and U4(T2, B, Cin);
			and U5(T1, A, Cin);

			or U6(Cout, T1, T2, T3);
			
endmodule