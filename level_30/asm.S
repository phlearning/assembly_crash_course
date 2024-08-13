.intel_syntax noprefix
.section .text
.global most_common_byte

most_common_byte:

    push rbp
    mov rbp, rsp
    sub rsp, 256

    xor rcx, rcx

initialize_counting_list_with_zero:
    mov byte ptr [rbp + rcx - 256], 0
    inc rcx
    cmp rcx, 256
    jl initialize_counting_list_with_zero

    xor rcx, rcx

count_bytes:
    movzx eax, byte ptr [rdi + rcx]
    inc byte ptr [ rbp + rax - 256]
    inc rcx
    cmp rcx, rsi
    jl count_bytes


init_b_max_freq_max_freq_byte:
    xor rcx, rcx
    xor rdx, rdx
    xor rbx, rbx
    
find_most_common_byte:
    movzx eax, byte ptr [rbp + rcx - 256]
    cmp al, dl
    jle next_byte

update_max_freq_and_max_freq_byte:
    mov dl, al
    mov bl, cl    

next_byte:
    inc rcx
    cmp rcx, 256
    jl find_most_common_byte


return:
    mov al, bl

restore:
    mov rsp, rbp
    pop rbp
    ret
