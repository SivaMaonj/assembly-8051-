ORG 0H
MOV DPTR,#8500H
MOVX A,@DPTR
MOV R0,A
DEC R0
MOV A,R0
MOV R1,A
INC DPTR

CON:
MOVX A,@DPTR
MOV B,A
INC DPTR
MOVX A,@DPTR
CJNE A,B,CK
SJMP CON

CK:
JC NS 
DEC DPL
MOVX @DPTR,A
INC DPTR
MOV A,B
MOVX @DPTR,A

NS:
DJNZ R0,CON
MOV DPTR,#8501H
MOV A,R1
MOV R0,A
DJNZ R1,CON
END 

 



