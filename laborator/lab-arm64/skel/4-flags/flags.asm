.global main
main:
    // prologue
    stp x29, x30, [sp, #-16]!
    add x29, sp, #0 

    mov x0, #0
    mov x1, #2

    sub x3, x1, x0
    b.eq exit

    // print result
    ldr x0, =output
    bl printf

exit:
    // epilogue
    sub sp, x29, #0
    ldp x29, x30, [sp], #16
    ret

.data
output:
  .asciz "Nothing special here\n"
