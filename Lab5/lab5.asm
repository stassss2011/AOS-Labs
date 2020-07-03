%include "io.inc"
section .data
array:
    db 67,25,147,86,13,0

section .bss
    max resb 1
    min resb 1
    res resb 1

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging

    call max_min
    
    xor eax, eax
    ret
    
max_min:   
    mov edi, 0 ; установить интекс в 0
    xor eax, eax
    mov al, [edi + array] ; записать в al первый элемент масиива array
    mov ebx, eax ; примем первый элемент за максимальный для начала

max_loop:
    cmp eax, 0 ; если мы на последнем элементе "0"
    je max_loop_exit ; если да, то мы прошли весь массив, идем на выход
    inc edi ; инкрементим индекс
    xor eax, eax
    mov al, [edi + array] ; записываем текущий элемент
    cmp eax, ebx ; сравниваем eax и ebx
    jle max_loop ; если текущий меньше максимального - продолжаем цикл
    mov ebx, eax ; иначе устанавливаем текущий максимальным и продолжаем цикл
    jmp max_loop ; в любом случае продолжаем цикл

max_loop_exit: ; то-же самое для миниммального
    mov [max], ebx
    
    mov edi, 0
    xor eax, eax
    mov al, [edi + array] 
    mov ebx, eax 
    
min_loop:
    inc edi 
    xor eax, eax
    mov al, [edi + array]
    cmp eax, 0 
    je min_loop_exit 
    cmp eax, ebx 
    jge min_loop 
    mov ebx, eax 
    jmp min_loop 


min_loop_exit:
    mov [min], ebx
    mov bh, [max] 
    sub bh, bl ;max - min
    
    mov [res], bh
    ret