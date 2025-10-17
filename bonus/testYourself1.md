# Instruction Set Architecture & MIPS — Quiz


### 1️⃣ Instruction Set Architectures (ISA)

**Which of the following statements are true?**

1. The ISA defines a contract between the program and the hardware.  
2. The ISA determines how the processor will implement the operations the ISA defines.  
3. The ISA defines a set of basic operations that the processor can perform.  
4. The ISA that a computer uses determines which programming languages can be used to program the computer.  


### 2️⃣ MIPS ISA

**Which of the following statements are true?**

1. MIPS is the dominant ISA in use in computers today.  
2. MIPS instructions are 8 bytes long.  
3. MIPS instructions can read up to 2 register values from the register file and write at most 1 register.  
4. Regardless of instruction type, the opcode is always in the same location in a MIPS instruction.  
5. MIPS is more complex than the x86 ISA.  



### 3️⃣ Moore’s Law

**Statement:**  
> Moore’s Law specifies that processor performance doubles every 18–24 months.

**Answer:**  
☐ True  ☐ False  


### 4️⃣ Benchmark Suites

**Which of the following statements are true?**

1. They are collections of well-defined, stand-alone programs.  
2. They always provide an accurate representation of the applications that will run on a computer system.  
3. It is likely that a properly chosen set of benchmarks could be used as a universal measure of computer performance.  
4. Benchmarks are selected via an inherently fair and balanced process.  
5. Benchmarks are generally not very useful.  


### 5️⃣ MIPS Code Analysis

```mips
ori $t0, $zero, 4
sw  $t0, 0($sp)
beq $t0, $t0, foo
lw  $t1, 0($sp)
ori $t2, $zero, 0
foo:
or  $t2, $t1, $zero
or  $t3, $t1, $zero
````

**Question:**
What will the values of `$t2` and `$t3` be after executing this code?



<div class="page-break"></div>

# Answer Key


### 1️⃣ Instruction Set Architectures (ISA)

✅ 1. The ISA defines a contract between the program and the hardware.  
❌ 2. The ISA determines how the processor will implement the operations the ISA defines.  
✅ 3. The ISA defines a set of basic operations that the processor can perform.  
❌ 4. The ISA determines which programming languages can be used.  


### 2️⃣ MIPS ISA

❌ 1. MIPS is the dominant ISA in use in computers today.  
❌ 2. MIPS instructions are 8 bytes long.  
✅ 3. MIPS instructions can read up to 2 registers and write at most 1.  
✅ 4. Opcode location is fixed in all MIPS instruction formats.  
❌ 5. MIPS is more complex than x86.  


### 3️⃣ Moore’s Law

❌ **False** — It refers to transistor count doubling, not performance.


### 4️⃣ Benchmark Suites

✅ 1. Collections of well-defined, stand-alone programs.  
❌ 2. Do not always represent real workloads.  
❌ 3. Not a universal performance measure.  
❌ 4. Not always fair or balanced.  
❌ 5. They are useful — just not perfect.  


### 5️⃣ MIPS Code Analysis

**Execution:**

1. `$t0 ← 4`
2. `sw $t0, 0($sp)` stores 4 to memory.
3. `beq $t0, $t0, foo` is **always true** → jumps to `foo`.
4. Lines between `beq` and `foo` are skipped.
5. `$t1` never loaded → **undefined**.
6. `$t2 = $t1`, `$t3 = $t1` → both undefined.

**Result:**

* `$t0 = 4`
* `$t1 = undefined`
* `$t2 = undefined`
* `$t3 = undefined`

