module eje3_b(
    input wire[3:0] BCD,
    output reg [9:0] decimal
);

always @(*)begin

    case(BCD)
        4'b0000: decimal = 10'b1000000000;
        4'b0001: decimal = 10'b0100000000;
        4'b0010: decimal = 10'b0010000000;
        4'b0011: decimal = 10'b0001000000;
        4'b0100: decimal = 10'b0000100000;
        4'b0101: decimal = 10'b0000010000;
        4'b0110: decimal = 10'b0000001000;
        4'b0111: decimal = 10'b0000000100;
        4'b1000: decimal = 10'b0000000010;
        4'b1001: decimal = 10'b0000000001;
        default: decimal = 10'b0000000000;

    endcase

end

endmodule