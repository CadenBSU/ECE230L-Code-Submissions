module d_flip_flop(
    input D, clk,
    output reg Q,
    output NotQ
);

    initial begin
        Q <= 0;
    end

    always @(posedge clk)
        Q <= D;

    assign NotQ = ~Q;

endmodule