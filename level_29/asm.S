.intel_syntax noprefix
.section .text
.global str_lower

str_lower:
    mov rbx, 0x403000
    xor rcx, rcx
    test rdi, rdi
    jz done


process_string:
    mov al, byte ptr [rdi]
    test al, al
    jz done

    cmp al, 0x5A
    jg skip_conversion

    mov rsi, rdi
    mov dil, al
    call rbx

    mov rdi, rsi
    mov byte ptr [rdi], al

    inc rcx

skip_conversion:
    inc rdi
    jmp process_string

done:
    mov rax, rcx
    ret
