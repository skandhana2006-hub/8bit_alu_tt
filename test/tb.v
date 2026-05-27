`timescale 1ns/1ps

module tb;

reg [7:0] ui_in;
reg [7:0] uio_in;

wire [7:0] uo_out;

reg clk;
reg rst_n;
reg ena;

tt_um_8bit_alu dut (
    .ui_in(ui_in),
    .uio_in(uio_in),
    .uo_out(uo_out),
    .ena(ena),
    .clk(clk),
    .rst_n(rst_n)
);

initial begin

    clk = 0;
    forever #5 clk = ~clk;

end

initial begin

    ena = 1;
    rst_n = 1;

    ui_in = 8'd5;
    uio_in = 8'd3;

    #20;

    $finish;

end

endmodule
