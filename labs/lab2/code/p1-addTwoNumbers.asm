.data

firstNumPrompt:     .asciiz "Enter first number:  "
secondNumPrompt:    .asciiz "Enter second number: "
resultPrompt:       .asciiz "The result is: "


.text

main:
    li $v0, 4
    la $a0, firstNumPrompt
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    li $v0, 4
    la $a0, secondNumPrompt
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    li $v0, 4
    la $a0, resultPrompt
    syscall

    add $a0, $t0, $t1

    li $v0, 1
    syscall


exit:
    li $v0, 10
    syscall

