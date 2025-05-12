module eje5(
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