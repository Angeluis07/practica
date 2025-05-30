module eje3_c(
    input wire[7:0] op,
    output reg[3:0] BIN
);

always @(*) begin

    casez(op)
        8'b1???????: BIN = 4'b0001;
        8'b01??????: BIN = 4'b0010;
        8'b001?????: BIN = 4'b0011;
        8'b0001????: BIN = 4'b0100;
        8'b00001???: BIN = 4'b0101;
        8'b000001??: BIN = 4'b0110;
        8'b0000001?: BIN = 4'b0111;
        8'b00000001: BIN = 4'b1000;
        default: BIN = 4'b0000;
        // Caso default  para manejar entradas no válidas
        // o si todas las entradas son 0.

    endcase

end

endmodule