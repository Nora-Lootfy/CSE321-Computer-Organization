**1)** If two processors have different instruction sets, how can you figure out which one is faster? 

<div class="answer-area" style="--lines:4;"></div>

---

**2)** Performance Processors: The table below describes the performance of two processors, the rAlpha and the c86, and two compilers on a common 'benchmark' program.

<table class="tutorial-table">
<tr>
    <th rowspan="2">-</th>
    <th rowspan="2">GHZ</th>
    <th rowspan="2">Cost</th>
    <th colspan="2">Compiler A</th>
    <th colspan="2">Compiler B</th>
</tr>
<tr>
    <th>Instructions</th>
    <th>Average CPI</th>
    <th>Instructions</th>
    <th>Average CPI</th>
</tr>
<tr>
    <td>rAlpha</td>
    <td>3.4</td>
    <td>$100</td>
    <td>7000</td>
    <td>1.2</td>
    <td>5000</td>
    <td>1.5</td>
</tr>
<tr>
    <td>c86</td>
    <td>2.6</td>
    <td>$100</td>
    <td>1500</td>
    <td>2.2</td>
    <td>1000</td>
    <td>4</td>
</tr>
</table>

a. Which is the best compiler-machine combination?

<div class="answer-area" style="--lines:8;"></div>

Both hardware vendors release quad-core versions of the processor for 1.7x the cost of the single core version. The results on the two new systems:

<table class="tutorial-table">
<tr>
    <th rowspan="2">-</th>
    <th rowspan="2">GHZ</th>
    <th rowspan="2">Cost</th>
    <th colspan="2">Compiler A</th>
    <th colspan="2">Compiler B</th>
</tr>
<tr>
    <th>Instructions</th>
    <th>Average CPI</th>
    <th>Instructions</th>
    <th>Average CPI</th>
</tr>
<tr>
    <td>rAlphaX</td>
    <td>3.4</td>
    <td>$170</td>
    <td>2250/core</td>
    <td>1.5</td>
    <td>1750/core</td>
    <td>1.8</td>
</tr>
<tr>
    <td>c86x4</td>
    <td>2.6</td>
    <td>$170</td>
    <td>625/core</td>
    <td>3.2</td>
    <td>500</td>
    <td>5</td>
</tr>
</table>


b. Assume the benchmarks used are perfectly parallelizable i.e. the cores process equal parts of the program independently and at the same time. Now which combination performs best?

<div class="answer-area" style="--lines:8;"></div>

c. Using the metric (Cycles/s)*Cores/(Dollars^2), which is the best machine? Is this metric useful?

<div class="answer-area" style="--lines:8;"></div>

---

**3)** Consider two different implementations, P1 and P2, of the same instruction set. There are five classes of instructions (A, B, C, D, and E) in the instruction set. The clock rate and CPI of each class is given below.

<table class="tutorial-table">
<tr>
    <th>Machine </th>
    <th>Clock rate</th>
    <th>CPI A</th>
    <th>CPI B</th>
    <th>CPI C</th>
    <th>CPI D</th>
    <th>CPI E</th>
</tr>
<tr>
    <td>P1</td>
    <td>1.0 GHZ</td>
    <td>1</td>
    <td>1</td>
    <td>2</td>
    <td>3</td>
    <td>2</td>
</tr>
<tr>
    <td>P2</td>
    <td>1.5 GHZ</td>
    <td>1</td>
    <td>2</td>
    <td>3</td>
    <td>4</td>
    <td>3</td>
</tr>
</table>

a. Assume that peak performance is defined as the fastest rate that a computer can execute any instruction sequence. What are the peak performances of P1 and P2 expressed in instructions per second?

<div class="answer-area" style="--lines:8;"></div>

b. If the number of instructions executed in a certain program is divided equally among the classes of instructions except for class A, which occurs twice as often as each of the others: Which computer is faster? How much faster is it?

<div class="answer-area" style="--lines:8;"></div>

c. If the number of instructions executed in a certain program is divided equally among the classes of instructions except for class E, which occurs twice as often as each of the others: Which computer is faster? How much faster is it?

<div class="answer-area" style="--lines:8;"></div>

