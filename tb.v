`timescale 1ns / 1ps
module tb();

wire [15:0] sum;
wire carry;
reg [15:0] A, B;

KS_top KS_top(A, B, sum, carry);

initial begin 
    A = 16'b0;
    B = 16'b1;
    #100

    A = 16'd10;
    B = 16'd21;
    #100

    A = 16'h1111;
    B = 16'h1;
    #100

    A = 16'h1111;
    B = 16'h1000;
    #100

    A = 16'd105;
    B = 16'd211;
    #100

    A = 16'd65535;
    B = 16'd1;
    #100

    A = 16'd20001;
    B = 16'd345;
    #100

    A = 16'd7890;
    B = 16'd31435;
    #100

    A = 16'd10;
    B = 16'd101;
    #100

    A = 16'd10000;
    B = 16'd1;
    #100
    $finish;
end
endmodule