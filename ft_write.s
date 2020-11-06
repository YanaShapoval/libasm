section .text
global _ft_write
extern ___error
SYS_WRITE_MAC equ 0x2000004

_ft_write:
	mov rax, SYS_WRITE_MAC
	syscall
	jc error
	ret

error:
	push rax
	call ___error
	pop rdx
	mov [rax], rdx
	mov rax, -1
	ret	


