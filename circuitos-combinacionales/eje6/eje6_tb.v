`timescale 1ns/1ps

module eje6_tb();

// Entradas
reg [11:0] codigoH_recibido;
// Salidas
wire [7:0] datosCorregidos;

eje6_cor correcion (
    .codigoH_recibido(codigoH_recibido),
    .datosCorregidos(datosCorregidos)
);


initial begin
  $dumpfile("eje6_tb.vcd");
  $dumpvars(0, eje6_tb);
  // Valor esperado en datoCorregidos es 00100110
  // Test 1: Sin errores
  //codigoH_recibido = 12'b110101000110;
  // Cambiamos un bit para simular un error
  codigoH_recibido = 12'b110101000111;
  #10; // Esperamos un tiempo para ver el resultado
  $finish;
end

endmodule