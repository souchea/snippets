[BITS 64]

global	strcmp

section	.text


strcmp:
	push	rbp
	mov	rbp, rsp

	mov	r8, 0

strcmp_loop:

	movzx	r9, BYTE[rdi + r8]
	movzx	r10, BYTE[rsi + r8]
	
	cmp	r9, 0
	je	strcmp_res
	cmp	r10, 0
	je	strcmp_res


	cmp	r9, r10
	jnz	strcmp_res

	inc	r8
	jmp	strcmp_loop

strcmp_res:
	sub	r9, r10
	mov	rax, r9
	jmp	strcmp_end
	
strcmp_end:
	mov	rsp, rbp
	pop	rbp
	
	ret	
