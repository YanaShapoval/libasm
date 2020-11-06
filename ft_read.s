section .text
global _ft_read
extern ___error
SYS_READ_MAC equ 0x2000003

_ft_read:
	mov	rax,SYS_READ_MAC
	syscall
	jc err
	ret

err:
	push	rax
	call ___error
	pop rdx
	mov [rax], rdx
	mov rax, -1
	ret

	
