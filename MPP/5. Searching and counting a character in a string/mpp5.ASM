name1 SEGMENT
ORG 300H
src DB "ABCDA"
name1 ENDS

result SEGMENT
ORG 400H
charflag DB 00H
charcount DB 00H
result ENDS

code SEGMENT
ASSUME CS:code, DS:result, ES:name1
Start: MOV AX, name1
       MOV ES,AX
       MOV AX,result
       MOV DS,AX
       LEA DI,src ; DI=300H
       CLD
       MOV AL,'A'
       MOV CL,05
UP:    SCASB;AL-ES:DI
       JNZ down
       INC charcount
       MOV charflag,01;01H
down:  DEC CL
       JNZ UP
       INT 3

code ENDS
END Start
