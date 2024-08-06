.intel_syntax noprefix
.section .text
.global _start

_start:
    push rdi
    push rsi
    pop rdi
    pop rsi
    
