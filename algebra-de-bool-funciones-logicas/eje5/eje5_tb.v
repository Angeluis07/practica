// --- PARTE FIJA (SIEMPRE USAR) ---
`default_nettype none
// Deshabilita la inferencia automática de tipos de señales para evitar errores comunes.

`timescale 100 ns / 10 ns
// Define la escala de tiempo para la simulación:
// - La unidad de tiempo es 100 ns.
// - La precisión de los retardos es de 10 ns.

module eje4_tb();

parameter DURATION = 100; // Parámetro que define la duración total de la simulación en unidades de tiempo.

reg reset; // Señal de tipo `reg` para simular un reset del circuito bajo prueba.

//Entradas del módulo bajo prueba
reg A;
reg B;
reg C;

//Salidas del módulo bajo prueba
wire f_1;
wire g_1;
wire h_1;
wire l_1;
wire f_2;
wire g_2;
wire h_2;
wire l_2;

// Variable entera para controlar el bucle de simulación.;
integer n;





eje5 UUT ( // Instancia del módulo bajo prueba
    .A(A),
    .B(B),
    .C(C),
    .f_1(f_1),
    .g_1(g_1),
    .h_1(h_1),
    .l_1(l_1),
    .f_2(f_2),
    .g_2(g_2),
    .h_2(h_2),
    .l_2(l_2)
);

// --- PARTE FIJA (SIEMPRE USAR) ---
initial begin
  $dumpfile("eje5_tb.vcd");
  $dumpvars(0, A, B, C, f_1, g_1, h_1, l_1, f_2, g_2, h_2, l_2);


  reset = 1; // Activa la señal de reset al inicio de la simulación.

  #1; // Espera 1 unidad de tiempo (100 ns en este caso).

  reset = 0; // Desactiva la señal de reset.


  for (n = 0; n < 8; n = n + 1) begin

    {A, B, C} = n;
    // Asigna el valor de `n` a las señales `A`, `B`, `C` y `D` en forma de vector de 4 bits.

    #1;
    // Espera 1 unidad de tiempo (100 ns) antes de pasar al siguiente bit.
  end

  #(DURATION) $display("Fin de la simulación");
  $finish;
end

endmodule
