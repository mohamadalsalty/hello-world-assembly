section .data
    helloMessage db 'Hello, World!',0xA  ; 'Hello, World!' string followed by a newline character
    len equ $ - helloMessage             ; Calculate the length of the helloMessage string

section .text
    global _start

_start:
    ; Write our string to stdout
    mov eax, 4           ; The system call for write (sys_write)
    mov ebx, 1           ; File descriptor 1 - stdout
    mov ecx, helloMessage; Pointer to our string
    mov edx, len         ; Length of our string
    int 0x80             ; Call the kernel

    ; Exit our program
    mov eax, 1           ; The system call for exit (sys_exit)
    xor ebx, ebx         ; Status 0
    int 0x80             ; Call the kernel
