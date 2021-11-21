	   MVI A,07
	   MVI B,00

VOLTA:	   INR B
	   CMP B
	   JNC VOLTA
	   HLT
