.data

arr: .word 1, 2, 3, 4, 5

msg: .asciiz "The array elements are: \n"
newLine: .asciiz "\n"

.text

main:

    la $t0, arr
    li $t1, 5


    li $v0, 4
    la $a0, msg
    syscall

    li $t2, 0
for:
    beq $t2, $t1, endFor

    li $v0, 1
    lw $a0, 0($t0)
    syscall

    li $v0, 4
    la $a0, newLine
    syscall

    addi $t0, $t0, 4

    addi $t2, $t2, 1
    
    j for
endFor:

return:
    jr $ra
