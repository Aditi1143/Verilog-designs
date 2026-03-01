module down_counter(
    input clk,
    input rst,
    input enable,
    output reg [3:0] q
);

always @(posedge clk)
begin
    if (rst)
        q <= 4'b1111;
    else if (enable)
        q <= q - 1;
end

endmodule