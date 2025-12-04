# write a program to print average of 5 data inputs use 3 functions
# one to enter the numbers
# one to calculate average
# one to print the average

.data

arr: .space 20

prompt: .asciiz "Enter 5 elements: \n"
msg: .asciiz "The average of 5 elements is: \n"
newLine: .asciiz "\n"

.text

calcAverage:

    li $t0, 5
    li $t1, 0

    la $t2, arr

    li $t3, 0

sumLoop:
    beq $t1, $t0, sumExit

    lw $t4, 0($t2)

    add $t3, $t3, $t4

    addi $t2, $t2, 4

    addi $t1, $t1, 1
    j sumLoop
sumExit:

    div $v0, $t3, $t0

returnCalcAverage:
    jr $ra

######################################

printAverage:

    move $t0, $a0

    li $v0, 4
    la $a0, msg
    syscall

    li $v0, 1
    move $a0, $t0
    syscall

    li $v0, 4
    la $a0, newLine
    syscall

returnPrintAverage:
    jr $ra

######################################

readArray:

    li $v0, 4
    la $a0, prompt
    syscall

    li $t0, 5
    li $t1, 0

    la $t3, arr

readLoop:
    beq $t1, $t0, readExit

    li $v0, 5
    syscall

    sw $v0, 0($t3)

    addi $t3, $t3, 4

    addi $t1, $t1, 1
    j readLoop
readExit:

returnReadArray:
    jr $ra

######################################

main:

    addi $sp, $sp, -4
    sw $ra, 0($sp)

    jal readArray
    
    jal calcAverage

    move $a0, $v0

    jal printAverage

    lw $ra, 0($sp)
    addi $sp, $sp, 4

returnMain:
    jr $ra
