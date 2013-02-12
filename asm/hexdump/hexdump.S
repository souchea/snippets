;
; Hexdump from standard entry (fd0)
; For intel x86 64bits (nasm)
;
; @author Jeff Duntemann
; @author Aurelien Souchet
;

[BITS 64]
	
SECTION .bss

	BUFFLEN EQU 10
	Buff	resb BUFFLEN

	
SECTION .data

DumpLin: db " 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 "
DUMPLEN	 EQU $-DumpLin
AscLin:	 db "|...............||",10
ASCLEN   EQU $-AscLin
FULLLEN  EQU $-DumpLin

	
HexDigits: db "0123456789ABCDEF"

DotXlat:
	db 2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh
	db 2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh
	db 20h,21h,22h,23h,24h,25h,26h,27h,28h,29h,2Ah,2Bh,2Ch,2Dh,2Eh,2Fh
	db 30h,31h,32h,33h,34h,35h,36h,37h,38h,39h,3Ah,3Bh,3Ch,3Dh,3Eh,3Fh
	db 40h,41h,42h,43h,44h,45h,46h,47h,48h,49h,4Ah,4Bh,4Ch,4Dh,4Eh,4Fh
	db 50h,51h,52h,53h,54h,55h,56h,57h,58h,59h,5Ah,5Bh,5Ch,5Dh,5Eh,5Fh
	db 60h,61h,62h,63h,64h,65h,66h,67h,68h,69h,6Ah,6Bh,6Ch,6Dh,6Eh,6Fh
	db 70h,71h,72h,73h,74h,75h,76h,77h,78h,79h,7Ah,7Bh,7Ch,7Dh,7Eh,2Eh
	db 2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh
	db 2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh
	db 2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh
	db 2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh
	db 2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh
	db 2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh
	db 2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh
	db 2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh,2Eh
	
SECTION .text

ClearLine:
	push	rax
	push	rbx
	push	rcx
	push	rdx
	push	rsp
	push	rbp
	push	rsi
	push	rdi
	mov	rdx,15

.poke:
	mov	rax,0
	call	DumpChar
	sub	rdx,1
	jae	.poke
	pop	rdi
	pop	rsi
	pop	rbp
	pop	rsp
	pop	rdx
	pop	rcx
	pop	rbx
	pop	rax
	ret

DumpChar:
	push	rbx
	push	rdi
	mov	bl,byte [DotXlat+rax]
	mov	byte [AscLin+rdx+1],bl
	mov	rbx,rax
	lea	rdi,[rdx*2+rdx]
	and	rax,0000000Fh
	mov	al,byte [HexDigits+rax]
	mov	byte [DumpLin+rdi+2],al
	and	rbx,000000F0h
	shr	rbx,4
	mov	bl,byte [HexDigits+rbx]
	mov	byte [DumpLin+rdi+1],bl
	pop	rdi
	pop	rbx
	ret
	
PrintLine:
	push	rax
	push	rbx
	push	rcx
	push	rdx
	push	rsp
	push	rbp
	push	rsi
	push	rdi
	
	mov	rax,4
	mov	rbx,1
	mov	rcx,DumpLin
	mov	rdx,FULLLEN
	int	80h

	pop	rdi
	pop	rsi
	pop	rbp
	pop	rsp
	pop	rdx
	pop	rcx
	pop	rbx
	pop	rax
	ret

LoadBuff:
	push	rax
	push	rbx
	push	rdx

	mov	rax,3
	mov	rbx,0
	mov	rcx,Buff
	mov	rdx,BUFFLEN
	int	80h
	mov	rbp,rax
	xor	rcx,rcx

	pop	rdx
	pop	rbx
	pop	rax
	ret

GLOBAL _start

_start:
	nop

	xor	rsi,rsi
	call	LoadBuff
	cmp	rbp,0
	jbe	Exit

Scan:
	xor	rax,rax
	mov	al,byte[Buff+rcx]
	mov	rdx,rsi
	and	rdx,0000000Fh
	call	DumpChar

	inc	rsi
	inc	rcx

	cmp	rcx,rbp
	jb	.modTest
	call	LoadBuff

	cmp	rbp,0
	jbe	Done

.modTest:
	test	rsi,0000000Fh
	jnz	Scan

	call	PrintLine
	call	ClearLine
	jmp	Scan

Done:
	call	PrintLine

Exit:
	mov	rax,1
	mov	rbx,0
	int	80H
