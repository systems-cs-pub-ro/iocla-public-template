.global main
main:
    // prologue
    stp x29, x30, [sp, #-16]!
    add x29, sp, #0 

    // pretty print
    ldr x0, =printlen
    bl printf

    // TODO 1: call strlen

    // TODO 1: call printf to print result of strlen

    // print occurences pretty string
    ldr x0, =printocr
    bl printf

    // TODO 3: call substr
    
    // epilogue
    sub sp, x29, #0
    ldp x29, x30, [sp], #16
    ret

// TODO 1: implement strlen
strlen:
    stp x29, x30, [sp, #-16]!
    add x29, sp, #0

    sub sp, x29, #0
    ldp x29, x30, [sp], #16
    ret


// TODO 2: implement starts_with
starts_with:
    stp x29, x30, [sp, #-16]!
    add x29, sp, #0

    sub sp, x29, #0
    ldp x29, x30, [sp], #16
    ret
    


// TODO 3: implement substr
substr:
    stp x0, x1, [sp, #-16]!
    stp x29, x30, [sp, #-16]!
    add x29, sp, #0 

   
    sub sp, x29, #0
    ldp x29, x30, [sp], #16
    ldp x0, x1, [sp], #16
    ret


.data
subs:
  .asciz "is"
output:
  .asciz "%d\n"
chr:
  .asciz "%c\n"
printlen:
  .asciz "String length is:\n"
printocr:
  .asciz "Substring appears at positions:\n"
string:
  .asciz "This string is the bomb"
