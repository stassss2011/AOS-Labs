section .data
n:
    db 13


section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    
    xor eax, eax;
    xor edx, edx;
    xor ecx, ecx;
    
    mov cx, [n]
    mov bx, ax
    mov ax, 4c00h
    div cx

    xor eax, eax
    ret
