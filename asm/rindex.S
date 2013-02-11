[BITS 64]

global	rindex

section	.text


rindex:
	push	rbp
	mov	rbp, rsp

	mov	rax, 0
	
rindex_loop:
	movzx	rdx, BYTE[rdi]

	cmp	rdx, 0
	jz	rindex_end
	
	cmp	rdx, rsi
	je	rindex_find

rindex_inc:	
	inc	rdi
	jmp	rindex_loop

rindex_find:
	mov	rax, rdi
	jmp	rindex_inc
		
rindex_end:
	mov	rsp, rbp
	pop	rbp

	ret	
