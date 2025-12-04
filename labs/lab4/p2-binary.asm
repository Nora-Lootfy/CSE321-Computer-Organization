binFunc:

    li $t1, 8
    li $t2, 1
    li $v0, 1

    move $a1, $a0

for:
    beqz $t1, endFor
    
    addi $t1, $t1, -1
    sllv $t2, $t2, $t1

    and $a0, $a1, $t2

if:
    beqz $a0, else

    li $a0, 1
    j endIf
else:
    li $a0, 0
    j endIf
endIf:

    syscall

    li $t2, 1

    j for

endFor:

returnBinFunc:
    jr $ra

main:

    addi $sp, $sp, -4
    sw $ra, 0($sp)

    li $a0, 12

    jal binFunc


returnMain:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    jr $ra