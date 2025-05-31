// Ejercicio 5: Mux 4 a 1
// Autor: [Palacios Angel]
module eje5_a (
    input wire w0,
    input wire w1,
    input wire w2,
    input wire w3,
    input wire s0,
    input wire s1,
    output wire f
);

always @(*) begin

    if(s0 == 0 && s1 == 0) begin
        f = w0;
    end else if (s0 == 0 && s1 == 1) begin
        f = w1;
    end else if (s0 == 1 && s1 == 0) begin
        f = w2;
    end else if (s0 == 1 && s1 == 1) begin
        f = w3;
    end else begin
        f = 1'bx; // Undefined state
    end


end



endmodule