%include "io.inc"


section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging

    mov al, 19h
    inc al; increment 19h
    daa;al = 20h, not 1Ah
    
    mov al, 20h
    dec al; decrement 19h
    das;al = 19h, not 1Fh
    
    xor eax, eax
    ret