# BEGIM 0000H
	   MVI E,0A
	   LXI H,C050
	   MOV B,M

V:	   DCR E
	
	
	
	   INX H
	   MOV A,M
	   CMP B
	
	

SA:	   MOV B,A
	
