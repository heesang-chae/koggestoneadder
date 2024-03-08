`timescale 1ns / 1ps

module KS_array3(in_Pk, in_Gk, out_Pk, out_Gk);

input [15:0] in_Gk;
input [15:4] in_Pk;
output [15:0] out_Gk;
output [15:8] out_Pk;


assign out_Gk[1:0] = in_Gk[1:0];
Buffer Arr3_buf2(in_Gk[2], out_Gk[2]);
Buffer Arr3_buf3(in_Gk[3], out_Gk[3]);
gray_cell Arr3_gray_cell0(in_Gk[0], in_Pk[4], in_Gk[4], out_Gk[4]);
gray_cell Arr3_gray_cell1(in_Gk[1], in_Pk[5], in_Gk[5], out_Gk[5]);
gray_cell Arr3_gray_cell2(in_Gk[2], in_Pk[6], in_Gk[6], out_Gk[6]);
gray_cell Arr3_gray_cell3(in_Gk[3], in_Pk[7], in_Gk[7], out_Gk[7]);
black_cell Arr3_black_cell0(in_Pk[4], in_Gk[4], in_Pk[8], in_Gk[8], out_Gk[8], out_Pk[8]);
black_cell Arr3_black_cell1(in_Pk[5], in_Gk[5], in_Pk[9], in_Gk[9], out_Gk[9], out_Pk[9]);
black_cell Arr3_black_cell2(in_Pk[6], in_Gk[6], in_Pk[10], in_Gk[10], out_Gk[10], out_Pk[10]);
black_cell Arr3_black_cell3(in_Pk[7], in_Gk[7], in_Pk[11], in_Gk[11], out_Gk[11], out_Pk[11]);
black_cell Arr3_black_cell4(in_Pk[8], in_Gk[8], in_Pk[12], in_Gk[12], out_Gk[12], out_Pk[12]);
black_cell Arr3_black_cell5(in_Pk[9], in_Gk[9], in_Pk[13], in_Gk[13], out_Gk[13], out_Pk[13]);
black_cell Arr3_black_cell6(in_Pk[10], in_Gk[10], in_Pk[14], in_Gk[14], out_Gk[14], out_Pk[14]);
black_cell Arr3_black_cell7(in_Pk[11], in_Gk[11], in_Pk[15], in_Gk[15], out_Gk[15], out_Pk[15]);

endmodule