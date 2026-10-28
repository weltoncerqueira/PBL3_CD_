
// Verifica se delta é negativo OU se a = zero. Caso qualquer um seja verdadeiro, x1 e x2 são zerados.
module habilita_x1_x2 (
    input  [8:0] x1, x2, 
    input        sinal_delta, flag_a_zero,
    output [8:0] x1_saida, x2_saida
);

    wire condicao_zero;
    or (condicao_zero, sinal_delta, flag_a_zero);

    // Habilita a passagem de x1 com base na condição combinada
    mux_2x1 mux_x1_0 (.A(x1[0]), .B(1'b0), .S(condicao_zero), .Y(x1_saida[0]));
    mux_2x1 mux_x1_1 (.A(x1[1]), .B(1'b0), .S(condicao_zero), .Y(x1_saida[1]));
    mux_2x1 mux_x1_2 (.A(x1[2]), .B(1'b0), .S(condicao_zero), .Y(x1_saida[2]));
    mux_2x1 mux_x1_3 (.A(x1[3]), .B(1'b0), .S(condicao_zero), .Y(x1_saida[3]));
    mux_2x1 mux_x1_4 (.A(x1[4]), .B(1'b0), .S(condicao_zero), .Y(x1_saida[4]));
    mux_2x1 mux_x1_5 (.A(x1[5]), .B(1'b0), .S(condicao_zero), .Y(x1_saida[5]));
    mux_2x1 mux_x1_6 (.A(x1[6]), .B(1'b0), .S(condicao_zero), .Y(x1_saida[6]));
    mux_2x1 mux_x1_7 (.A(x1[7]), .B(1'b0), .S(condicao_zero), .Y(x1_saida[7]));
    mux_2x1 mux_x1_8 (.A(x1[8]), .B(1'b0), .S(condicao_zero), .Y(x1_saida[8]));
    
    // Habilita a passagem de x2 com base na condição combinada
    mux_2x1 mux_x2_0 (.A(x2[0]), .B(1'b0), .S(condicao_zero), .Y(x2_saida[0]));
    mux_2x1 mux_x2_1 (.A(x2[1]), .B(1'b0), .S(condicao_zero), .Y(x2_saida[1]));
    mux_2x1 mux_x2_2 (.A(x2[2]), .B(1'b0), .S(condicao_zero), .Y(x2_saida[2]));
    mux_2x1 mux_x2_3 (.A(x2[3]), .B(1'b0), .S(condicao_zero), .Y(x2_saida[3]));
    mux_2x1 mux_x2_4 (.A(x2[4]), .B(1'b0), .S(condicao_zero), .Y(x2_saida[4]));
    mux_2x1 mux_x2_5 (.A(x2[5]), .B(1'b0), .S(condicao_zero), .Y(x2_saida[5]));
    mux_2x1 mux_x2_6 (.A(x2[6]), .B(1'b0), .S(condicao_zero), .Y(x2_saida[6]));
    mux_2x1 mux_x2_7 (.A(x2[7]), .B(1'b0), .S(condicao_zero), .Y(x2_saida[7]));
    mux_2x1 mux_x2_8 (.A(x2[8]), .B(1'b0), .S(condicao_zero), .Y(x2_saida[8]));
    
endmodule