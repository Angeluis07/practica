`timescale 1ns/1ps

module eje4_tb();

// Entradas
reg [3:0] bin;
// Salidas
wire [3:0] bcd;

// Instancia del módulo a probar
eje4_a UUT(
    .bin(bin),
    .bcd(bcd)
);



initial begin
  $dumpfile("eje4_tb.vcd");
  $dumpvars(0, eje4_tb);
  // Test cases
  #1 bin = 4'b0000; // 0
  #1 bin = 4'b0001; // 1
  #1 bin = 4'b0010; // 2
  #1 bin = 4'b0011; // 3
  #1 bin = 4'b0100; // 4
  #1 bin = 4'b0101; // 5
  #1 bin = 4'b0110; // 6
  #1 bin = 4'b0111; // 7
  #1 bin = 4'b1000; // 8
  #1 bin = 4'b1001; // 9
  #1 bin = 4'b1010; // 10 (invalid)
  #1 bin = 4'b1011; // 11 (invalid)
  #1 bin = 4'b1100; // 12 (invalid)
  #1 bin = 4'b1101; // 13 (invalid)
  #1 bin = 4'b1110; // 14 (invalid)
  #1 bin = 4'b1111; // 15 (invalid)
  $finish;
end

endmodule