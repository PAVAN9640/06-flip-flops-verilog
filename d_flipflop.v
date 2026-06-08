`timescale 1ns / 1ps
module d_flipflop (
    input wire d,
    input wire clk,
    output reg q
);
always@(posedge clk)
    q<=d;
endmodule