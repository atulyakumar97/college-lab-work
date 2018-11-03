DATA SEGMENT
ORG 200H
string1 DB 'extc1'
DATA ENDS

EXTRA SEGMENT
ORG 300H
string2 DB 05 DUP(?)
EXTRA ENDS

CODE SEGMENT
ORG 100H
ASSUME CS:CODE, DS:DATA, ES:EXTRA
START:  MOV AX,DATA
        MOV DS,AX
        MOV AX,EXTRA
        MOV ES,AX
        LEA SI,string1
        LEA DI,string2
        ADD DI,04
        MOV CL,05

UP:     CLD
        LODSB
        STD
        STOSB
        DEC CL
        JNZ UP
        INT 3
        CODE ENDS
        END START
