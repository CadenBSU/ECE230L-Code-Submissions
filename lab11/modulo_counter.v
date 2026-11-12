`timescale 1ns/1ps

module modulo_counter(
    input clk, reset,
    output [2:0] state,
    output out
);

    wire [2:0] next;
    wire [2:0] d;
    wire c0, c1;
    wire match;
    wire out_d;

    full_adder add0(
        .A(state[0]),
        .B(1'b1),
        .Cin(1'b0),
        .Y(next[0]),
        .Cout(c0)
    );

    full_adder add1(
        .A(state[1]),
        .B(1'b0),
        .Cin(c0),
        .Y(next[1]),
        .Cout(c1)
    );

    full_adder add2(
        .A(state[2]),
        .B(1'b0),
        .Cin(c1),
        .Y(next[2]),
        .Cout()
    );

    assign match = (state == 3'b101);
    assign d = match ? 3'b000 : next;
    assign out_d = out ^ match;

    genvar i;
    generate
        for (i = 0; i < 3; i = i + 1) begin
            d_flip_flop state_ff(
                .D(d[i]),
                .clk(clk),
                .reset(reset),
                .Q(state[i]),
                .NotQ()
            );
        end
    endgenerate

    d_flip_flop out_ff(
        .D(out_d),
        .clk(clk),
        .reset(reset),
        .Q(out),
        .NotQ()
    );

endmodule