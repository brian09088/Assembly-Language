INCLUDE Irvine32.inc

main          EQU start@0
.data 
MyID DWORD ?
Digit0 BYTE 1
Digit1 BYTE 5
Digit2 BYTE 2
Digit3 BYTE 2

.code
start@0 PROC
	movsx eax, Digit0
	movsx ebx, Digit1
	movsx ecx, Digit2
	movsx edx, Digit3
	mov  MyID,0	
	shl  eax, 24
	add  MyID,eax
	shl  ebx, 16	
	add  MyID,ebx
	shl  ecx, 8
	add  MyID,ecx		
	add  MyID,edx
	exit
main ENDP
END main