--- 
**4)** The table below shows instruction-type breakdown for different programs. Using this data, you will be exploring the performance tradeoffs with different changes made to a MIPS processor.

<table class="tutorial-table">
<caption>
# Instrcutions
</caption>
<tr>
    <th>Program</th>
    <th>Compute</th>
    <th>Load</th>
    <th>Store</th>
    <th>Branch</th>
    <th>Total</th>
</tr>
<tr>
    <td>P</td>
    <td>1500</td>
    <td>300</td>
    <td>100</td>
    <td>100</td>
    <td>1750</td>
</tr>
</table>

a. Assuming that computes take 1 cycle, loads and store instructions take 10 cycles, and branches take 3 cycles, find the execution time of this program on a 3 GHz MIPS processor.

<div class="answer-area" style="--lines:8;"></div>

b. Assuming that computes take 1 cycle, loads and store instructions take 2 cycles, and branches take 3 cycles, find the execution time of this program on a 3 GHz MIPS processor.

<div class="answer-area" style="--lines:8;"></div>

c. Assuming that computes take 1 cycle, loads and store instructions take 2 cycles, and branches take 3 cycles, what is the speed-up of a program if the number of compute instructions can be reduced by one-half?

<div class="answer-area" style="--lines:8;"></div>

---

**5)** Amdahl's Law: The following table shows the execution time of five routines of a program running on different numbers of processors.


<table class="tutorial-table">
<tr>
    <th># Processors</th>
    <th>Routine A (ms)</th>
    <th>Routine B (ms)</th>
    <th>Routine C (ms)</th>
    <th>Routine D (ms)</th>
    <th>Routine E (ms)</th>
</tr>
<tr>
    <td>16</td>
    <td>4</td>
    <td>14</td>
    <td>2</td>
    <td>12</td>
    <td>2</td>
</tr>
</table>

a. Find the total execution time, and how much it is reduced if the time of routines A, C, & E is improved by 15%.

<div class="answer-area" style="--lines:8;"></div>

b. By how much is the total time reduced if routine B is improved by 10%?

<div class="answer-area" style="--lines:8;"></div>

c. By how much is the total time reduced if routine D is improved by 10%?

<div class="answer-area" style="--lines:8;"></div>

d. Execution time in a multiprocessor system can be split into computing time for the routines plus routing time spent sending data from one processor to another. Consider the execution time and routing time given in the following table. 

<table class="tutorial-table">
<tr>
    <th># Processors</th>
    <th>Routine A (ms)</th>
    <th>Routine B (ms)</th>
    <th>Routine C (ms)</th>
    <th>Routine D (ms)</th>
    <th>Routine E (ms)</th>
    <th>Routing (ms)</th>
</tr>
<tr>
    <td>2</td>
    <td>20</td>
    <td>78</td>
    <td>9</td>
    <td>65</td>
    <td>4</td>
    <td>11</td>
</tr>
<tr>
    <td>4</td>
    <td>12</td>
    <td>44</td>
    <td>4</td>
    <td>34</td>
    <td>2</td>
    <td>13</td>
</tr>
<tr>
    <td>8</td>
    <td>1</td>
    <td>23</td>
    <td>3</td>
    <td>19</td>
    <td>3</td>
    <td>17</td>
</tr>
<tr>
    <td>16</td>
    <td>4</td>
    <td>13</td>
    <td>1</td>
    <td>10</td>
    <td>2</td>
    <td>22</td>
</tr>
</table>


For each doubling of the number of processors, determine the ratio of new to old computing time and the ratio of new to old routing time.

<div class="answer-area" style="--lines:8;"></div>

--- 

**6)** The hypothetical machine has two I/O instructions:  

**0011 Load AC from I/O**  
**0111 Store AC to I/O**  

add instrucion:  
**0101 ADD**  

In these cases, the 12-bit address identifies a particular I/O device. Show the program execution for the following program:  

1. Load AC from device 5.
2. Add contents of memory location 940.
3. Store AC to device 6.

Assume that the next value retrieved from device 5 is 3 and that location 940 contains a value of 2.  



<div class="answer-area" style="--lines:15;"></div>

