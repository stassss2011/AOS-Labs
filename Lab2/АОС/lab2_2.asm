%include "io.inc"

section .data
    numC: db -208
    numO: db 146


section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    xor eax, eax
    xor edx, edx
    xor ebx, ebx
    xor ecx, ecx
    
    
    mov ax, -208
    mov bl, 146
    idiv bl
    mov cl, al
    mov al, ah
    mov ah, 0
    mov dx, 10
    mul dx
    idiv bl
    mov ch, 0   
    add ch, al
    mov al, ah
    mov ah, 0
    mov dx, 10
    mul dx
    idiv bl
    add ch, al
    mov al, ah
    mov ah, 0
    mov dx, 10
    mul dx
    idiv bl
    add ch, al
    mov al, ah
    mov ah, 0
    mov dx, 10
    mul dx
    idiv bl
    add ch, al
    mov ah, ch
    mov al, cl
    
    mov dl, [numC]
    mov dh, [numO]
        
    
    xor eax, eax
    ret