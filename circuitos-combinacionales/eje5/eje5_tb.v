`timescale 1ns/1ps

module eje5_tb();

// Entradas eje5_a
reg w0;
reg w1;
reg w2;
reg w3;
reg s0;
reg s1;
// Salidas eje5_a
wire f;

// Instancia del módulo a probar eje5_a
eje5_a UUT(
    .w0(w0),
    .w1(w1),
    .w2(w2),
    .w3(w3),
    .s0(s0),
    .s1(s1),
    .f(f)
);


// Entradas eje5_b
reg d;
// Salidas eje5_b
wire y0;
wire y1;
wire y2;
wire y3;
// Instancia del módulo a probar eje5_b
eje5_b UUT_b(
    .d(d),
    .s0(s0),
    .s1(s1),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3)
);

integer i;

initial begin
  $dumpfile("eje5_tb.vcd");
  $dumpvars(0, eje5_tb);

/*
  // Test para eje5_a
  w0 = 1'b1; // Asignar valores a las entradas
  w1 = 1'b0;
  w2 = 1'b1;
  w3 = 1'b0;
  for(i = 0 ; i <= 3 ; i = i + 1) begin

  {s1, s0} = i; // Cambia los selectores
  #5;
  end
*/
  // Test para eje5_b
  d = 1'b1; // Asignar valor a la entrada
  for(i = 0 ; i <= 3 ; i = i + 1) begin
    {s1_b, s0_b} = i; // Cambia los selectores
    #5;
  end

  $finish;
end

endmodule