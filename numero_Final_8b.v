// Captura o bit de sinal e Calcula o complemento de 2
module numero_Final_8b (
    input  wire [7:0] entrada,
    output wire [7:0] valor_absoluto
);
    wire bs;
    
	 buf b1 (bs, entrada[7]);
    
    // Calcula o complemento de 2 e verifica se usa o complemento ou não
    complementoDe2_8bits complemento_9bit (
	 .A(entrada), 
	 .bs(bs),
	 .out(valor_absoluto)
	 );
	 
endmodule