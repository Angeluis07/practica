`timescale 1ns/1ps

module eje7_tb();

// Entradas
reg clk;
reg d;
// Salidas
wire q3;
wire q2;
wire q1;
wire q0;

eje7 UUT(
    .d(d),
    .clk(clk),
    .q3(q3),
    .q2(q2),
    .q1(q1),
    .q0(q0)
   
);



initial begin
  $dumpfile("eje7_tb.vcd");
  $dumpvars(0, eje7_tb);
  clk = 1'b0;
  d = 1'b0;
  #5;
  d = 1'b1;
  #5;
  clk = 1'b1;
  #5;
  clk = 1'b0;
  d = 1'b0;
  #5;
  clk = 1'b1;
  #5;
  clk = 1'b0;
  d = 1'b1;
  #5;
  clk = 1'b1;
  #5;

  $finish;
end

endmodule