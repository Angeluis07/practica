`timescale 1ns/1ps

module eje9_tb();

// Entradas
reg w;
reg clk;
// Salidas
wire q1;
wire q0;
wire z_s;

eje9 UUT(
  .w(w),
  .clk(clk),
  .q1(q1),
  .q0(q0),
  .z_s(z_s)
);



initial begin
  $dumpfile("eje9_tb.vcd");
  $dumpvars(0, eje9_tb);
  clk = 0;
  w = 0; 
  #10;
  w = 1;
  #5;
  clk = 1;
  #5;
  w = 0;
  #5;
  clk = 0;
  #5;
  w = 1;
  #5;
  clk = 1;
  #5;
  w = 0;
  #5;
  clk = 0;
  #5;
  clk = 1;
  #5;
  clk = 0;
  #10;

  $finish;
end

endmodule