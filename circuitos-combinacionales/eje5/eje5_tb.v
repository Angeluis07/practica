`timescale 1ns/1ps

module eje5_tb();

// Entradas
reg w0;
reg w1;
reg w2;
reg w3;
reg s0;
reg s1;
// Salidas
wire f;

eje5_a UUT(
    .w0(w0),
    .w1(w1),
    .w2(w2),
    .w3(w3),
    .s0(s0),
    .s1(s1),
    .f(f)
);

integer i;

initial begin
  $dumpfile("eje5_tb.vcd");
  $dumpvars(0, eje5_tb);

  w0 = 1'b1; // Asignar valores a las entradas
  w1 = 1'b1;
  w2 = 1'b1;
  w3 = 1'b1;
  for(i = 0; i <= 3 ; i = i + 1) begin

  {s1, s0} = i; // Cambia los selectores
  #5
  end

  $finish;
end

endmodule