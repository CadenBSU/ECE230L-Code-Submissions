module jk_flip_flop(
    input J, K, clk,
    output Q, NotQ
);

    wire D;

    assign D = (J & ~Q) | (~K & Q);

    d_flip_flop ff(
        .D(D),
        .clk(clk),
        .Q(Q),
        .NotQ(NotQ)
    );

endmodule