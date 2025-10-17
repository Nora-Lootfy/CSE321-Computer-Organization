add_func:
    addi $sp, $sp, -4
    sw   $ra, 0($sp)

    add $v0, $a0, $a1

    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    jr $ra

main:
    addi $sp, $sp, -4
    sw   $ra, 0($sp)

    li  $a0, 5
    li  $a1, 7

    jal add_func

    move $t0, $v0

    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    jr $ra

