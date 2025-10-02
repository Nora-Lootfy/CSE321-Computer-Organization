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
   (b) **support the same set of machine instructions  ✅**  
   (c) have the same number of cache levels on chip  
   (d) Only (a) and (b)  
   (e) Only (b) and (c)  

   

2. Which of the following computer facilities does not get involved when updating  
   variable `x` value using the following HLL command: `++x;`  

   (a) **Data movement  ✅**  
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

<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <mrow>
    <mi>f</mi>
    <mo>=</mo>
    <mn>40</mn>
    <mtext> MHz</mtext>
    <mo>,</mo>
    <msub><mi>I</mi><mi>c</mi></msub>
    <mo>=</mo>
    <mn>100000</mn>
  </mrow>
</math><br>

**1. Average CPI**

<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <mrow>
    <msub><mi>CPI</mi><mi>avg</mi></msub>
    <mo>=</mo>
    <mfrac>
      <mrow>
        <mo>&#x2211;</mo>
        <mrow>
          <msub><mi>CPI</mi><mi>x</mi></msub>
          <mo>&#x22C5;</mo>
          <msub><mi>I</mi><mi>x</mi></msub>
        </mrow>
      </mrow>
      <msub><mi>I</mi><mi>c</mi></msub>
    </mfrac>
  </mrow>
</math><br>


<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <mrow>
    <msub><mi>CPI</mi><mi>avg</mi></msub>
    <mo>=</mo>
    <mfrac>
      <mrow>
        <mn>45000</mn>
        <mo>&#x22C5;</mo>
        <mn>1</mn>
        <mo>+</mo>
        <mn>32000</mn>
        <mo>&#x22C5;</mo>
        <mn>2</mn>
        <mo>+</mo>
        <mn>15000</mn>
        <mo>&#x22C5;</mo>
        <mn>2</mn>
        <mo>+</mo>
        <mn>8000</mn>
        <mo>&#x22C5;</mo>
        <mn>2</mn>
      </mrow>
      <mn>100000</mn>
    </mfrac>
  </mrow>
</math><br>


<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <mrow>
    <msub><mi>CPI</mi><mi>avg</mi></msub>
    <mo>=</mo>
    <mn>1.55</mn>
    <mtext> cycles/instruction</mtext>
  </mrow>
</math><br>


**2. MIPS rate**

<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <mrow>
    <mi>MIPS</mi>
    <mo>=</mo>
    <mfrac>
      <mi>f</mi>
      <mrow>
        <msub><mi>CPI</mi><mi>avg</mi></msub>
        <mo>&#x22C5;</mo>
        <msup><mn>10</mn><mn>6</mn></msup>
      </mrow>
    </mfrac>
  </mrow>
</math><br>



<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <mrow>
    <mi>MIPS</mi>
    <mo>=</mo>
    <mfrac>
      <mn>40</mn>
      <mn>1.55</mn>
    </mfrac>
    <mo>≈</mo>
    <mn>25.8</mn>
    <mtext> million instructions/sec</mtext>
  </mrow>
</math><br>



**3. Execution time**

<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <mrow>
    <msub><mi>T</mi><mi>p</mi></msub>
    <mo>=</mo>
    <mfrac>
      <mrow>
        <msub><mi>I</mi><mi>c</mi></msub>
        <mo>&#x22C5;</mo>
        <msub><mi>CPI</mi><mi>avg</mi></msub>
      </mrow>
      <mi>f</mi>
    </mfrac>
  </mrow>
</math><br>


<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <mrow>
    <msub><mi>T</mi><mi>p</mi></msub>
    <mo>=</mo>
    <mfrac>
      <mrow>
        <mn>100000</mn>
        <mo>&#x22C5;</mo>
        <mn>1.55</mn>
      </mrow>
      <mrow>
        <mn>40</mn>
        <mo>&#x22C5;</mo>
        <msup><mn>10</mn><mn>6</mn></msup>
      </mrow>
    </mfrac>
    <mo>=</mo>
    <mn>3.875</mn>
    <mo>&#xD7;</mo>
    <msup><mn>10</mn><mrow><mo>-</mo><mn>3</mn></mrow></msup>
    <mtext> sec</mtext>
    <mo>=</mo>
    <mn>3.875</mn>
    <mtext> ms</mtext>
  </mrow>
</math><br>



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

<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <mrow>
    <msub><mi>r</mi><mi>x</mi></msub>
    <mo>=</mo>
    <mfrac>
      <msub><mi>T</mi><mi>ref</mi></msub>
      <msub><mi>T</mi><mi>sut</mi></msub>
    </mfrac>
  </mrow>
</math><br>

<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <msub><mi>r</mi><mi>g</mi></msub>
  <mo>=</mo>
  <msup>
    <mrow>
      <mo>(</mo>
      <mrow>
        <munderover>
          <mo>&#x220F;</mo> <!-- Product symbol ∏ -->
          <mi>i</mi>
          <mi>n</mi>
        </munderover>
        <msub><mi>r</mi><mrow><mi>x</mi><mo>,</mo><mi>i</mi></mrow></msub>
      </mrow>
      <mo>)</mo>
    </mrow>
    <mfrac><mn>1</mn><mi>n</mi></mfrac>
  </msup>
</math><br>



#### Case 1: Using R as reference machine

