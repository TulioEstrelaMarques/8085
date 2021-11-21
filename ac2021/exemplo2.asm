	   MVI C,10

VOLTA:	   DCR C
	   JZ FIM
	   MOV A,B
	   JMP VOLTA

FIM:	   HLT
