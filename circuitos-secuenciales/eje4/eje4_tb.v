`timescale 1ns/1ps

module eje4_tb();

// Entradas
reg clk;
reg d;
reg reset;
reg set;
// Salidas
wire q;
eje4 UUT(
    .clk(clk),
    .d(d),
    .reset(reset),
    .set(set),
    .q(q)
);



initial begin
  $dumpfile("eje4_tb.vcd");
  $dumpvars(0, eje4_tb);
  set = 0; // Inicializar set
  reset = 0; // Inicializar reset
  d = 0;
  clk = 0;
  #5;
  d = 1;
  #5;
  clk = 1;
  #3;
  d = 0;
  #1;
  clk = 0;
  #5;
  reset = 1; // Activar reset
  #5;
  reset = 0; // Desactivar reset
  #5;
  set = 1; // Activar set
  #5;
  set = 0; // Desactivar set
  #5;
  clk = 1; // Cambiar el reloj
  #5;
  clk = 0; // Cambiar el reloj
  #2;
  d = 1; // Cambiar la entrada d
  #3;
  clk = 1; // Cambiar el reloj
  #5;
  reset = 1; // Activar reset nuevamente
  set = 1;
  #5;
  reset = 0; // Desactivar reset
  #10;
  $finish;
end

endmodule