// Flip-Flop D con set y reset asíncronos

module eje4 (
    input wire clk,      // Señal de reloj
    input wire d,        // Entrada de datos D
    input wire rst_n,    // Reset asíncrono, activo en bajo (cuando rst_n=0, resetea)
    input wire set_n,    // Set asíncrono, activo en bajo (cuando set_n=0, pone la salida en 1)
    output reg q = 0     // Salida Q, inicializada en 0
);

// El bloque always se ejecuta en:
// - el flanco de subida del reloj (posedge clk)
// - el flanco de bajada de rst_n (negedge rst_n)
// - el flanco de bajada de set_n (negedge set_n)
always @(posedge clk or negedge rst_n or negedge set_n) begin
    if (!rst_n)          // Si rst_n es 0 (reset activo)
        q <= 0;          // Fuerza la salida a 0 inmediatamente (reset asíncrono)
    else if (!set_n)     // Si set_n es 0 (set activo)
        q <= 1;          // Fuerza la salida a 1 inmediatamente (set asíncrono)
    else
        q <= d;          // Si ninguno está activo, toma el valor de D en el flanco de reloj
end

endmodule