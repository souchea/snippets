[BITS 64]

global  strlen
	
section .text

strlen:
	push	rbp
	mov	rbp, rsp

	mov	r8, 0
	
strlen_loop:	
	cmp	BYTE[rdi + r8], 0
	jz	strlen_end

	inc	r8
	jmp	strlen_loop

strlen_end:
	mov	rsp, rbp
	pop	rbp

	mov	rax, r8
	
	ret
