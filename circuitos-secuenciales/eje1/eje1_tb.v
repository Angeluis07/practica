`timescale 1ns/1ps

module eje1_tb();

// Entradas
  reg s_clk;
  reg s_j;
  reg s_k;

// Salida
  wire s_q;

eje1 UUT(
    .clk(s_clk),
    .j(s_j),
    .k(s_k),
    .q(s_q)
);

// Generador de reloj: periodo de 10 ns
always #5 s_clk = ~s_clk;

initial begin
  $dumpfile("eje1_tb.vcd");
  $dumpvars(0, eje1_tb);
  
  s_clk = 0;
  s_j = 0;
  s_k = 0;

  // Secuencia de prueba
  #10 s_j = 1; s_k = 0; // Set
  #10 s_j = 0; s_k = 1; // Reset
  #10 s_j = 1; s_k = 1; // Toggle
  #10 s_j = 0; s_k = 0; // Mantener
  #10 s_j = 1; s_k = 1; // Toggle
  #10 s_j = 0; s_k = 1; // Reset
  #10 s_j = 1; s_k = 0; // Set

  $finish;
end

endmodule