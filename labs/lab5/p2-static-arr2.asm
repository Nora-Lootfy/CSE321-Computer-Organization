.data

arr: .space 20


prompt: .asciiz "Enter 5 elements: \n"
msg: .asciiz "The array elements are: \n"
newLine: .asciiz "\n"

.text

main:

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

    li $t1, 0
    la $t3, arr

    li $v0, 4
    la $a0, msg
    syscall

printLoop:
    beq $t1, $t0, printExit

    li $v0, 1
    lw $a0, 0($t3)
    syscall

    li $v0, 4
    la $a0, newLine
    syscall

    addi $t3, $t3, 4

    addi $t1, $t1, 1
    
    j printLoop
printExit:


returnMain:
    jr $ra