%include "io.inc"

section .data
    A: db 11011111B
    B: db 01100101B

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    xor eax, eax
    mov ax, [A]
    mov bx, [B]
    
    and ax, bx
    or ax, bx
    xor ax, bx
    
    xor eax, eax
    ret