`timescale 1ns/1ps

module jk_flip_flop(
    input J, K, clk, reset,
    output Q, NotQ
);

    wire D;

    assign D = (J & ~Q) | (~K & Q);

    d_flip_flop ff(
        .D(D),
        .clk(clk),
        .reset(reset),
        .Q(Q),
        .NotQ(NotQ)
    );

endmodule