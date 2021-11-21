// 2

ENT:	   MVI M,32 //
// pega o 20 e o 30 e joga nos registradores

VAR1:	   MVI B,30

VAR2:	   MVI C,20
// mauir que 30
// passar para o acumulador
	   MOV A,B
// compara os valores da memoria e do acumulador

VOLTA1:	   CMP M

MAIOR30:	   JM FIM
// menor que 20

VOLTA2:	   MOV A,C
	   CMP M

MENOR20:	   JC FIM

FIM:	   HLT
