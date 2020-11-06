section .text
global _ft_strcmp:

_ft_strcmp:
	push rbx
	pop rbx
	mov rax, 0
	mov rbx, 0
	jmp compare

incr:
	inc rsi
	inc rdi
	jmp compare

compare:
	mov al, BYTE[rsi]
	mov bl, BYTE[rdi]
	cmp al, 0
	je 	return
	cmp bl, 0
	je return
	cmp al,bl
	jne return
	jmp incr	

return:
	movzx rax, al
	movzx rbx, bl
	sub	rbx, rax
	mov rax, rbx
	ret
	
