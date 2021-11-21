	   MVI C,10

VOLTA:	   DCR C
	   MOV A,B
	   JNZ VOLTA

FIM:	   HLT
