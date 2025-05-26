/// Flip-Flop JK

/// Flip-Flop JK básico

module eje1 (
    input wire clk,     // Reloj
    input wire j,       // Entrada J
    input wire k,       // Entrada K
    output reg q = 0       // Salida
);

    always @(posedge clk) begin
        case ({j, k})
            2'b00: q <= q;       // Mantiene el estado
            2'b01: q <= 0;       // Reset
            2'b10: q <= 1;       // Set
            2'b11: q <= ~q;      // Toggle
        endcase
    end

endmodule
