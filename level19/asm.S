.intel_syntax noprefix
.section .text
.global _start

_start:
    pop rax
    sub rax, rdi
    push rax
