
INCLUDE Irvine32.inc
 
main          EQU start@0

.data
	Result byte 9 DUP(?)
.code
main PROC		
	mov ecx,9
	mov ebx,10
	mov esi,OFFSET Result
L:	
	mov eax,ecx
	sub ebx,eax
	mov edx,ebx
	shl ebx,3
	add edx,ebx
	mov [esi],edx
	inc esi
	LOOP L
 
	exit
main ENDP
END main