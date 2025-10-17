.data
A:  .word 4
B:  .word 6

.text

# ===========================
# Function: compute(a, b)
# returns (a + b) * 2
# ===========================
compute:
    # TODO: Callee-save step (allocate stack)

    add  $s0, $a0, $a1      # s0 = a + b
    sll  $v0, $s0, 1        # v0 = s0 * 2

    # TODO: Callee-restore step

    jr   $ra


# ===========================
# main function (caller)
# ===========================
main:
    lw   $t0, A
    lw   $t1, B
    li   $s0, 99

    # TODO: Caller-save step


    move $a0, $t0
    move $a1, $t1
    jal  compute

    move $t3, $v0
    
    # TODO: Caller-restore step

    jr $ra
