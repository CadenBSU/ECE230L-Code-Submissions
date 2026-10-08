`timescale 1ns / 1ps

module top(
    input [7:0] sw,
    output [5:0] led
);

    wire carry_lsb;

    // Stairway light
    light stair(
        .downstairs(sw[0]),
        .upstairs(sw[1]),
        .stair_light(led[0])
    );

    // One bit adder
    adder one_bit(
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .carry(led[2])
    );

    // Two bit adder
    full_adder fa_lsb(
        .A(sw[4]),
        .B(sw[6]),
        .Cin(0),
        .Y(led[3]),
        .Cout(carry_lsb)
    );

    full_adder fa_msb(
        .A(sw[5]),
        .B(sw[7]),
        .Cin(carry_lsb),
        .Y(led[4]),
        .Cout(led[5])
    );

endmodule
