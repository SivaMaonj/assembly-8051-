 ORG 0H
 MOV DPTR,#8500H
 MOVX A,@DPTR
 MOV B,A
 MOV R0,A 
 MUL AB
 MOV R1,A
 MOV R2,B

 MOV B,R0
 MUL AB
 MOV R3,A
 MOV R4,B

 MOV B,R2
 MOV A,R0
 MUL AB
 MOV R5,B
 ADD A,R2
 MOV R6,A

 INC DPTR
 MOV A,R3
 MOVX @DPTR,A
 INC DPTR
 MOV A,R6
 MOVX @DPTR,A
 INC DPTR
 MOV A,R5
 MOVX @DPTR ,A