| Benchmark | r_M  | r_Z  |
|-----------|------|------|
| E         | 1.71 | 3.11 |
| F         | 1.19 | 1.19 |
| H         | 0.43 | 0.49 |
| I         | 1.11 | 0.60 |
| K         | 2.10 | 2.09 |

<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <msub><mi>r</mi><mrow><mi>g</mi><mo>(</mo><mi>M</mi><mo>)</mo></mrow></msub>
  <mo>=</mo>
  <msup>
    <mrow>
      <mo>(</mo>
      <mn>1.71</mn>
      <mo>&#xD7;</mo>
      <mn>1.19</mn>
      <mo>&#xD7;</mo>
      <mn>0.43</mn>
      <mo>&#xD7;</mo>
      <mn>1.11</mn>
      <mo>&#xD7;</mo>
      <mn>2.10</mn>
      <mo>)</mo>
    </mrow>
    <mfrac><mn>1</mn><mn>5</mn></mfrac>
  </msup>
  <mo>≈</mo>
  <mn>1.15</mn>
</math><br>


<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <msub><mi>r</mi><mrow><mi>g</mi><mo>(</mo><mi>Z</mi><mo>)</mo></mrow></msub>
  <mo>=</mo>
  <msup>
    <mrow>
      <mo>(</mo>
      <mn>3.11</mn>
      <mo>&#xD7;</mo>
      <mn>1.19</mn>
      <mo>&#xD7;</mo>
      <mn>0.49</mn>
      <mo>&#xD7;</mo>
      <mn>0.60</mn>
      <mo>&#xD7;</mo>
      <mn>2.09</mn>
      <mo>)</mo>
    </mrow>
    <mfrac><mn>1</mn><mn>5</mn></mfrac>
  </msup>
  <mo>≈</mo>
  <mn>1.18</mn>
</math><br>


So, relative to R → both M and Z are faster, with **Z slightly faster than M**.


#### Case 2: Using M as reference machine

| Benchmark | r_R  | r_Z  |
|-----------|------|------|
| E         | 0.59 | 1.82 |
| F         | 0.84 | 1.00 |
| H         | 2.32 | 1.13 |
| I         | 0.90 | 0.54 |
| K         | 0.48 | 1.00 |

<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <msub><mi>r</mi><mrow><mi>g</mi><mo>(</mo><mi>R</mi><mo>)</mo></mrow></msub>
  <mo>=</mo>
  <msup>
    <mrow>
      <mo>(</mo>
      <mn>0.59</mn>
      <mo>&#xD7;</mo>
      <mn>0.84</mn>
      <mo>&#xD7;</mo>
      <mn>2.32</mn>
      <mo>&#xD7;</mo>
      <mn>0.90</mn>
      <mo>&#xD7;</mo>
      <mn>0.48</mn>
      <mo>)</mo>
    </mrow>
    <mfrac><mn>1</mn><mn>5</mn></mfrac>
  </msup>
  <mo>≈</mo>
  <mn>0.87</mn>
</math><br>


<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <msub><mi>r</mi><mrow><mi>g</mi><mo>(</mo><mi>Z</mi><mo>)</mo></mrow></msub>
  <mo>=</mo>
  <msup>
    <mrow>
      <mo>(</mo>
      <mn>1.82</mn>
      <mo>&#xD7;</mo>
      <mn>1.00</mn>
      <mo>&#xD7;</mo>
      <mn>1.13</mn>
      <mo>&#xD7;</mo>
      <mn>0.54</mn>
      <mo>&#xD7;</mo>
      <mn>1.00</mn>
      <mo>)</mo>
    </mrow>
    <mfrac><mn>1</mn><mn>5</mn></mfrac>
  </msup>
  <mo>≈</mo>
  <mn>1.02</mn>
</math><br>


So, relative to M → **R is slower**, and **Z is slightly faster than M**.

From both calculations:

- **R** is the slowest machine.  
- **Z** is the fastest overall.

<div class="info">
  <strong>ℹ️ Info:</strong> <br> 
  All calculations are approximated to <b>two decimal places</b>
</div>

---

**External Problem**  
Given that 30% of a certain program could be executed in parallel, calculate the **speed-up factor** due to executing that program on 8 processors/cores instead of a single processor. 

We use **Amdahl's Law**:

<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <mrow>
    <mtext>SpeedUp</mtext>
    <mo>=</mo>
    <mfrac>
      <mn>1</mn>
      <mrow>
        <mo>(</mo>
        <mn>1</mn>
        <mo>-</mo>
        <mi>f</mi>
        <mo>)</mo>
        <mo>+</mo>
        <mfrac><mi>f</mi><mi>N</mi></mfrac>
      </mrow>
    </mfrac>
  </mrow>
</math><br><br>

<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <mrow>
    <mtext>SpeedUp</mtext>
    <mo>=</mo>
    <mfrac>
      <mn>1</mn>
      <mrow>
        <mo>(</mo>
        <mn>1</mn>
        <mo>-</mo>
        <mn>0.30</mn>
        <mo>)</mo>
        <mo>+</mo>
        <mfrac><mn>0.30</mn><mn>8</mn></mfrac>
      </mrow>
    </mfrac>
    <mo>≈</mo>
    <mn>1.3559</mn>
  </mrow>
</math><br>




### 🙏 Credit  
Credit to **Eng. Hisham Abdullah** for the original tutorial material. 