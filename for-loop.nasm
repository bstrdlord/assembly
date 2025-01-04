bits 64

section .data
    msg db "lmao", 0ah
    len: equ $-msg

section .text
    global _start

_start:
    mov rax, 5  ; can use rbx

.loop:
    test rax, rax
    jz .done


    push rax

    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, len
    syscall


    pop rax
    dec rax
    jmp .loop

.done:
    mov rax, 60
    xor rdi, rdi
    syscall
