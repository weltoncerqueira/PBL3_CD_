// Decodificador BCD (0-9) para display de 7 segmentos - ANODO COMUM
// Saída: 0 = Aceso, 1 = Apagado
// Ordem dos segmentos: {a, b, c, d, e, f, g}
module bcd_to_7seg (
    input  wire [3:0] bcd,
    output wire [6:0] seg
);

    wire n0, n1, n2, n3;
    not (n0, bcd[0]);
    not (n1, bcd[1]);
    not (n2, bcd[2]);
    not (n3, bcd[3]);

	 // representação dos 10 algarismos decimais possiveis
    wire d0, d1, d2, d3, d4, d5, d6, d7, d8, d9;
		
    and (d0, n3, n2, n1, n0);          
    and (d1, n3, n2, n1, bcd[0]);      
    and (d2, n3, n2, bcd[1], n0);     
    and (d3, n3, n2, bcd[1], bcd[0]);  
    and (d4, n3, bcd[2], n1, n0);      
    and (d5, n3, bcd[2], n1, bcd[0]);  
    and (d6, n3, bcd[2], bcd[1], n0);  
    and (d7, n3, bcd[2], bcd[1], bcd[0]); 
    and (d8, bcd[3], n2, n1, n0);      
    and (d9, bcd[3], n2, n1, bcd[0]);  

    // seg[6:0] = {a,b,c,d,e,f,g}

    or (seg[6], d1, d4);
    or (seg[5], d5, d6);
    or (seg[4], d2);
    or (seg[3], d1, d4, d7);
    or (seg[2], d1, d3, d4, d5, d7, d9);
    or (seg[1], d1, d2, d3, d7);
    or (seg[0], d0, d1, d7);

endmodule
