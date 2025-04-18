section .data

section .bss
	buf resb 1
section .text
	global _start

_start:
	mov eax, 3 ;sys call
	mov ebx, 0
	mov ecx, buf
	mov edx, 1
	int 0x80

	mov al, Byte[buf]
	inc al
	mov byte[buf],al
	
	mov eax, 4
	mov ebx, 1
	mov ecx, buf
	mov edx, 1
	int 0x80

	mov eax, 1
	mov ebx, 0
	int 0x80
