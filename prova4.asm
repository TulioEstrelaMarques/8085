// 4 Calcule o fatorial de um n�mero X na mem�ria
	   LXI H,0800	// Carregue o n�mero
	   MOV B,M	// Leve o n�mero da mem�ria para B
	   MVI D,01	// Defina D para 01H

FATO:	   CALL MUL	// Chamada da multiplica��o
	   DCR B	// Decrementa o registrador B
	   JNZ FATO	// Se Z = 0, volta para o facto
	   INX H	// Aponte para o pr�ximo local
	   MOV M,D	// Armazenar o resultado na mem�ria
	   HLT	// finaliza o programa

MUL:	   MOV E,B	// Carregar B para E
	   XRA A	// Limpar o acumulador para armazenar o resultado

ML:	   ADD D	// Adicionar D a A
	   DCR E	// Decremento E
	   JNZ ML	// Se Z = 0, pule para ML
	   MOV D,A	// Transfira o conte�do de A para D
	   RET	// Resultado de retorno
