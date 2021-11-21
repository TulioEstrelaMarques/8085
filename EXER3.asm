# BEGIM 0000H
	   MVI E,14
	   MVI B,55
	   LXI H,C04F

V:	   DCR E
	   MOV B,A
	   INX H
	   MOV A,M
	   CMP B

SA:	   MOV B,A
