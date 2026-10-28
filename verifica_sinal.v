
module verifica_sinal (
	input [1:0] sel,
	input x1, 
	input x2, 
	input y, 
	input x,
	output sinal_negativo
);

	   // seletor 00 = x
		// seletor 01 = y
		// seletor 10 = x1        
		// seletor 11 = x2
	wire sinal_x1, sinal_x2, sinal_y, sinal_x;
	
	wire selN0, selN1;

	not (selN0, sel[0]);
	not (selN1, sel[1]);

	// sel = 00 → x
	and (sinal_x, selN1, selN0, x);

  // sel = 01 → y
	and (sinal_y, selN1, sel[0], y);

	// sel = 10 → x1
	and (sinal_x1, sel[1], selN0, x1);

	// sel = 11 → x2
	and (sinal_x2, sel[1], sel[0], x2);

	or (sinal_negativo, sinal_x, sinal_y, sinal_x1, sinal_x2);

endmodule
