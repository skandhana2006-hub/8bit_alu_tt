module tt_um_8bit_alu (
    input  [7:0] ui_in,
    input  [7:0] uio_in,
    output [7:0] uo_out,
    input  ena,
    input  clk,
    input  rst_n
);

wire [7:0] A;
wire [7:0] B;
reg  [7:0] result;

assign A = ui_in;
assign B = uio_in;

always @(*) begin
    case (A[2:0])

        3'b000: result = A + B;
        3'b001: result = A - B;
        3'b010: result = A & B;
        3'b011: result = A | B;
        3'b100: result = A ^ B;
        3'b101: result = ~A;
        3'b110: result = A << 1;
        3'b111: result = A >> 1;

        default: result = 8'b0;

    endcase
end

assign uo_out = result;

endmodule
