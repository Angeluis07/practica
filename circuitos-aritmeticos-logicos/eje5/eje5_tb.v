`timescale 1ns/1ps


module eje5_tb();

reg [3:O] A;
reg [2:0] op;
wire [3:0] X;

eje5 UUT(
    .A(A),
    .op(op),
    .X(X);

);

endmodule