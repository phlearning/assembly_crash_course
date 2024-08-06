.intel_syntax noprefix
.section .text
.global _start

_start:
    xor rcx, rcx
    xor rax, rax
    mov rdx, rsi

loop:
    add rax, [rdi + rcx * 8]
    inc rcx
    cmp rcx, rdx
    jle loop
    
    xor rdx, rdx
    div rsi


    
