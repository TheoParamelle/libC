BITS 64
SECTION .text
global strcmp

strcmp:
    xor rax, rax
    xor rbx, rbx
    jmp .while

.while:
    mov r10b, BYTE [rdi]
    mov r11b, BYTE [rsi]
    cmp r10b, 0
    je .plus
    cmp r11b, 0
    je .plus
    cmp r10b, r11b
    jne .plus
    je .rd
    je .end

.plus:
    movsx rax, r10b
    movsx rbx, r11b
    sub rax, rbx
    ret

.rd:
    inc rdi
    inc rsi

.end:
    ret