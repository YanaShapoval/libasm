section .text 

global _ft_strcpy

_ft_strcpy:
	mov rcx, 0
	mov rdx, 0
	cmp	rsi, 0
	jz	exit
	jmp copy

copy:
	mov	dl, BYTE [rsi + rcx]
	mov BYTE [rdi + rcx], dl
	cmp dl, 0
	jnz increm
	jz exit

increm:
	inc rcx	
	jmp	copy

exit:
	mov	rax, rdi
	ret
