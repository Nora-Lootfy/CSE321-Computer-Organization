.data

failMsg:    .asciiz "Test case failed!!\n\n"
passMsg:    .asciiz "Test case passed!!\n\n"

excpected:  .asciiz "\tExcepected =\t"
result:     .asciiz "\tResult =\t\t"

newLine:    .asciiz "\n"

test1:   .asciiz "Test fact(0)\n"
test2:   .asciiz "Test fact(1)\n"
test3:   .asciiz "Test fact(2)\n"
test4:   .asciiz "Test fact(3)\n"
test5:   .asciiz "Test fact(4)\n"
test6:   .asciiz "Test fact(5)\n"
test7:   .asciiz "Test fact(6)\n"

.text

#=====================================================
# Factorial Function
#   Parameters: $a0 -> n
#   Return:     $v0 -> n!
#=====================================================
fact:
    addi $sp, $sp, -4
    sw   $ra, 0($sp)

    li $t0, 1

    ble $a0, $t0, fact0or1

    addi $sp, $sp, -4
    sw   $a0, 0($sp)

    addi $a0, $a0, -1
    jal fact

    lw $a0, 0($sp)
    addi $sp, $sp, 4
    mul $v0, $v0, $a0
    j return

fact0or1:
    li $v0, 1

return:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    jr $ra


main:
    addi $sp, $sp, -4
    sw   $ra, 0($sp)

    # ========= test fact(0) =========
    li $a0, 0
    jal fact

    li $a0, 1
    move $a1, $v0
    la $a2, test1
    jal assertNotEqual


    # ========= test fact(1) =========
    li $a0, 1
    jal fact

    li $a0, 1
    move $a1, $v0
    la $a2, test2
    jal assertNotEqual

    # ========= test fact(2) =========
    li $a0, 2
    jal fact

    li $a0, 2
    move $a1, $v0
    la $a2, test3
    jal assertNotEqual

    # ========= test fact(3) =========
    li $a0, 3
    jal fact

    li $a0, 6
    move $a1, $v0
    la $a2, test4
    jal assertNotEqual

    # ========= test fact(4) =========
    li $a0, 4
    jal fact

    li $a0, 24
    move $a1, $v0
    la $a2, test5
    jal assertNotEqual

    # ========= test fact(5) =========
    li $a0, 5
    jal fact

    li $a0, 120
    move $a1, $v0
    la $a2, test6
    jal assertNotEqual

    # ========= test fact(6) =========
    li $a0, 6
    jal fact

    li $a0, 720
    move $a1, $v0
    la $a2, test7
    jal assertNotEqual


    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    jr $ra



#================================================================================
# assertNotEqual
#   Parameters: $a0 -> expected, $a1 -> result, $a2 -> testNumberMsg
#   Return:     ----
#================================================================================

assertNotEqual:

    move $t0, $a0
    
    li $v0, 4
    move $a0, $a2
    syscall

    la $a0, excpected
    syscall

    li $v0, 1
    move $a0, $t0
    syscall

    li $v0, 4
    la $a0, newLine
    syscall

    la $a0, result
    syscall

    li $v0, 1
    move $a0, $a1
    syscall

    li $v0, 4
    la $a0, newLine
    syscall

    bne $t0, $a1, printFail

    la $a0, passMsg
    syscall

    j returnAssertNotEqual

printFail:
    la $a0, failMsg
    syscall

returnAssertNotEqual:
    jr $ra