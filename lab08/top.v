`timescale 1ns/1ps

module top(
    input [15:0] sw,
    input btnL,
    input btnU,
    input btnD,
    input btnR,
    input btnC,
    output [15:0] led
);

    wire [3:0] line;

    mux sender(
        .din(sw),
        .sel({btnU, btnL}),
        .enable(btnC),
        .dout(line)
    );

    demux receiver(
        .din(line),
        .sel({btnR, btnD}),
        .enable(btnC),
        .dout(led)
    );

endmodule