BITS 64
SECTION .text
global strlen

strlen:
	xor rax, rax

length:
	cmp BYTE [rdi], 0
	je end
    inc rdi
    inc rax
	jmp length

end:
	ret