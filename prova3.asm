// 3 Ordena 10 valores aleat�rios na mem�ria EEPROM na posi��o Y e verifique qual o maior valor armazenando-o em uma posi��o X
	   LXI SP,9000	// Initialize Stack Pointer
	   LXI H,8000	// Aponte para obter o tamanho do bloco
	   MOV C,M	// Obtenha a contagem

DO:	   INX H	// Aponte para o pr�ximo local para obter o bloqueio
	   MOV A,M	// Carregue o elemento para A
	   CALL MIN	// Encontre o m�nimo
	   CMP M	// cCompare M e A
	   JZ GO	// se Z = 1, eles s�o iguais, pula para GO
	   CALL SWAP	// Trocar conte�do m�nimo e atual

GO:	   DCR C	// Decrementa C
	   JNZ DO	// Se Z = 0, volta pro DO
	   HLT	// Encerrar o programa

MIN:	   PUSH H	// Empurre HL na pilha
	   PUSH B	// Empurre BC na pilha
	   DCR C	// Decrementa C

LOOP:	   INX H	// Aponte para o pr�ximo local
	   CMP M	// Compare os dados da mem�ria com A
	   JNC SKIP	// Se CY = 0, pule para SKIP
	   MOV A,M	// Atualize o valor de A
	   MOV D,H	// Copiar H para D
	   MOV E,L	// Copiar L para E

SKIP:	   DCR C	// Decrementa C
	   JNZ LOOP	// Se Z = 0, volta para o Loop
	   POP B	// Desempilhar BC da pilha
	   POP H	// Desempilhar HL da pilha
	   RET	// Retornar da sub-rotina

SWAP:	   PUSH PSW	// Armazenar AF na pilha
	   PUSH B	// Empurre BC na pilha
	   LDAX D	// Obter dados do local apontado por DE para A
	   MOV B,A	// Copiar A para B
	   MOV A,M	// obter dados da localiza��o apontada por HL
	   STAX D	// Armazene um conte�do na mem�ria apontado por DE
	   MOV M,B	// Armazene o conte�do B na mem�ria apontada por HL
	   POP B	// Desempilhar BC da pilha
	   POP PSW	// Desempilhar AF da pilha
	   RET	// Retornar da swap
