.intel_syntax noprefix
.section .text
.global _start

_start:
    mov rax, rdi
    shr rax, 32 
    shl rax, 56 
    shr rax, 56
