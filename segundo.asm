#BEGIN 0000H

MVI A, 07
MVI B, 00
VOLTA: INC B
CMP B
JNC VOLTA
HLT\