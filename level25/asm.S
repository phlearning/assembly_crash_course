.intel_syntax noprefix
.section .text
.global _start

_start:
    mov esi, [rdi]
    mov ebx, [rdi + 4]
    mov ecx, [rdi + 8]
    mov edx, [rdi + 12]
    xor rax, rax

    cmp esi, 0x7f454c46
    je addition

    cmp esi, 0x00005A4D
    je subtraction

    mov eax, ebx
    imul eax, ecx
    imul eax, edx
    jmp done

addition:
    mov eax, ebx
    add eax, ecx
    add eax, edx
    jmp done

subtraction:
    mov eax, ebx
    sub eax, ecx
    sub eax, edx
    jmp done

done:
    nop