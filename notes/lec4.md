
# CSE301 – Computer Organization
## Lecture 4 – Single-Cycle Processor

---

###  Instruction Stages

Each instruction passes through the following stages:
<img src="../images/lec4/instructionStages.png" width="700">



###  Single-Cycle Processor

* Executes **each instruction in one clock cycle**.
* The **clock period** must be long enough to accommodate the **slowest instruction**.
* **Drawback:** Overall performance is limited by the slowest instruction.



### Building the Datapath

#### 1. Instruction Fetch

<img src="../images/lec4/InstructionFetch.png" width="700">

#### 2. Adding R-Type Instructions

<img src="../images/lec4/R-type.png" width="700">

#### 3. Adding I-Type Instructions (ALU Operations)

<img src="../images/lec4/addALU.png" width="700">

#### 4. Adding I-Type Instructions (Load & Store)

<img src="../images/lec4/addLoadStore.png" width="700">

#### 5. Adding I-Type Instructions (Branch)

<img src="../images/lec4/addBranch.png" width="700">

#### 6. Adding J-Type Instructions

<img src="../images/lec4/addJ.png" width="650">



### Control Unit

<img src="../images/lec4/controlUnit.png" width="700">



### Performance Considerations

* The **clock period** is determined by the **longest instruction delay**.
* The **critical path** typically occurs in **load instructions**:

  ```
  Instruction memory → Register file → ALU → Data memory → Register file
  ```
* It’s **impractical** to change the clock period per instruction.
* Violates the design principle:

  > “Make the common case fast.”
