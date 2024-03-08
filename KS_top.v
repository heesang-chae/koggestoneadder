`timescale 1ns / 1ps

module KS_top(A, B, sum, carry); //Top module
input [15:0] A, B;
output [15:0] sum;
output carry;

wire [15:0] P0, G0, G1, G2, G3, G4;
wire [13:0] P1;
wire [11:0] P2;
wire [7:0] P3;

PG_array Array0(A, B, P0, G0);
KS_array1 Array1(P0[15:1], G0, P1, G1);
KS_array2 Array2(P1, G1, P2, G2);
KS_array3 Array3(P2, G2, P3, G3);
KS_array4 Array4(P3, G3, G4);

XOR_array XOR_array(P0[15:1], G4[14:0], sum[15:1]);
assign carry = G4[15];
assign sum[0] = P0[0];
endmodule 