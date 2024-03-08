`timescale 1ns / 1ps
////////////////////////////////////////
////////  library modules file  ////////
////////  file name : libs.v    ////////
////////////////////////////////////////


module black_cell(Pj, Gj, Pk, Gk, Out_G, Out_P); //black cell module
input Pj, Gj, Pk, Gk; //j = previous, k = current
output Out_G, Out_P;
wire and_out;

AND AND0(Pj, Pk, Out_P);
AND AND1(Gj, Pk, and_out);
OR OR0(and_out, Gk, Out_G);
endmodule 

module gray_cell(Gj, Pk, Gk, Out_G); //Gray cell module
input Gj, Pk, Gk;
output Out_G;
wire and_out;

AND AND2(Gj, Pk, and_out);
OR OR1(Gk, and_out, Out_G);
endmodule 

module Buffer(in, out); //1-bit Buffer
input in;
output out;
wire inv_out;

INV INV0(in, inv_out);
INV INV1(inv_out, out);
endmodule

module PG(A, B, P, G); //Carry Propagation & Genearte converter
input A, B;
output P, G;

AND AND3(A, B, G);
XOR XOR0(A, B, P);
endmodule


module PG_array(A, B, P, G); //Propagation & Generate converter array
input [15:0] A, B;
output [15:0] P, G;

PG PG_0(A[0], B[0], P[0], G[0]);
PG PG_1(A[1], B[1], P[1], G[1]);
PG PG_2(A[2], B[2], P[2], G[2]);
PG PG_3(A[3], B[3], P[3], G[3]);
PG PG_4(A[4], B[4], P[4], G[4]);
PG PG_5(A[5], B[5], P[5], G[5]);
PG PG_6(A[6], B[6], P[6], G[6]);
PG PG_7(A[7], B[7], P[7], G[7]);
PG PG_8(A[8], B[8], P[8], G[8]);
PG PG_9(A[9], B[9], P[9], G[9]);
PG PG_10(A[10], B[10], P[10], G[10]);
PG PG_11(A[11], B[11], P[11], G[11]);
PG PG_12(A[12], B[12], P[12], G[12]);
PG PG_13(A[13], B[13], P[13], G[13]);
PG PG_14(A[14], B[14], P[14], G[14]);
PG PG_15(A[15], B[15], P[15], G[15]);
endmodule

module XOR_array(A, B, out); //ExclusiveOR array
input [14:0] A, B;
output [14:0] out;

XOR Arr_XOR0(A[0], B[0], out[0]);
XOR Arr_XOR1(A[1], B[1], out[1]);
XOR Arr_XOR2(A[2], B[2], out[2]);
XOR Arr_XOR3(A[3], B[3], out[3]);
XOR Arr_XOR4(A[4], B[4], out[4]);
XOR Arr_XOR5(A[5], B[5], out[5]);
XOR Arr_XOR6(A[6], B[6], out[6]);
XOR Arr_XOR7(A[7], B[7], out[7]);
XOR Arr_XOR8(A[8], B[8], out[8]);
XOR Arr_XOR9(A[9], B[9], out[9]);
XOR Arr_XOR10(A[10], B[10], out[10]);
XOR Arr_XOR11(A[11], B[11], out[11]);
XOR Arr_XOR12(A[12], B[12], out[12]);
XOR Arr_XOR13(A[13], B[13], out[13]);
XOR Arr_XOR14(A[14], B[14], out[14]);
endmodule