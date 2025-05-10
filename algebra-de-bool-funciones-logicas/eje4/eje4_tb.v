// --- PARTE FIJA (SIEMPRE USAR) ---
`default_nettype none
// Deshabilita la inferencia automática de tipos de señales para evitar errores comunes.

`timescale 100 ns / 10 ns
// Define la escala de tiempo para la simulación:
// - La unidad de tiempo es 100 ns.
// - La precisión de los retardos es de 10 ns.

module eje4_tb();
// Define el módulo del testbench llamado `eje1_tb`.

parameter DURATION = 100;
// Parámetro que define la duración total de la simulación en unidades de tiempo.

reg reset;
// Señal de tipo `reg` para simular un reset del circuito bajo prueba.

// --- PARTE FIJA (SIEMPRE USAR) ---
// Declaración de señales de entrada (reg) y salida (wire)
reg A;
// Señal de entrada `A` para el módulo bajo prueba.

reg B;
// Señal de entrada `B` para el módulo bajo prueba.

reg C;
// Señal de entrada `C` para el módulo bajo prueba.

reg D;
// Señal de entrada `D` para el módulo bajo prueba.

reg E;
// Señal de entrada `E` para el módulo bajo prueba.

reg F;
// Señal de entrada `F` para el módulo bajo prueba.

wire f_1;
wire g_1;
wire h_1;

wire f_2;
wire g_2;
wire h_2;



integer n;
// Variable entera para controlar el bucle de simulación.;



// Instanciación del módulo bajo prueba
eje4 UUT (
    .A(A),  // Conecta la señal `A` del testbench al puerto `A` del módulo.
    .B(B),  // Conecta la señal `B` del testbench al puerto `B` del módulo.
    .C(C),  // Conecta la señal `C` del testbench al puerto `C` del módulo.
    .D(D),  // Conecta la señal `D` del testbench al puerto `D` del módulo.
    .E(E),  // Conecta la señal `E` del testbench al puerto `E` del módulo.
    .F(F),  // Conecta la señal `F` del testbench al puerto `F` del módulo.
    .f_1(f_1),
    .g_1(g_1),
    .h_1(h_1),
    .f_2(f_2),
    .g_2(g_2),
    .h_2(h_2)

);

// --- PARTE FIJA (SIEMPRE USAR) ---
initial begin
  $dumpfile("eje4_tb.vcd");
  // Crea un archivo de salida llamado `eje2_tb.vcd` para almacenar la traza de la simulación.

  $dumpvars(0, A, B, C, D, E, F, f_1, g_1, h_1, f_2, g_2, h_2);
  // Especifica que se monitorearán todas las variables del módulo `eje1_tb`.

  reset = 1;
  // Activa la señal de reset al inicio de la simulación.

  #1;
  // Espera 1 unidad de tiempo (100 ns en este caso).

  reset = 0;
  // Desactiva la señal de reset.


  for (n = 0; n < 64; n = n + 1) begin

    {A, B, C, D, E, F} = n;
    // Asigna el valor de `n` a las señales `A`, `B`, `C` y `D` en forma de vector de 4 bits.

    #1;
    // Espera 1 unidad de tiempo (100 ns) antes de pasar al siguiente bit.
  end

  // Finalizar simulación
  #(DURATION) $display("Fin de la simulación");
  // Espera el tiempo definido por `DURATION` y muestra un mensaje indicando el fin de la simulación.

  $finish;
  // Finaliza la simulación.
end

endmodule
// Fin del módulo del testbench.