
[org 0x7c00]

mov [BOOT_DISK], dl

mov bp, 0x7c00
mov sp, bp

call ReadDisk

jmp PROGRAM_SPACE

	;include the other asm codes and give me to use them
%include "Print.asm"
%include "DiskRead.asm"

	;rebot the 512 first bytes
times 510-($-$$) db 0
dw 0xaa55