module seg_decoder(
    input [2:0] State,
    output [6:0] seg
);

    // letter to binary conversion table referenced from this source:
    // https://support.digilent.com/hc/en-us/articles/20367430334619-7-segment-display
    assign seg = (State == 3'b000) ? 7'b0001000 :
                 (State == 3'b001) ? 7'b0000011 :
                 (State == 3'b010) ? 7'b1000110 :
                 (State == 3'b011) ? 7'b0100001 :
                 (State == 3'b100) ? 7'b0000110 : 7'b1111111;

endmodule