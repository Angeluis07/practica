// Módulo Banco de registros
module BR{
  input clk,                // Señal de reloj
  input [4:0] a1,           // Dirección del primer registro a leer (5 bits)
  input [4:0] a2,           // Dirección del segundo registro a leer (5 bits)
  input [4:0] a3,           // Dirección del registro a escribir (5 bits)
  input [31:0] wd3,         // Dato a escribir en el registro
  input we,                 // Señal de habilitación de escritura
  output reg [31:0] rd1,    // Salida: dato leído del registro a1
  output reg [31:0] rd2     // Salida: dato leído del registro a2
}

// Declaración del banco de registros: 32 registros de 32 bits
reg [31:0] s_Reg [31:0];

// Proceso de lectura (combinacional)
always @(*) begin
  rd1 = s_Reg[a1];          // Línea 13: Lee el valor del registro en la posición 'a1' y lo asigna a 'rd1'
  rd2 = s_Reg[a2];          // Lee el valor del registro en la posición 'a2' y lo asigna a 'rd2'
end

// Proceso de escritura (secuencial)
always @(posedge clk, we) begin
  s_Reg[a3] = wd3;          // Escribe el valor 'wd3' en el registro en la posición 'a3'
end
endmodule