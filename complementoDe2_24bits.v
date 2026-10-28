// Complemento de dois de 24 bits
// Usado no módulo integrador para verificar o sinal do número antes de enviar para os displays
module complementoDe2_24bits (
    input  [23:0] A,
    input         bs, // Bit de sinal (1 = aplica C2, 0 = mantém)
    output [23:0] out
);

    wire [23:0] A_xor;
    wire cout_inutil, ovf_inutil;

    // Inversão condicional controlada por bs
    xor (A_xor[0],  A[0],  bs);
    xor (A_xor[1],  A[1],  bs);
    xor (A_xor[2],  A[2],  bs);
    xor (A_xor[3],  A[3],  bs);
    xor (A_xor[4],  A[4],  bs);
    xor (A_xor[5],  A[5],  bs);
    xor (A_xor[6],  A[6],  bs);
    xor (A_xor[7],  A[7],  bs);
    xor (A_xor[8],  A[8],  bs);
    xor (A_xor[9],  A[9],  bs);
    xor (A_xor[10], A[10], bs);
    xor (A_xor[11], A[11], bs);
    xor (A_xor[12], A[12], bs);
    xor (A_xor[13], A[13], bs);
    xor (A_xor[14], A[14], bs);
    xor (A_xor[15], A[15], bs);
    xor (A_xor[16], A[16], bs);
    xor (A_xor[17], A[17], bs);
    xor (A_xor[18], A[18], bs);
    xor (A_xor[19], A[19], bs);
    xor (A_xor[20], A[20], bs);
    xor (A_xor[21], A[21], bs);
    xor (A_xor[22], A[22], bs);
    xor (A_xor[23], A[23], bs);

    // Soma 'bs' para concluir o C2 (se bs=1 soma 1, se bs=0 soma 0)
    somador_24b add_c2 (
        .A(A_xor),
        .B(24'b0),
        .cin(bs),
        .S(out),
        .cout(cout_inutil),
        .overflow(ovf_inutil)
    );

endmodule
