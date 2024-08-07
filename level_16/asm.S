.intel_syntax noprefix
.section .text
.global _start

_start:
    mov al, [0x404000]
    mov bx, [0x404000]
    mov ecx, [0x404000]
    mov rdx, [0x404000]
    
