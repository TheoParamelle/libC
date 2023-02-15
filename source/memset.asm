BITS 64
SECTION .text
global memset

memset:
    xor rcx, rcx

while:
    cmp rdx, rcx
    je .end
    mov BYTE [rdi+rcx], sil
    inc rcx
    mov rax, rdi
    jmp while

.end:
    ret