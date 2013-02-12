[BITS 64]

global	strchr

section	.text


strchr:
	push	rbp
	mov	rbp, rsp

strchr_loop:
	movzx	rdx, BYTE[rdi]

	cmp	rdx, 0
	jz	strchr_err
	
	cmp	rdx, rsi
	je	strchr_end

	inc	rdi
	jmp	strchr_loop

strchr_err:
	mov	rdi, 0
	jmp	strchr_end
	
strchr_end:
	mov	rsp, rbp
	pop	rbp

	mov	rax, rdi
	
	ret	
