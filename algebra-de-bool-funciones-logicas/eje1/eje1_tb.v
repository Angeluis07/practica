/*
 * Testbench para [nombre del módulo]
 *
 * Un testbench es un módulo Verilog que:
 * 1. Genera estímulos (valores de entrada) para el circuito bajo prueba
 * 2. Monitorea las salidas
 * 3. No tiene entradas/salidas reales - es solo para simulación
 */

// --- PARTE FIJA (SIEMPRE USAR) ---
`default_nettype none
// Deshabilita la inferencia automática de tipos de señales para evitar errores comunes.

`timescale 100 ns / 10 ns
// Define la escala de tiempo para la simulación:
// - La unidad de tiempo es 100 ns.
// - La precisión de los retardos es de 10 ns.

module eje1_tb();
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

wire X;
// Señal de salida `X` del módulo bajo prueba.

integer n;
// Variable entera para usar como índice en el bucle `for`.

reg [8:0] j;
// Registro de 9 bits para almacenar estímulos de entrada para `B`.

reg [8:0] i;
// Registro de 9 bits para almacenar estímulos de entrada para `A`.

// Instanciación del módulo bajo prueba
eje1 UUT (
    .A(A),  // Conecta la señal `A` del testbench al puerto `A` del módulo.
    .B(B),  // Conecta la señal `B` del testbench al puerto `B` del módulo.
    .X(X)   // Conecta la señal `X` del módulo al testbench para monitoreo.
    // ...
);

// --- PARTE FIJA (SIEMPRE USAR) ---
initial begin
  $dumpfile("eje1_tb.vcd");
  // Crea un archivo de salida llamado `eje1_tb.vcd` para almacenar la traza de la simulación.

  $dumpvars(0, A, B, X);
  // Especifica que se monitorearán todas las variables del módulo `eje1_tb`.

  reset = 1;
  // Activa la señal de reset al inicio de la simulación.

  #1;
  // Espera 1 unidad de tiempo (100 ns en este caso).

  reset = 0;
  // Desactiva la señal de reset.

  // Generar estímulos para las entradas
  i = 9'b011101110;
  // Asigna un patrón binario de 9 bits a la señal `i` (estímulos para `A`).

  j = 9'b001000100;
  // Asigna un patrón binario de 9 bits a la señal `j` (estímulos para `B`).

  for (n = 0; n < 9; n = n + 1) begin
    // Bucle para recorrer los 9 bits de las señales `i` y `j`.

    A = i[n];
    // Asigna el bit `n` de `i` a la señal `A`.

    B = j[n];
    // Asigna el bit `n` de `j` a la señal `B`.

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