// --- PARTE FIJA (SIEMPRE USAR) ---
`default_nettype none
// Deshabilita la inferencia automática de tipos de señales para evitar errores comunes.

`timescale 100 ns / 10 ns
// Define la escala de tiempo para la simulación:
// - La unidad de tiempo es 100 ns.
// - La precisión de los retardos es de 10 ns.

module eje6_tb();

parameter DURATION = 100; // Parámetro que define la duración total de la simulación en unidades de tiempo.

reg reset; // Señal de tipo `reg` para simular un reset del circuito bajo prueba.

//Entradas del módulo bajo prueba
reg A;
reg B;
reg C;
reg D;

//Salidas del módulo bajo prueba
wire f;
wire f_sop;
wire f_pos;
wire g;
wire g_sop;
wire g_pos;
wire h;
wire h_sop;
wire h_pos;

// Variable entera para controlar el bucle de simulación.;
integer n;





eje6 UUT ( // Instancia del módulo bajo prueba
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .f(f),
    .f_sop(f_sop),
    .f_pos(f_pos),
    .g(g),
    .g_sop(g_sop),
    .g_pos(g_pos),
    .h(h),
    .h_sop(h_sop),
    .h_pos(h_pos)
);

// --- PARTE FIJA (SIEMPRE USAR) ---
initial begin
  $dumpfile("eje6_tb.vcd");
  $dumpvars(0, A, B, C, D, f, f_sop, f_pos, g, g_sop, g_pos, h, h_sop, h_pos);

  reset = 1; // Activa la señal de reset al inicio de la simulación.

  #1; // Espera 1 unidad de tiempo (100 ns en este caso).

  reset = 0; // Desactiva la señal de reset.


  for (n = 0; n < 16; n = n + 1) begin

    {A, B, C, D} = n;
    // Asigna el valor de `n` a las señales `A`, `B`, `C` y `D` en forma de vector de 4 bits.

    #1;
    // Espera 1 unidad de tiempo (100 ns) antes de pasar al siguiente bit.
  end

  #(DURATION) $display("Fin de la simulación");
  $finish;
end

endmodule
