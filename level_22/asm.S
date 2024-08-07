.intel_syntax noprefix
.section .text
.global _start

_start:
    mov rax, 0x403000
    jmp rax
