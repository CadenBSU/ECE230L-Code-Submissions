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

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
It creates timing issues if we dont, and we can end up in an infinite loop.

### What is the meaning of always @(*) in a sensitivity block?
It is used for combinational logic, as opposed to sequential logic. It makes it so you dont have to list inputs over again.

### What importance is memory to digital circuits?
