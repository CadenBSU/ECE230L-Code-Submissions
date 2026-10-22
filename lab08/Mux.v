module mux(
    input [15:0] din,
    input [1:0] sel,
    input enable,
    output [3:0] dout
);

    assign dout = (enable && sel == 2'b00) ? din[3:0]   :
                  (enable && sel == 2'b01) ? din[7:4]   :
                  (enable && sel == 2'b10) ? din[11:8]  :
                  (enable && sel == 2'b11) ? din[15:12] : 4'b0000;

endmodule