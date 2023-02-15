BITS 64
SECTION .text
global memcpy

memset:
    xor rcx, rcx

while:
    cmp rdx, rcx
    je .end
    mov al, BYTE [rsi+rcx]
    mov BYTE [rdi+rcx], al
    inc rcx
    mov rax, rdi

.end:
    ret