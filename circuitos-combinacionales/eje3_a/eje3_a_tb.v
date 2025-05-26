`timescale 1ns/1ps

module eje3_a_tb();
reg E0;
reg E1;
reg E2;
reg E3;
reg E4;
reg E5;
reg E6;
reg E7;
reg E8;
reg E9;

wire A;
wire B;
wire C;
wire D;

eje3_a UUT(
    .E0(E0),
    .E1(E1),
    .E2(E2),
    .E3(E3),
    .E4(E4),
    .E5(E5),
    .E6(E6),
    .E7(E7),
    .E8(E8),
    .E9(E9),
    .A(A),
    .B(B),
    .C(C),
    .D(D)
);

initial begin
    $dumpfile("eje3_a_tb.vcd");
    $dumpvars(0, eje3_a_tb);

    E0 = 0;
    E1 = 0;
    E2 = 0;
    E3 = 0;
    E4 = 0;
    E5 = 0;
    E6 = 0;
    E7 = 0;
    E8 = 0;
    E9 = 0;
    $display("%0t\tA\tB\tC\tD");

    #10;
    #10;
    $finish;
end

endmodule