`timescale 1ns / 1ps
module d_flipflop_tb;
reg d;
reg clk;
wire q;

d_flipflop dut (
    .d(d),
    .clk(clk),
    .q(q)
);

always #5 clk = ~clk;
initial begin
    clk = 0;
    d = 0; #10;
    d = 1; #10;
    d = 0; #10;
    d = 1; #10;
    $finish;
end
endmodule