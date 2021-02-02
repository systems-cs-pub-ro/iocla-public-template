.global main
main: 
    // prologue
    stp x29, x30, [sp, #-16]!
    add x29, sp, #0 

    ldr x19, =nums
    ldr w1, [x19]

    // print result
    ldr x0, =output
    bl printf

    // epilogue
    sub sp, x29, #0
    ldp x29, x30, [sp], #16
    ret

.data
nums:
  .byte 5, 2, -3, 7, 8

nums_size:
  .byte 5

output:
  .asciz "%d\n"
