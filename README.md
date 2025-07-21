# ARITHMETIC-LOGIC-UNIT-ALU

COMPANY: CODTECH IT SOLUTIONS

NAME: ADITI ATTAL

INTERN ID: CITS0D695

DOMAIN: VLSI

DURATION: 6 WEEKS

MENTOR: NEELA SANTOSH

DESCRIPTION: 
1. Objective and Platform:
The main goal of this project was to design and simulate a simple 4-bit Arithmetic Logic Unit (ALU) using the Verilog Hardware Description Language (HDL). The design was implemented and tested on EDA Playground, an online platform that allows users to write, compile, simulate, and visualize Verilog code. The ALU supports basic operations including addition, subtraction, bitwise AND, OR, and NOT—forming the foundational building blocks of a digital processor’s execution unit.

2. ALU Design and Functionality:
The ALU was coded in a Verilog file named alu.v. It takes two 4-bit inputs (A and B) and uses a 3-bit control signal (ALU_Sel) to determine the operation to perform. Depending on the value of ALU_Sel, the ALU executes one of the following: addition (000), subtraction (001), AND (010), OR (011), or NOT (100, applied to A). If an unsupported control signal is provided, the ALU defaults its output to 0000, ensuring predictable behavior for undefined operations.

3. Testbench and Simulation Setup:
A comprehensive testbench (alu_tb.v) was written to simulate the ALU’s behavior. It instantiates the ALU and provides a series of test vectors that change inputs and select lines over time. The testbench uses $monitor to print results to the console and includes $dumpfile and $dumpvars to generate a waveform file (alu_waveform.vcd). These features allow the designer to validate the ALU both numerically and visually during simulation.

4. Simulation Results and Waveform Analysis:
The simulation results confirmed correct ALU behavior across all defined operations. For example, 3 + 1 resulted in 4, and 12 & 10 yielded 8. The waveform output, viewable using GTKWave in EDA Playground, displayed changes in input and output signals over time, making it easy to verify that each operation was performed correctly. Invalid control signals were also tested and successfully forced the output to default to zero, demonstrating the design’s robustness.

5. Conclusion and Learning Outcome:
This project successfully demonstrated the design, implementation, and simulation of a basic 4-bit ALU. It reinforced core digital design principles such as modular combinational logic, proper testbench development, and waveform-based debugging. By using EDA Playground and GTKWave, the task highlighted how simulation tools assist in verifying the functionality of hardware designs. This ALU serves as a solid foundation for understanding more advanced digital systems and processor architecture.

OUTPUT: 

<img width="1847" height="691" alt="Image" src="https://github.com/user-attachments/assets/75ac3840-05b9-45a1-bb33-4e8c320c9a30" />

