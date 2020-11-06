section .text
		global _ft_strlen

; delet RAX

_ft_strlen:
	mov		rax, 0	; Move 0 to rax
	jmp		count	; Jump to coun
	
count:
	cmp		BYTE[rdi + rax], 0	; ?str[i] == 0
	jne		increment	; Jump to increment
	jz		exit		; exit if str[i] == 0

increment:
	inc 	rax	;i++
	jmp		count	 		

exit:
	ret		; return(rax) from ft_strlen	

