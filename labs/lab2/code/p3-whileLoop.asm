.data

newLine: .asciiz "\n"

.text

main:

    li $t1, 10
    li $t0, 1

while:
    bgt $t0, $t1, endLoop
    
    li $v0, 1
    move $a0, $t0
    syscall

    li $v0, 4
    la $a0, newLine
    syscall

    addi $t0, $t0, 1
    j while

endLoop:

exit:
    li $v0, 10
    syscall