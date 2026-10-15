# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

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
In this lab we created a half subtractor, ones compliment, and twos complement, and
tested the functionality using a Basys3 board.

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
The code in the half adder from the last lab and the half subtractor in this lab is nearly identical, the only
difference being that we invert the value of A in the AND statement after the XOR statement.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
We have two different zero representations: 0000 and 1111, and if you have another 1 at the end you have to loop it back around again.

### 3 - What is the edge case and problem with Two’s Complement number representation?
Two's compliment can only represent numbers in the range -2^(n-1) to 2^(n-1) - 1. Any value outside of this range (which CAN happen if you are not careful) can cause overflow, giving you an incorrect answer, so you need to have a backup plan by detecting overflow first.
