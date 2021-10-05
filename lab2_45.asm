TITLE Example of ASM              (helloword.ASM)

; This program locates the cursor and displays the
; system time. It uses two Win32 API structures.
; Last update: 6/30/2005

INCLUDE Irvine32.inc

; Redefine external symbols for convenience
; Redifinition is necessary for using stdcall in .model directive 
; using "start" is because for linking to WinDbg.  added by Huang
 
main          EQU start@0

;Comment @
;Definitions copied from SmallWin.inc:

.data
Value1	SBYTE	03h
Value2	SBYTE	02h
Value3	SBYTE	8fh
Result	SDWORD	?
.code
main PROC
	mov eax,0
	mov ebx,0
	mov ecx,0
	mov al,Value1
	add al,Value2
	shl ax,1	;ax=2*(Value1+Value2)
	mov bx,ax	;bx=2*(Value1+Value2)
	shl ax,1	;ax=4*(Value1+Value2)
	add bx,ax	;bx=6*(Value1+Value2)
	shl ax,1	;ax=8*(Value1+Value2)
	add bx,ax	;bx=14*(Value1+Value2)
	mov cl,Value3
	sub cx,bx
	neg cx
	mov Result,ecx

	exit
main ENDP
END main