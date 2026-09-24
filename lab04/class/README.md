# Lab 04 - SOP/POS and KMaps

In this lab, you’ve learned how to apply KMaps, Sum Of Products and Products of
sums to simplify digital logic equations. Then, you’ve proven out that they work
using an implemented design on your Basys3 boards.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary

In this lab we implemented a function in Vivado using a truth table. We also generated
minterm and maxterm functions from this truth table and implemented them in Vivado in
separate files. Finally, we successfully tested this functionality on real hardware.

## Lab Questions

### Why are the groups of 1’s (or 0’s) that we select in the KMap able to go across edges?
In order for a K-Map to be valid, only one bit between neighboring cells can change,
and that rule is not broken when groups span across edges. This is why cells are considered
adjacent if they are on opposite ends on either axis of the table.

### Why are the names Sum of Products and Products of Sums?

### Open the test.v file – how are we able to check that the signals match using XOR?

