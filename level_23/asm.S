.intel_syntax noprefix
.section .text
.global _start

_start:
    jmp $ + 0x53
    .rept 0x51
    nop
    .endr

target:
    mov rax, 0x1
