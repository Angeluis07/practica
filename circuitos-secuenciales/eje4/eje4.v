// Flip-Flop D con set y reset asíncronos

module eje4 (
    input wire clk,      
    input wire d,        
    input wire reset,    
    input wire set,    
    output reg q = 0     
);


always @(posedge clk or posedge reset or posedge set) begin
    if (reset)          
        q <= 0;          
    else if (set)     
        q <= 1;          
    else
        q <= d;          
end

endmodule