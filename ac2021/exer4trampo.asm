
COMEÇO:	   LXI SP,8040
	   MVI D,00
	   MOV C,M
	   DCR C
	   INX H

VERIFICA:	   MOV A,M
	   INX H
	   CMP M
	   JC NEXTBYTE
	   MOV B,M
	   MOV M,A
	   DCX H
	   MOV M,B
	   INX H
	   MVI D,01

NEXTBYTE:	   DCR C
	   JNZ VERIFICA
	   MOV A,D
	   RRC
	   JC COMEÇO
	   HLT
