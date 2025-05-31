module eje4_a (
    input [3:0] bin,
    output reg [3:0] bcd
);

always @(*) begin

    if (bin <= 4'd9)
        bcd = bin;
    else
        bcd = 4'bxxxx;
end


endmodule