# Lab 05 - Combinatorial Logic

In this lab, you’ve learned real world applications of digital logic, as well
as how to assemble your own Verilog modules. In addition, you’ve learned how
the constraints file maps your inputs and outputs to real pins on the FPGA.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name
Zachery Woodruff, Caden Knox

## Lab Summary
We created a maxterm and minterm equation for two truth tables, circuit a and circuit b respectfully. We then implemented those equations as circuits in Vivado. After implementation, we defined those circuits in the top.v file, and gave circuit sw[0] through sw[3] as inputs, and had it output a variable called "a_out". We then took that variable and fed it into circuit b as its first input, and then assigned switches sw[4] - sw[6] the other inputs. We assigned circuit a led 0, and circuit b led 1. Then finally, we uncommented sw[0]-sw[6] and led[0] and led[1] in the constraints file. We generated the bitstream, and got a working circuit.

## Lab Questions

### 1 - Explain the role of the Top Level file.

### 2 - Explain the function of the Constraints file.
The constraints file defines which switches and leds are attached to what pins within the board itself. For example, led[0] is pin U16. The constraints file just maps these things together so that the actual output from U16 goes to led[0].
### 3 - Was the selection of Minterm and Maxterm correct for each circuit? What would you have chosen?

