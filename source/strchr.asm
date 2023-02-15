BITS 64
SECTION .text
global strchr

strchr:
    xor rbx, rbx
    jmp .while

.while:
    cmp BYTE[rdi], sil 
    je .end
    cmp BYTE[rdi], 0
    je .noend
    inc rdi
    jmp .while

.end:
    mov rbx, rdi
    ret

.noend:
    mov rax, 0
    ret