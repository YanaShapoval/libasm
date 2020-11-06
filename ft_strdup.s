section .text
global _ft_strdup
extern _malloc
extern _ft_strcpy
extern _ft_strlen

_ft_strdup:
	cmp		rdi, 0
	jz		error

new_str:
	call	_ft_strlen
	inc		rax
	push	rdi
	mov		rdi, rax
	call	_malloc
	pop		r9
	mov		rdi, rax
	mov		rsi, r9

create_value:
	call	_ft_strcpy
	jmp return

error:
	xor rax, rax	
	
return:
	ret
