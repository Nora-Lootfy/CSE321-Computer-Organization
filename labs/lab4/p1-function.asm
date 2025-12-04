# int main() 
# {
#     int x = 5;
#     int y = 12;

#     int z = mult(x, y);

#     printf("%d\n", z);

#     return 0;
# }

# int mult(int x, int y)
# {
#     return x * y;
# }


.data
x:  .word 5
y:  .word 12

.text

multFunc:
    mul $v0, $a0, $a1

returnMult:
    jr $ra


main:
    la $s0, x

    # load x -> $a0
    # load y -> $a1
    lw $a0, 0($s0)
    lw $a1, 4($s0)

    # [1] caller save (stack) - $ra
    addi $sp, $sp, -4
    sw $ra, 0($sp)

    # [2] call function with jal
    jal multFunc

    # [3] restore data saved in stack
    lw $ra, 0($sp)
    addi $sp, $sp, 4

    # [4] result -> $v0, $v1 
    move $a0, $v0
    li $v0, 1
    syscall

returnMain:
    jr $ra







