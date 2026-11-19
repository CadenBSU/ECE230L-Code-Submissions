module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU, // reset
    output [6:0] seg,
    output [3:0] an
);

    one_hot oh(
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(led[0]),
        .Astate(led[2]),
        .Bstate(led[3]),
        .Cstate(led[4]),
        .Dstate(led[5]),
        .Estate(led[6])
    );

    binary bn(
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(led[1]),
        .State(led[9:7])
    );
    
    // 7 segment display stuff
    seg_decoder dec(
        .State(led[9:7]),
        .seg(seg)
    );

    assign an = 4'b1110;

endmodule