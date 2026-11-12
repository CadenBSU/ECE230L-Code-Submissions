`timescale 1ns/1ps

module t_flip_flop(
    input T, clk, reset,
    output Q, NotQ
);

    jk_flip_flop ff(
        .J(T),
        .K(T),
        .clk(clk),
        .reset(reset),
        .Q(Q),
        .NotQ(NotQ)
    );

endmodule