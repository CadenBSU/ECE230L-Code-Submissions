module circuit_a(
    input A,
    input B,
    input C,
    input D,
    output Y
);

    assign Y = (A | B | C | D)       // M0
             & (A | B | ~C | D)      // M2
             & (A | ~B | C | D)      // M4
             & (A | ~B | ~C | D)     // M6
             & (~A | B | C | D)      // M8
             & (~A | B | C | ~D)     // M9
             & (~A | B | ~C | D)     // M10
             & (~A | B | ~C | ~D)    // M11
             & (~A | ~B | C | D)     // M12
             & (~A | ~B | C | ~D)    // M13
             & (~A | ~B | ~C | D)    // M14
             & (~A | ~B | ~C | ~D);  // M15

endmodule
