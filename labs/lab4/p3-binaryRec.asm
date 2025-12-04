binFunc:
    beqz $a0, returnBinFunc

    li $t0, 2

    div $a0, $t0
    mfhi $t1
    mflo $a0

    addi $sp, $sp, -4
    sw $ra, 0($sp)

    addi $sp, $sp, -4
    sw $t1, 0($sp)

    jal binFunc

    lw $t1, 0($sp)
    addi $sp, $sp, 4

    
    lw $ra, 0($sp)
    addi $sp, $sp, 4

    move $a0, $t1

    li $v0, 1
    syscall

returnBinFunc:
    jr $ra


main:

    addi $sp, $sp, -4
    sw $ra, 0($sp)

    li $a0, 12

    jal binFunc

    lw $ra, 0($sp)
    addi $sp, $sp, 4

returnMain:
    jr $ra