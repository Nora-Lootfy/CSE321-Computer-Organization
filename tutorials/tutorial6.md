# CSE301 – Computer Organization 
## Tutorial 6

---

**Q1** A two way set associative cache has lines of 16 byte and total size of 8 kbyte. The 64 Mbyte Memory is byte addressable. Show format of main memory address

<div class="answer-area" style="--lines:10;"></div>

**Q2** Consider a memory system that uses 32bit address to address at byte level, plus a cache that uses 64 byte line size  

determine:  
* address format
* no. of addressable units
* no. of blocks in memory
* no. of lines in cache
* size of the tag

for:  
* **direct mapping** with tag size = 20bit
* **associative mapping**
* **4-way set associative mapping** with tag size = 9bit

<div class="answer-area" style="--lines:15;"></div>


**Q3** A byte addressable Main Memory with 16bit address, A 2-way set associative cache that implement a least frequently used (LFU) follow write through policy and cache initially have B5, B6

address format: Tag = 8bit, Set = 5bit, Word = 3bit

Complete the below table and find hit ratio 
<table class="tutorial-table">
<tr>
    <th>Address in DEC</th>
    <th>Address in BIN</th>
    <th>Set</th>
    <th>Tag</th>
    <th>Block</th>
    <th>Read/Write</th>
    <th>Miss/Hit?</th>
    <th>Write Through?</th>
</tr>
<tr>
    <td>44</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td>W</td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td>562</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td>R</td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td>304</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td>W</td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td>563</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td>R</td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td>55</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td>W</td>
    <td></td>
    <td></td>
</tr>
</table>

<div class="answer-area" style="--lines:5;"></div>

**Q4**  
MM: 1 Kbyte  
Cache: 32byte, write back, 4byte block, direct mapping  
Show address format and calculate the access time if T_mem = 10T and T_cache = T for the following sequence of data:  

40, Write  
20, Read  
43, Read  
8, Read  
26, Read  

<div class="answer-area" style="--lines:15;"></div>