module twos_compliment(
    input  [7:0] A,
    output [7:0] Y
);

    wire [7:0] inv = ~A;   // ones complement of A
    wire [7:0] c;          // ripple carries

    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin : gen_adder
            full_adder fa (
                .A(inv[i]),
                .B(1'b0),
                .Cin((i == 0) ? 1'b1 : c[i - 1]),
                .Y(Y[i]),
                .Cout(c[i])
            );
        end
    endgenerate
endmodule