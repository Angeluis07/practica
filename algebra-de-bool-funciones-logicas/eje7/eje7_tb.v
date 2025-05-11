// --- PARTE FIJA (SIEMPRE USAR) ---
`default_nettype none
// Deshabilita la inferencia automática de tipos de señales para evitar errores comunes.

`timescale 100 ns / 10 ns
// Define la escala de tiempo para la simulación:
// - La unidad de tiempo es 100 ns.
// - La precisión de los retardos es de 10 ns.

module eje7_tb();

parameter DURATION = 100; // Parámetro que define la duración total de la simulación en unidades de tiempo.

reg reset; // Señal de tipo `reg` para simular un reset del circuito bajo prueba.

//Entradas del módulo bajo prueba
reg A;
reg B;
reg C;
reg D;
reg x;
reg y;
reg z;

//Salidas del módulo bajo prueba
wire Y;
wire Y_2;
wire Z;
wire Z_2;
wire F2;
wire F2_2;


// Variable entera para controlar el bucle de simulación.;
integer n;

eje7 UUT ( // Instancia del módulo bajo prueba
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .x(x),
    .y(y),
    .z(z),
    .Y(Y),
    .Y_2(Y_2),
    .Z(Z),
    .Z_2(Z_2),
    .F2(F2),
    .F2_2(F2_2)
);

// --- PARTE FIJA (SIEMPRE USAR) ---
initial begin
  $dumpfile("eje7_tb.vcd");
  $dumpvars(0, A, B, C, D, x, y, z, Y, Y_2, Z, Z_2, F2, F2_2);

  reset = 1; // Activa la señal de reset al inicio de la simulación.

  #1; // Espera 1 unidad de tiempo (100 ns en este caso).

  reset = 0; // Desactiva la señal de reset.


  for (n = 0; n < 16; n = n + 1) begin

    {A, B, C, D} = n;
    // Asigna el valor de `n` a las señales `A`, `B`, `C` y `D` en forma de vector de 4 bits.

    if(n<8)
      {x,y,z} = n;


    #1;
    // Espera 1 unidad de tiempo (100 ns) antes de pasar al siguiente bit.
  end

  #(DURATION) $display("Fin de la simulación");
  $finish;
end

endmodule
