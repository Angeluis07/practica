`timescale 1ns/1ps

module eje6_tb();

// Entradas
reg clk;
reg d_0 = 0;
reg d_1 = 0; 
reg d_2 = 0;
reg d_3 = 0;
// Salidas
wire [3:0] r4;
// Instancia del módulo a probar eje6
eje6 UUT(
    .clk(clk),
    .d_0(d_0),
    .d_1(d_1),
    .d_2(d_2),
    .d_3(d_3),
    .r4(r4)
);
always #5 clk = ~clk;


initial begin
  $dumpfile("eje6_tb.vcd");
  $dumpvars(0, eje6_tb);
  clk = 1;
  #2;      // Espera un poco antes del primer flanco de subida
  d_0 = 1; // Cambia d_0 antes del siguiente flanco de subida
  d_1 = 1;
  #10;     // Espera un ciclo de reloj completo
  //d_1 = 1; // Cambia d_1 antes del siguiente flanco de subida
  #15;

  $finish;
end

endmodule