.global _start
_start:
    mov x2, #14
    ldr x1, =string
    mov x8, #64
    svc 0
    mov x8, #93
    svc 0
    
.data
string:
    .ascii "Hello, World!"
    .byte 10, 0
