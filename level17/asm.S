.intel_syntax noprefix
.section .text
.global _start

_start:
    mov rax, 0xdeadbeef00001337
    mov [rdi], rax
    mov rbx, 0xc0ffee0000
    mov [rsi], rbx
    
