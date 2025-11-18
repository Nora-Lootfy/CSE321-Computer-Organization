# CSE301 – Computer Organization 
## Tutorial 5 - part ii

---

**Q1** Diagram how the following code will be excuted on a dual issue processor with 2 ALUs and one memory unit.

```asm
lw $t0, 0($s0)
lw $t1, 0($t0)
lw $t2, 0($t1)
addi $t2, $t2, 5
sw $t2, 0($t1)
addi $s0, $s0, 4
add $t6, $t4, $s5
```

<table class="tutorial-table">
<tr>
    <th></th>
    <th></th>
    <th colspan="2">ALU1</th>
    <th colspan="2">ALU2</th>
    <th colspan="2">Memory</th>
    <th colspan="2">Commit</th>
</tr>
<tr>
    <th></th>
    <th>IF/ID</th>
    <th>In</th>
    <th>Out</th>
    <th>In</th>
    <th>Out</th>
    <th>In</th>
    <th>Out</th>
    <th>In</th>
    <th>Out</th>
</tr>
<tr>
    <th>lw</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <th>lw</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <th>lw</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <th>addi</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <th>sw</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <th>addi</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <th>add</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
</tr>
</table>

---

**Q2** Diagram how the following code will be excuted on a dual issue processor with 2 ALUs and one memory unit.

```asm
addi $sp, $sp, -8
sw $s0, 0($sp)
sw $ra, 4($sp)
add $s0, $t0, $t7
sub $a0, $s0, $t3
lw $s0, 0($sp)
lw $ra, 4($sp)
addi $sp, $sp, 8
```

<table class="tutorial-table">
<tr>
    <th></th>
    <th></th>
    <th colspan="2">ALU1</th>
    <th colspan="2">ALU2</th>
    <th colspan="2">Memory</th>
    <th colspan="2">Commit</th>
</tr>
<tr>
    <th></th>
    <th>IF/ID</th>
    <th>In</th>
    <th>Out</th>
    <th>In</th>
    <th>Out</th>
    <th>In</th>
    <th>Out</th>
    <th>In</th>
    <th>Out</th>
</tr>
<tr>
    <th>addi</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <th>sw</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <th>sw</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <th>add</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <th>sub</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <th>lw</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <th>lw</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <th>addi</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
</tr>
</table>