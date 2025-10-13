.data

prompt:     .asciiz "Enter an integer: "
positive:   .asciiz "Positive!!\n"
negative:   .asciiz "Negative!!\n"
zero:       .asciiz "Zero!!\n"

.text

# if (a = 0)
#     print "zero"
# else if (a > 0)
#     print "positive"
# else
#     print "negative"

main:
    li $v0, 4
    la $a0, prompt
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

if: 
    bne $t0, $zero, elsif
    la $a0, zero
    j  endif

elsif: 
    bltz $t0, else
    la $a0, positive
    j  endif

else:
    la $a0, negative
    
endif:

    li $v0, 4
    syscall

exit:
    li $v0, 10
    syscall