module tt_um_8bit_alu (
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);

wire [3:0] A;
wire [3:0] B;
wire [1:0] sel;

assign A   = ui_in[3:0];
assign B   = ui_in[7:4];
assign sel = uio_in[1:0];

reg [7:0] result;

always @(*) begin
    case(sel)
        2'b00: result = A + B;
        2'b01: result = A - B;
        2'b10: result = A & B;
        2'b11: result = A | B;
    endcase
end

assign uo_out = result;

assign uio_out = 8'b00000000;
assign uio_oe  = 8'b00000000;

endmodule
