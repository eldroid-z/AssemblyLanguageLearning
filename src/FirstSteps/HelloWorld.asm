; section .bss    ; Unitialised data : variables ;  not required at the moment

section .data   ; initialized data ; constants

    ; labels are memory locations
    ; msg -> is memory location
    ; db -> define byte
    msg: db "Hello World", 10, 0 ; this is our message; 10 -> ascii for newline; 0 -> null at end of message
    msg_L : equ $-msg ; get the length of the string, $ denoted current address.

; print someting
section .text   ; asm code
    global _start:

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, msg_L
    int 80h

    mov eax, 1
    mov ebx, 0
    int 80h
