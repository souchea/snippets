;
; @author Aurelien Souchet
; @date 12/02/2012
;

SECTION .data

WriMsg:	db "Doing a test", 10
WriLen:	equ $-WriMsg

SECTION .text

global _start

_start:
	mov eax,4
	mov ebx,1
	mov ecx,WriMsg
	mov edx,WriLen
	int 80H

	mov eax,1
	mov ebx,0
	int 80H
