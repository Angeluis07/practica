`timescale 1ns/1ps

module eje6_tb();

// Entradas
reg [3:0] s_b;
reg [3:0] s_b_latch; // Para el latch, si es necesario
reg s_clk;
reg enable;
reg [0:3] s_b_prueba;
// Salidas
wire [3:0] s_q;
wire [3:0] s_q_latch; // Para el latch, si es necesarioç
reg s;
eje6_flip_flop UUT(
    .b(s_b),
    .clk(s_clk),
    .q(s_q)
);

eje6_latch UUT_latch(
    .b(s_b_latch),
    .enable(enable),
    .q(s_q_latch)
);



initial begin
  $dumpfile("eje6_tb.vcd");
  $dumpvars(0, eje6_tb);
  enable = 1'b0; // Inicialmente deshabilitado
  s_clk = 1'b0;
  s_b = 4'b1010;
  s_b_prueba = 4'b1010;
  s_b_latch = 4'b1010; // Valor inicial para el latch
   s = s_b_prueba[3];
  #5;
  // Prueba del Flip-Flop D
  s_clk = 1'b1; // Primer flanco de subida
  // Prueba del latch
  enable = 1'b1; // Habilita el latch
  #5;
  $finish;
end

endmodule