module alu_4b(
    input [3:0] A,
    input [3:0] B,
    input [3:0] op,
    output reg [3:0] result
);


always @(*) begin
    case (op)
        4'b0001: result = A & B;
        4'b0010: result = A | B;
        4'b0011: result = A ^ B;
        4'b0101: result = A + B;
        4'b0110: result = A - B;
        4'b1001: result = (A < B) ? 4'b0001 : 4'b0000;
        4'b1010: result = (A == B) ? 4'b0001 : 4'b0000;
        4'b1101: result = A >> 1;
        4'b1110: result = A << 1;
        default: result = 4'b0000;
    endcase
end


endmodule