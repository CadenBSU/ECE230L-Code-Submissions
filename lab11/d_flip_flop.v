`timescale 1ns/1ps

module d_flip_flop(
    input D, clk, reset,
    output reg Q,
    output NotQ
);

    initial begin
        Q <= 0;
    end

    always @(posedge clk, posedge reset) begin
        if (reset)
            Q <= 0;
        else
            Q <= D;
    end

    assign NotQ = ~Q;

endmodule