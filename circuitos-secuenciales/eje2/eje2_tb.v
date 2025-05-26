`timescale 1ns/1ps

module eje2_tb();

// Entradas
  reg s_clk;
  reg s_d;

// Salida
  wire s_q;

eje2 UUT(
    .clk(s_clk),
    .d(s_d),
    .q(s_q)
);

// Generador de reloj: periodo de 10 ns
always #5 s_clk = ~s_clk;

initial begin
  $dumpfile("eje2_tb.vcd");
  $dumpvars(0, eje2_tb);
  
  s_clk = 0;
  s_d = 0;

  // Secuencia de prueba
  #12 s_d = 1;   // Cambia a 1 antes del siguiente flanco
  #10 s_d = 0;   // Cambia a 0 después de un ciclo
  #10 s_d = 1;   // Cambia a 1 después de otro ciclo
  #10 s_d = 0;   // Cambia a 0 después de otro ciclo

  $finish;
end

endmodule