// --- PARTE FIJA (SIEMPRE USAR) ---
`default_nettype none
// Deshabilita la inferencia automática de tipos de señales para evitar errores comunes.

`timescale 100 ns / 10 ns
// Define la escala de tiempo para la simulación:
// - La unidad de tiempo es 100 ns.
// - La precisión de los retardos es de 10 ns.

module eje9_tb();

parameter DURATION = 100; // Parámetro que define la duración total de la simulación en unidades de tiempo.

reg reset; // Señal de tipo `reg` para simular un reset del circuito bajo prueba.

//Entradas del módulo bajo prueba
reg A;
reg B;
reg C;
reg D;
reg E;


//Salidas del módulo bajo prueba

wire f;
wire f_2;
wire g;
wire g_2;
wire h;
wire h_2;
wire i;
wire i_2;

// Variable entera para controlar el bucle de simulación.;
integer n;

eje9 UUT ( // Instancia del módulo bajo prueba
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .E(E),
    .f(f),
    .f_2(f_2),
    .g(g),
    .g_2(g_2),
    .h(h),
    .h_2(h_2),
    .i(i),
    .i_2(i_2)
);

// --- PARTE FIJA (SIEMPRE USAR) ---
initial begin
  $dumpfile("eje9_tb.vcd");
  $dumpvars(0, A, B, C, D, E, f, f_2, g, g_2, h, h_2, i, i_2);

  reset = 1; // Activa la señal de reset al inicio de la simulación.

  #1; // Espera 1 unidad de tiempo (100 ns en este caso).

  reset = 0; // Desactiva la señal de reset.


  for (n = 0; n < 32; n = n + 1) begin

    {A, B, C, D, E} = n;
    // Asigna el valor de `n` a las señales `A`, `B`, `C` y `D` en forma de vector de 4 bits.



    #1;
    // Espera 1 unidad de tiempo (100 ns) antes de pasar al siguiente bit.
  end

  #(DURATION) $display("Fin de la simulación");
  $finish;
end

endmodule
