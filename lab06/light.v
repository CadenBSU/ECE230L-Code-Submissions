`timescale 1ns / 1ps

module light(
    input downstairs,
    input upstairs,
    output stair_light
);

    assign stair_light = downstairs ^ upstairs;

endmodule
