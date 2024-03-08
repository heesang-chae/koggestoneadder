`timescale 1ns / 1ps


module XOR(
	input A,
	input B,
	output Y
);
	assign #6 Y=A^B;
endmodule

module NAND(
	input A,
	input B,
	output Y
);
	assign #3 Y=~(A&B);
endmodule

module NOR(
	input A,
	input B,
	output Y
);
	assign #4 Y=~(A+B);
endmodule

module INV(
	input A,
	output Y
);
	assign #2 Y=~A;
endmodule

module AND(
	input A,
	input B,
	output Y
);
	assign #5 Y=A&B;
endmodule

module OR(
	input A,
	input B,
	output Y
);
	assign #6 Y=A+B;
endmodule