module demux(
    input [3:0] din,
    input [1:0] sel,
    input enable,
    output [15:0] dout
);

    assign dout[3:0]   = (enable && sel == 2'b00) ? din : 4'b0000;
    assign dout[7:4]   = (enable && sel == 2'b01) ? din : 4'b0000;
    assign dout[11:8]  = (enable && sel == 2'b10) ? din : 4'b0000;
    assign dout[15:12] = (enable && sel == 2'b11) ? din : 4'b0000;

endmodule