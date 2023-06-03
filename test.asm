section .data
    message db 'Hello world!', 0x0a, 0

section .text
global _start

_start:
    mov esi, message  

;This will print the string in esi, untill it reaches a null term
printStringCharByChar:

    mov eax, 4
    mov ebx, 1
    mov ecx, esi
    mov edx, 1
    int 0x80

    inc esi
    cmp byte [esi], 0
    jne printStringCharByChar 

    mov eax, 1
    xor ebx, ebx
    int 0x80
