`timescale 1ns / 1ps
module jk_flipflop_tb;
reg j;
reg k;
reg clk;
wire q;

jk_flipflop dut (
    .j(j),
    .k(k),
    .clk(clk),
    .q(q)
);

always #5 clk = ~clk;
initial begin
    clk = 0;
    j = 0; k = 0; #10;   // Hold
    j = 1; k = 0; #10;   // Set
    j = 0; k = 1; #10;   // Reset
    j = 1; k = 1; #10;   // Toggle
    j = 1; k = 1; #10;   // Toggle
    $finish;
end
endmodule