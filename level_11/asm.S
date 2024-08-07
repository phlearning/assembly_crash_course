.intel_syntax noprefix
.section .text
.global _start

_start:
    xor rax, rax
    and rdi, 1
    xor rdi, 1
    xor rax, rdi
