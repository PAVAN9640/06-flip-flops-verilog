`timescale 1ns / 1ps
module sr_flipflop_tb;
reg s;
reg r;
wire q;

sr_flipflop dut (
    .s(s),
    .r(r),
    .q(q)
);

initial begin
    s = 0; r = 0; #10;   // Hold
    s = 1; r = 0; #10;   // Set
    s = 0; r = 0; #10;   // Hold
    s = 0; r = 1; #10;   // Reset
    s = 0; r = 0; #10;   // Hold
    $finish;
end
endmodule