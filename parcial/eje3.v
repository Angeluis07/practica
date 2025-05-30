// Codificador de 4 lineas con prioridad a AIKEN 2421
module eje3 (
    input [3:0] op,
    output reg[3:0] out   
);

    always @(*) begin
        case (op)
            4'b1???: out = 4'b0000;
            4'b01??: out = 4'b0001;
            4'b001?: out = 4'b0010;
            4'b0001: out = 4'b0011;
            default: out = 4'bxxxx;
        endcase
    end

endmodule
