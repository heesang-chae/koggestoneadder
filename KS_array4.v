`timescale 1ns / 1ps

module KS_array4(in_Pk, in_Gk, out_Gk);

input [15:0] in_Gk;
input [15:8] in_Pk;
output [15:0] out_Gk;

assign out_Gk[3:0] = in_Gk[3:0];
Buffer Arr4_Buf4(in_Gk[4], out_Gk[4]);
Buffer Arr4_Buf5(in_Gk[5], out_Gk[5]);
Buffer Arr4_Buf6(in_Gk[6], out_Gk[6]);
Buffer Arr4_Buf7(in_Gk[7], out_Gk[7]);
gray_cell Arr4_gray_cell0(in_Gk[0], in_Pk[8], in_Gk[8], out_Gk[8]);
gray_cell Arr4_gray_cell1(in_Gk[1], in_Pk[9], in_Gk[9], out_Gk[9]);
gray_cell Arr4_gray_cell2(in_Gk[2], in_Pk[10], in_Gk[10], out_Gk[10]);
gray_cell Arr4_gray_cell3(in_Gk[3], in_Pk[11], in_Gk[11], out_Gk[11]);
gray_cell Arr4_gray_cell4(in_Gk[4], in_Pk[12], in_Gk[12], out_Gk[12]);
gray_cell Arr4_gray_cell5(in_Gk[5], in_Pk[13], in_Gk[13], out_Gk[13]);
gray_cell Arr4_gray_cell6(in_Gk[6], in_Pk[14], in_Gk[14], out_Gk[14]);
gray_cell Arr4_gray_cell7(in_Gk[7], in_Pk[15], in_Gk[15], out_Gk[15]);

endmodule