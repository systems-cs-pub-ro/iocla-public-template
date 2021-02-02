.global main
main:
    // prologue
    stp x29, x30, [sp, #-16]!
    add x29, sp, #0

    // initialization
    mov x0, #10     // n
    eor x1, x1, x1  // sum
    mov x2, #1      // current number

    // TODO Compute sum of squares; place result in x1

    // print result
    ldr x0, =output
    bl printf

    // epilogue
    sub sp, x29, #0
    ldp x29, x30, [sp], #16
    ret

.data
output:
  .asciz "%d\n"
