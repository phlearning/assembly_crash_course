.intel_syntax noprefix
.section .text
.global _start

_start:
    mov rax, [RSP + 0]
    mov rbx, [RSP + 8]
    mov rcx, [RSP + 16]
    mov rdx, [RSP + 24]
    
    add rax, rbx
    add rax, rcx
    add rax, rdx

    mov rbx, 4
    mov rdx, 0
    idiv rbx

    push rax
