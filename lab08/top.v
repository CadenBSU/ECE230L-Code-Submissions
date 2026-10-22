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

    // the one line that the mux and demux have to share
    wire [3:0] line;

    // mux picks who sends: btnU and btnL are the select, btnC is enable
    Mux_4to1 sender(
        .din(sw),           // sw[3:0] CEO, sw[7:4] mine, sw[11:8] Fred, sw[15:12] Jill
        .sel1(btnU),
        .sel0(btnL),
        .enable(btnC),
        .dout(line)
    );

    // demux picks where it goes: btnR and btnD are the select, btnC is enable
    Demux_4to1 receiver(
        .din(line),
        .sel1(btnR),
        .sel0(btnD),
        .enable(btnC),
        .dout(led)          // led[3:0] library, led[7:4] fire dept, led[11:8] school, led[15:12] rib shack
    );

endmodule
