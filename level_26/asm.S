.intel_syntax noprefix
.section .text
.global _start

_start:
    cmp rdi, 3
    jg default_case
    jmp [rsi + rdi * 8]

default_case:
    jmp [rsi + 4 * 8]
