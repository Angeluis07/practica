// Ejercicio 5: Demultiplexor 1 a 4
// Autor: [Palacios Angel]

module eje5_b(
  input wire d,
  input wire s0,
  input wire s1,
  output wire y0,
  output wire y1,
  output wire y2,
  output wire y3
);

assign y0 = ~s1 & ~s0 & d;
assign y1 = ~s1 & s0 & d;
assign y2 = s1 & ~s0 & d;
assign y3 = s1 & s0 & d;

endmodule