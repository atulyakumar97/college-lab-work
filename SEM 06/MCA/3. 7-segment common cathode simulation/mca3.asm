ORG 0000H
START: MOV DPTR,#100H
MOV R2,#0AH
MOV R3,#00H
UP1: MOV A,R3
MOVC A, @A+DPTR
MOV P1,A
MOV R5,#0FFH
UP: NOP
NOP
NOP
NOP
DJNZ R5,UP
INC R3
DJNZ R2,UP1
LJMP START
ORG 100H
	DB 3FH,06H,5BH,4FH,66H,6DH,7DH,07H,7FH,6FH
		END
			

	