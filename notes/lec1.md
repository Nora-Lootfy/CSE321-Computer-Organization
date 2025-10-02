# CSE301 – Computer Organization  
## Lecture 1 Notes

---

### Architecture vs. Organization  

**Architecture**  
- The **conceptual (functional) design** of the computer system as seen by the programmer.  
- Describes **what the system does**.  
- Examples:  
  - Instruction Set Architecture (ISA)  
  - Data types  
  - Registers  
  - Addressing modes  
  - I/O mechanisms visible to software  

**Organization**  
- The **implementation details** of the architecture.  
- Describes **how the system is built internally**.  
- Examples:  
  - Datapath, control signals  
  - Memory hierarchy  
  - Pipelining  
  - Physical arrangement of components  

**Critical Thinking💡**  
- When we say *single-cycle* or *multi-cycle*, is that an **architecture** or an **organization**?  
- Is MIPS considered an **architecture** or an **organization**?  

---

### Structure vs. Function  

**Structure**  
- How the components are related to each other.  

**Function**  
- The operation of individual components.  
- Four core functions of any computer:  
  1. Data Processing  
  2. Data Storage  
  3. Data Movement  
  4. Control  

---

### Computer Evolution and Performance  

**Parameters affecting performance:**  
1. System clock speed (<math xmlns="http://www.w3.org/1998/Math/MathML" display="inline">
  <mi>f</mi>
</math>)  
2. Instruction count (<math xmlns="http://www.w3.org/1998/Math/MathML" display="inline">
  <msub><mi>I</mi><mi>c</mi></msub>
</math>)  
3. Cycles per instruction (<math xmlns="http://www.w3.org/1998/Math/MathML" display="inline">
  <mi>CPI</mi>
</math>)  


Since CPI varies across instructions, we use the **average CPI**:  

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
</math>


---

**Performance Metrics**

1. **Instructions per second (IPS, R<sub>i</sub>)**  

<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <mrow>
    <msub><mi>T</mi><mi>i</mi></msub>
    <mo>=</mo>
    <mfrac>
      <mi>CPI</mi>
      <mi>f</mi>
    </mfrac>
    <mo>,</mo>
    <msub><mi>R</mi><mi>i</mi></msub>
    <mo>=</mo>
    <mfrac>
      <mn>1</mn>
      <msub><mi>T</mi><mi>i</mi></msub>
    </mfrac>
    <mtext> instructions/sec</mtext>
  </mrow>
</math>


2. **Million instructions per second (MIPS, \(R_m\))**  

<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <mrow>
    <msub><mi>R</mi><mi>m</mi></msub>
    <mo>=</mo>
    <mfrac>
      <msub><mi>R</mi><mi>i</mi></msub>
      <msup><mn>10</mn><mn>6</mn></msup>
    </mfrac>
  </mrow>
</math>


3. **Programs per second (PPS, R<sub>p</sub>)**  

<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <mrow>
    <msub><mi>T</mi><mi>p</mi></msub>
    <mo>=</mo>
    <msub><mi>T</mi><mi>i</mi></msub>
    <mo>&#x22C5;</mo>
    <msub><mi>I</mi><mi>c</mi></msub>
    <mo>,</mo>
    <msub><mi>R</mi><mi>p</mi></msub>
    <mo>=</mo>
    <mfrac>
      <mn>1</mn>
      <msub><mi>T</mi><mi>p</mi></msub>
    </mfrac>
  </mrow>
</math>

<div class="info">
  <strong>ℹ️ Info:</strong> <br> 
  These performance metrics are valid for analyzing a <b>single system</b>.<br>
  They cannot be directly used to compare <b>different systems</b> because of differences in manufacturers, architectures, and instruction sets.<br>
  To compare across systems, we use <b>benchmark programs</b>.
</div>

---

### Benchmark Programs  

- Written in high-level language.  
- Designed in different styles and widely distributed.  
- Used to compare machines with a common workload.  

Definitions:  
- <math xmlns="http://www.w3.org/1998/Math/MathML" display="inline"><msub><mi>T</mi><mi>ref</mi></msub></math> = runtime on the **reference machine**  
- <math xmlns="http://www.w3.org/1998/Math/MathML" display="inline"><msub><mi>T</mi><mi>sut</mi></msub></math> = runtime on the **system under test**  

Relative speed:  

<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <mrow>
    <msub><mi>r</mi><mi>x</mi></msub>
    <mo>=</mo>
    <mfrac>
      <msub><mi>T</mi><mi>ref</mi></msub>
      <msub><mi>T</mi><mi>sut</mi></msub>
    </mfrac>
  </mrow>
</math>


Geometric mean speed:  

<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <msub><mi>r</mi><mi>g</mi></msub>
  <mo>=</mo>
  <msup>
    <mrow>
      <mo>(</mo>
      <mrow>
        <munderover>
          <mo>&#x220F;</mo>
          <mi>i</mi>
          <mi>n</mi>
        </munderover>
        <msub><mi>r</mi><mrow><mi>x</mi><mo>,</mo><mi>i</mi></mrow></msub>
      </mrow>
      <mo>)</mo>
    </mrow>
    <mfrac><mn>1</mn><mi>n</mi></mfrac>
  </msup>
</math>


<div class="info">
  <strong>ℹ️ Info:</strong> <br> 
  The larger the <math xmlns="http://www.w3.org/1998/Math/MathML" display="inline"><msub><mi>r</mi><mi>g</mi></msub></math>, the faster the <b>system under test</b> compared to the reference machine.
</div>

---

### Amdahl's Law  

If a program takes time \(T\) on a single processor and only a fraction \(f\) can be executed in parallel on \(N\) processors:  

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
</math>


Maximum speedup (as <math xmlns="http://www.w3.org/1998/Math/MathML" display="inline"><mi>N</mi><mo>→</mo><mo>&#x221E;</mo></math>):  


<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <mrow>
    <mrow>
      <mtext>SpeedUp</mtext>
      <msub><mo></mo><mi>max</mi></msub>
    </mrow>
    <mo>=</mo>
    <mfrac>
      <mn>1</mn>
      <mrow>
        <mn>1</mn>
        <mo>-</mo>
        <mi>f</mi>
      </mrow>
    </mfrac>
  </mrow>
</math>

