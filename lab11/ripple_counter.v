`timescale 1ns/1ps

module ripple_counter(
    input clk, reset,
    output [2:0] stage
);

    t_flip_flop ff0(
        .T(1'b1),
        .clk(clk),
        .reset(reset),
        .Q(stage[0]),
        .NotQ()
    );

    t_flip_flop ff1(
        .T(1'b1),
        .clk(stage[0]),
        .reset(reset),
        .Q(stage[1]),
        .NotQ()
    );

    t_flip_flop ff2(
        .T(1'b1),
        .clk(stage[1]),
        .reset(reset),
        .Q(stage[2]),
        .NotQ()
    );

endmodule