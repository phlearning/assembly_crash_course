.intel_syntax noprefix
.section .text
.global _start

_start:
    xor rax, rax
    test rdi, rdi # or cmp rdi, 0
    jz done

loop:
    cmp byte ptr [rdi + rax], 0
    je done
    inc rax
    jmp loop

done:
