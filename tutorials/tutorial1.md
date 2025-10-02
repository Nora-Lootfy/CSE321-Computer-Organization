# CSE301 – Computer Organization 
## Tutorial 1  

---

### Chapter 1: Basic Concepts and Computer Evolution  

1. For any two processors to have the same architecture, they must:  
   (a) produce the same number of control signals  
   (b) support the same set of machine instructions  
   (c) have the same number of cache levels on chip  
   (d) Only (a) and (b)  
   (e) Only (b) and (c)  

2. Which of the following computer facilities does not get involved when updating  
   variable `x` value using the following HLL command: `++x;`  

   (a) Data movement  
   (b) Control  
   (c) Data processing  
   (d) All the above  
   (e) None of the above  

---

### Chapter 2: Performance Issues  

**Problem 2.10**  
A benchmark program is run on a 40 MHz processor. The executed program consists of 100,000 instruction executions, with the following instruction mix and clock cycle count:  

| Instruction Type   | Instruction Count | Cycles per Instruction |
|--------------------|-------------------|-------------------------|
| Integer arithmetic | 45,000            | 1                       |
| Data transfer      | 32,000            | 2                       |
| Floating point     | 15,000            | 2                       |
| Control transfer   | 8,000             | 2                       |

Determine the **effective CPI**, **MIPS rate**, and **execution time** for this program.  

---

**Problem 2.14**  
The following table shows the execution times (in seconds) for five different benchmark programs on three machines.  

| Benchmark | R     | M     | Z     |
|-----------|-------|-------|-------|
| E         | 417   | 244   | 134   |
| F         | 83    | 70    | 70    |
| H         | 66    | 153   | 135   |
| I         | 39449 | 35527 | 66000 |
| K         | 772   | 368   | 369   |

a. Compute the speed metric for each processor for each benchmark, normalized to machine **R**. That is, the ratio for R are all 1.0. Other ratios are calculated with R treated as the reference system.
b. Repeat part (a) using **M** as the reference machine.  
c. Which machine is the slowest based on each of the preceding two calculations?  

---

**External Problem**  
Given that 30% of a certain program could be executed in parallel, calculate the **speed-up factor** due to executing that program on 8 processors/cores instead of a single processor.  

---

---

## Part 2: Questions with Answers  

### Chapter 1: Basic Concepts and Computer Evolution  

1. For any two processors to have the same architecture, they must:  
   (a) produce the same number of control signals  
   (b) **support the same set of machine instructions  ✅**\
   (c) have the same number of cache levels on chip  
   (d) Only (a) and (b)  
   (e) Only (b) and (c)

   

2. Which of the following computer facilities does not get involved when updating  
   variable `x` value using the following HLL command: `++x;`  

   (a) **Data movement  ✅**\
   (b) Control  
   (c) Data processing  
   (d) All the above  
   (e) None of the above  

---

### Chapter 2: Performance Issues  

**Problem 2.10**  
A benchmark program is run on a 40 MHz processor. The executed program consists of 100,000 instruction executions, with the following instruction mix and clock cycle count:  

| Instruction Type   | Instruction Count | Cycles per Instruction |
|--------------------|-------------------|-------------------------|
| Integer arithmetic | 45,000            | 1                       |
| Data transfer      | 32,000            | 2                       |
| Floating point     | 15,000            | 2                       |
| Control transfer   | 8,000             | 2                       |

Determine the **effective CPI**, **MIPS rate**, and **execution time** for this program.

**Given:**

$$f = 40 \ \text{MHz}, \quad I_c = 100{,}000$$


**1. Average CPI**

$$
CPI_{avg} = \frac{\sum (CPI_x \cdot I_x)}{I_c}
$$

$$
CPI_{avg} = \frac{45{,}000 \cdot 1 + 32{,}000 \cdot 2 + 15{,}000 \cdot 2 + 8{,}000 \cdot 2}{100{,}000}
$$

$$
CPI_{avg} = 1.55 \ \text{cycles/instruction}
$$


**2. MIPS rate**

$$
MIPS = \frac{f}{CPI_{avg} \cdot 10^6}
$$

$$
MIPS = \frac{40}{1.55} \approx 25.8 \ \text{million instructions/sec}
$$


**3. Execution time**

$$
T_p = \frac{I_c \cdot CPI_{avg}}{f}
$$

$$
T_p = \frac{100{,}000 \cdot 1.55}{40 \times 10^6} = 3.875 \times 10^{-3} \ \text{sec} = 3.875 \ \text{ms}
$$


---

**Problem 2.14**  
The following table shows the execution times (in seconds) for five different benchmark programs on three machines.  

| Benchmark | R     | M     | Z     |
|-----------|-------|-------|-------|
| E         | 417   | 244   | 134   |
| F         | 83    | 70    | 70    |
| H         | 66    | 153   | 135   |
| I         | 39449 | 35527 | 66000 |
| K         | 772   | 368   | 369   |

a. Compute the speed metric for each processor for each benchmark, normalized to machine **R**. That is, the ratio for R are all 1.0. Other ratios are calculated with R treated as the reference system.\
b. Repeat part (a) using **M** as the reference machine.\
c. Which machine is the slowest based on each of the preceding two calculations? \

$$
r_x = \frac{T_{ref}}{T_{sut}}
$$

$$
r_g = \Bigg(\prod_{i=1}^{n} r_{x,i}\Bigg)^{\tfrac{1}{n}}
$$


#### Case 1: Using R as reference machine

| Benchmark | r_M  | r_Z  |
|-----------|------|------|
| E         | 1.71 | 3.11 |
| F         | 1.19 | 1.19 |
| H         | 0.43 | 0.49 |
| I         | 1.11 | 0.60 |
| K         | 2.10 | 2.09 |

$$
r_g(M) = (1.71 \times 1.19 \times 0.43 \times 1.11 \times 2.10)^{\tfrac{1}{5}} \approx 1.15
$$

$$
r_g(Z) = (3.11 \times 1.19 \times 0.49 \times 0.60 \times 2.09)^{\tfrac{1}{5}} \approx 1.18
$$

So, relative to R → both M and Z are faster, with **Z slightly faster than M**.


#### Case 2: Using M as reference machine

| Benchmark | r_R  | r_Z  |
|-----------|------|------|
| E         | 0.59 | 1.82 |
| F         | 0.84 | 1.00 |
| H         | 2.32 | 1.13 |
| I         | 0.90 | 0.54 |
| K         | 0.48 | 1.00 |

$$
r_g(R) = (0.59 \times 0.84 \times 2.32 \times 0.90 \times 0.48)^{\tfrac{1}{5}} \approx 0.87
$$

$$
r_g(Z) = (1.82 \times 1.00 \times 1.13 \times 0.54 \times 1.00)^{\tfrac{1}{5}} \approx 1.02
$$

So, relative to M → **R is slower**, and **Z is slightly faster than M**.

From both calculations:

- **R** is the slowest machine.  
- **Z** is the fastest overall.

> 📘 **Note:** All calculations are approximated to **two decimal places**.

---

**External Problem**  
Given that 30% of a certain program could be executed in parallel, calculate the **speed-up factor** due to executing that program on 8 processors/cores instead of a single processor. 

We use **Amdahl's Law**:

$$
\text{SpeedUp} = \frac{1}{(1 - f) + \frac{f}{N}}
$$


$$
\text{SpeedUp} = \frac{1}{(1 - 0.30) + \frac{0.30}{8}} \approx 1.3559
$$



### 🙏 Credit  
Credit to **Eng. Hisham Abdullah** for the original tutorial material. 