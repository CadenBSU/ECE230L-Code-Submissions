`timescale 1ns/1ps

module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);

    wire [7:0] byte_in [3:0];
    wire [7:0] byte_out [3:0];
    wire [3:0] byte_store;

    assign byte_in[0] = (addr == 2'b00) ? data : 8'b00000000;
    assign byte_in[1] = (addr == 2'b01) ? data : 8'b00000000;
    assign byte_in[2] = (addr == 2'b10) ? data : 8'b00000000;
    assign byte_in[3] = (addr == 2'b11) ? data : 8'b00000000;

    assign byte_store[0] = (addr == 2'b00) ? store : 1'b0;
    assign byte_store[1] = (addr == 2'b01) ? store : 1'b0;
    assign byte_store[2] = (addr == 2'b10) ? store : 1'b0;
    assign byte_store[3] = (addr == 2'b11) ? store : 1'b0;

    genvar i;
    generate
        for (i = 0; i < 4; i = i + 1) begin
            byte_memory mem(
                .data(byte_in[i]),
                .store(byte_store[i]),
                .memory(byte_out[i])
            );
        end
    endgenerate

    assign memory = (addr == 2'b00) ? byte_out[0] :
                    (addr == 2'b01) ? byte_out[1] :
                    (addr == 2'b10) ? byte_out[2] :
                    (addr == 2'b11) ? byte_out[3] : 8'b00000000;

endmodule