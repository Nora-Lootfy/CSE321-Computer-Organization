.data

prompt: .asciiz "Enter the number of values(n): "
result: .asciiz "The sum = "
newLine: .asciiz "\n"


.text

main:

    li $v0, 4
    la $a0, prompt
    syscall

    li $v0, 5
    syscall

    move $t0, $v0           # $t0 <- n
    
    addi $t1, $zero, 1      # $t1 <- i

    move $t2, $zero         # $t2 <- sum

for:
    bgt $t1, $t0, endLoop

    addu $t2, $t2, $t1
    addi $t1, $t1, 1

    j for

endLoop:

    li $v0, 4
    la $a0, result
    syscall

    li $v0, 1
    move $a0, $t2
    syscall

    li $v0, 4
    la $a0, newLine
    syscall

exit:
    li $v0, 10
    syscall

