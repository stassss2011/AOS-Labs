%include "io.inc"

section .data
    A: dw 013H
    B: dw 0A4H

section .text
global CMAIN

CMAIN:
    mov ebp, esp; for correct debugging
    
    mov ax, [A]
    add ax, [B]
    mov bx, ax
    sub bx, [A]
    neg ax
    inc bx
    mov cx, ax
    imul cx, 2
    
    inc ax
    dec ax
    
    
    xor eax, eax
    ret