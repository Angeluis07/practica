/// Flip-Flop T

module eje3 (
    input wire clk,     // Reloj
    input wire t,       // Entrada d
    output reg q = 0       // Salida
);

    always @(posedge clk) begin
        if (t) 
            q <= ~q; // Invertir la salida q si t es 1 en el flanco ascendente del reloj
        else 
            q <= q; // Mantener el valor actual de q si t es 0
    end

endmodule
