`timescale 1ns / 1ps
module t_flipflop_tb;
reg t;
reg clk;
wire q;

t_flipflop dut (
    .t(t),
    .clk(clk),
    .q(q)
);

always #5 clk = ~clk;
initial begin
    clk = 0;
    t = 0; #10;   // Hold
    t = 1; #10;   // Toggle
    t = 1; #10;   // Toggle
    t = 0; #10;   // Hold
    t = 1; #10;   // Toggle
    $finish;
end
endmodule