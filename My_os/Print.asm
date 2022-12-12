
PrintF:
		;push to the stack
	push ax
	push bx

	mov ah, 0x0e
	.Loop:
		;if bx ! 0
	cmp [bx], byte 0
	je .Exit
			;al get the char
		mov al, [bx]
			;print the char
		int 0x10
		inc bx
		jmp .Loop
	.Exit:

		;pop from the stack
	pop ax
	pop bx
	ret