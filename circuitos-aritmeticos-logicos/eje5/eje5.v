module eje5(
    input [3:0] datos,
    input [2:0] op,
    output reg[3:0] datosMod
);

always @(*)begin

    case(op) 
    3'b000: datosMod = datos;
    3'b001: datosMod = {1'b0, datos[3], datos[2], datos[1]};
    3'b010: datosMod = {datos[2], datos[1], datos[0], 1'b0};
    3'b101: datosMod = {datos[3], datos[3], datos[2], datos[1]};
    3'b110: datosMod = {datos[2], datos[1], datos[0], 1'b0};
    3'b011: datosMod = {datos[0], datos[3], datos[2], datos[1]};
    3'b111: datosMod = {datos[2], datos[1], datos[0], datos[3]};
    default: datosMod = 4'b0000;
    endcase

end


endmodule



































/*module eje5(
    input [3:0] A,
    input [2:0] op,
    output reg[3:0] X

);
always @(*) begin
    case (op)
        3'b000: X = A;
        3'b001: begin
            X[3] = 0; 
            X[2] = A[3]; 
            X[1] = A[2]; 
            X[0] = A[1];
        end
        3'b010: begin
             X[3] = A[2];
             X[2] = A[1]; 
             X[1] = A[0]; 
             X[0] = 0; 
        end
        3'b101: begin
            X[3] = A[3];
            X[2] = A[3];
            X[1] = A[2];
            X[0] = A[1];
        end
        3'b110: begin
            X[3] = A[2];
            X[2] = A[1];
            X[1] = A[0];
            X[0] = 0; 
        end
        3'b011: begin
            X[3] = A[0];
            X[2] = A[3];
            X[1] = A[2];
            X[0] = A[1]; 
        end
        3'b111: begin
            X[3] = A[2];
            X[2] = A[1];
            X[1] = A[0];
            X[0] = A[3]; 
        end 
        default: X = 4'b0000;
    endcase
end


endmodule
*/