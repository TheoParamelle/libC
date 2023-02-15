BITS 64
SECTION .text
global memmove

memmove:
    xor rcx, rcx
    cmp rdi, 0
    je .end
    cmp rsi, 0
    je .end
    jmp .while

.while:
    cmp rdx, rcx
    je .end
    mov r10b, [rsi+rcx]
    mov [rdi+rcx], r10b
    inc rcx
    jmp .while

.end:
    mov rax, rdi
    ret