// Yael Roque
// Structural design for Single Bit Half Adder

module halfadder(

			input A, B,
			output Sum, Carry);
			
			xor X (Sum, A, B);
			and Y (Carry, A, B);
			
endmodule