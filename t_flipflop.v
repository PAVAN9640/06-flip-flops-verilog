`timescale 1ns / 1ps
module t_flipflop (
    input wire t,
    input wire clk,
    output reg q
);
always@(posedge clk) begin
    if(t)
        q<=~q;
end
endmodule