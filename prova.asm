// 1 Verifique se um triângulo é isósceles, escaleno e equilátero
// pegar as 3 medidas para formar um triangulo
	   MVI B,06	// Amarzenar o valor no registrador B
	   MVI C,07	// Amarzenar o valor no registrador C
	   MVI D,06	// Amarzenar o valor no registrador BD
	   MOV A,B	// Copiar pro A o valor de B
// TRIANGULO EQUILATERO
// se os valores foram iguaia quanto para o c tanto para o D o Z = 1

COMP1:	   CMP C	// Cpmparar o valor do A com C
	   JZ COMP2	// se Z=1,vai para COMP2

COMP2:	   CMP D	// Cpmparar o valor do A com D
	   JZ FIM	// se Z=1,vai para FIM
// ------------------
// TRIANGULO ESCALENO
	   MOV A,C	// Copiar pro A o valor de C

COMP3:	   CMP B	// Cpmparar o valor do A com B
	   JNZ COMP4	// se Z=0,vai para COMP4

COMP4:	   CMP D	// Cpmparar o valor do A com D
	   JNZ FIM	// se Z=0,vai para FIM
// ------------------
// TRIANGULO ISOSCELES
// SE ELE NAO FOE NENHUM ACIMA, CERTAMENTE CAIRÁ AQUI, LOGO NAO HA NECESSIDADE DE FAZER A COMPARAÇÃO
	   MOV A,D	// Copiar pro A o valor de D
	   CMP C	// Cpmparar o valor do A com C
	   CMP B	// Cpmparar o valor do A com B

FIM:	   HLT	// finaliza o proganma
