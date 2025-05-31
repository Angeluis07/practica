`timescale 1ns/1ps

module eje4_tb();

// Entradas eje4_a
reg [3:0] bin;
// Salidas eje4_a
wire [3:0] bcd;

// Instancia del módulo a probar eje4_a
eje4_a UUT(
    .bin(bin),
    .bcd(bcd)
);

// Entradas eje4_b
reg E1;
reg E2;
reg E3;
reg E4;

// Salidas eje4_b
wire A;
wire B;
wire C;
wire D;

// Instancia del módulo a probar eje4_b
eje4_b UUT_b(
    .E1(E1),
    .E2(E2),
    .E3(E3),
    .E4(E4),
    .A(A),
    .B(B),
    .C(C),
    .D(D)
);


// Entradas eje4_b_2
reg [3:0] BN;
// Salidas eje4_b_2
wire [3:0] G;
// Instancia del módulo a probar eje4_b_2
eje4_b_2 UUT_b_2(
    .BN(BN),
    .G(G)
);

// Entradas eje4_c
reg [3:0] bits;
// Salidas eje4_c
wire [6:0] Cod_Hamming;
// Instancia del módulo a probar eje4_c
eje4_c UUT_c(
    .bits(bits),
    .Cod_Hamming(Cod_Hamming)
);



// Variable para iterar en el bucle
integer i;

initial begin
  $dumpfile("eje4_tb.vcd");
  $dumpvars(0, eje4_tb);
  /*
  // Test cases eje4_a
     bin = 4'b0000; // 0
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
  */

  /*
  // Test cases eje4_b
  {E1, E2, E3, E4} = 4'b0000; // 0
  #1 {E1, E2, E3, E4} = 4'b0001; // 1
  #1 {E1, E2, E3, E4} = 4'b0010; // 2
  #1 {E1, E2, E3, E4} = 4'b0011; // 3
  #1 {E1, E2, E3, E4} = 4'b0100; // 4
  #1 {E1, E2, E3, E4} = 4'b0101; // 5
  #1 {E1, E2, E3, E4} = 4'b0110; // 6
  #1 {E1, E2, E3, E4} = 4'b0111; // 7
  #1 {E1, E2, E3, E4} = 4'b1000; // 8
  #1 {E1, E2, E3, E4} = 4'b1001; // 9
  #1 {E1, E2, E3, E4} = 4'b1010; // 10
  #1 {E1, E2, E3, E4} = 4'b1011; // 11
  #1 {E1, E2, E3, E4} = 4'b1100; // 12
  #1 {E1, E2, E3, E4} = 4'b1101; // 13
  #1 {E1, E2, E3, E4} = 4'b1110; // 14
  #1 {E1, E2, E3, E4} = 4'b1111; // 15
  */
  /*
  // Test cases eje4_b_2
  for(i = 0; i <= 15; i = i + 1) begin
    
    BN = i; // Asignar el valor de i a BN
    #1;
  end
  */

  // Test cases eje4_c
  for(i = 0; i <= 15; i = i + 1) begin
    bits = i; // Asignar el valor de i a bits
    #1;
  end

  $finish;
end

endmodule