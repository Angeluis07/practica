`timescale 1ns/1ps

module eje8_tb();

// Entradas
reg d;
reg clk;
reg R_L; // 1 desp der, 0 desp izq
// Salidas
wire q3;
wire q2;
wire q1;
wire q0;
// Instancia del módulo eje8
eje8 UUT(
    .d(d),
    .clk(clk),
    .R_L(R_L),
    .q3(q3),
    .q2(q2),
    .q1(q1),
    .q0(q0)
);



initial begin
  $dumpfile("eje8_tb.vcd");
  $dumpvars(0, eje8_tb);
  clk = 0;
  R_L = 0;
  d = 1;
  #10;
  clk = 1;
  #10;
  $finish;
end

endmodule