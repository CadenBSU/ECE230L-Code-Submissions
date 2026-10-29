# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Zachery Woodruff, Caden Knox

## Summary
In this lab we implemented circuits which allows us to store and read data with latches. In part one,
we made a simple d-latch which assigns the output Q to our input D only if the enabler E is pressed. Otherwise,
Q remains at the value it had previously. In part two, we expanded this by making the data 8 bits instead of 1,
and adding an address field which allows us to direct and store this data at specific locations.

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
It creates timing issues if we don't, and we can end up in an infinite loop.

### What is the meaning of always @(*) in a sensitivity block?
It is used for combinational logic, as opposed to sequential logic. It makes it so you don't have to list inputs over again.

### What importance is memory to digital circuits?
Computers need to be able to store information in many different scenarios, so memory is necessary for that.
