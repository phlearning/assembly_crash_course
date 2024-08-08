.intel_syntax noprefix
.section .text
.global most_common_byte

most_common_byte:

    push rbp
    mov rbp, rsp
    sub rsp, 1024

    lea rbx, [rbp - 1024]
    xor rcx, rcx

initialize_counting_list_with_zero:
    mov dword ptr [rbx + rcx * 4], 0
    inc rcx
    cmp rcx, 256
    jl initialize_counting_list_with_zero

    xor rdx, rdx

count_bytes:

    cmp rdx, rsi
    jge count_bytes_done

    movzx rax, byte ptr [rdi + rdx]
    lea rbx, [rbp - 1024]
    inc dword ptr [rbx + rax * 4]

    inc rdx
    jmp count_bytes

count_bytes_done:
    xor rbx, rbx
    xor rcx, rcx
    xor rdx, rdx

find_most_common_byte:
    cmp rbx, 256
    jge find_most_common_byte_done
    
    lea rax, [rbp - 1024]
    mov eax, dword ptr [rax + rbx * 4]
    cmp eax, ecx
    jle next_byte
    mov ecx, eax
    mov edx, ebx

next_byte:
    inc rbx
    jmp find_most_common_byte


find_most_common_byte_done:
    mov rax, rdx

    mov rsp, rbp
    pop rbp
    ret
