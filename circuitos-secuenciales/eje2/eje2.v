/// Flip-Flop D

module eje2 (
    input wire clk,     // Reloj
    input wire d,       // Entrada d
    output reg q = 0       // Salida
);

    always @(posedge clk) begin
        q <= d; // Asignación de la entrada d a la salida q en el flanco ascendente del reloj
    end

endmodule
