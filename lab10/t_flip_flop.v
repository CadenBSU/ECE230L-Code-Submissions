module t_flip_flop(
    input T, clk,
    output Q, NotQ
);

    jk_flip_flop ff(
        .J(T),
        .K(T),
        .clk(clk),
        .Q(Q),
        .NotQ(NotQ)
    );

endmodule