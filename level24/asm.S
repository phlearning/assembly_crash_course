.intel_syntax noprefix
.section .text
.global _start

_start:
    jmp target
    .rept 0x51
    nop
    .endr

target:
    pop rdi
    mov rbx, 0x403000
    jmp rbx
