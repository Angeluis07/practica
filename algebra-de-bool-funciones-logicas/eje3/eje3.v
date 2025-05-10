///Modulo para la operación AND
module eje3(
    input wire A,
    input wire B,
    input wire C,
    input wire D,
    output wire x,
    output wire y,
    output wire z
    // Define el módulo `eje3` con entradas `A`, `B`, `C`, `D` y salidas `x`, `y`, `z`.
);

    assign x = A & B & C & D;
    // Asigna el resultado de la operación AND entre las señales A, B, C y D a la salida X.

    assign y = A | B | C | D;
    // Asigna el resultado de la operación OR entre las señales A, B, C y D a la salida Y.

    assign z = (A|B|~C|~D) & (A|~B|C|~D) & (A|~B|~C|D) & (~A|B|C|~D) & (~A|B|~C|D) & (~A|~B|C|D);
    // Devuelve 0 solo si dos entradas son 1.
endmodule
