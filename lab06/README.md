# Number Theory: Addition

In this lab you've learned the basics of number theory as it relates to addition.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name
Zachery Woodruff, Caden Knox

## Lab Questions

### 1 - How might you add more than two bits together?
We would string together more full adders together. With the LSB adder having a Cin of zero, and every sequencial adder afterwards getting the Cout of the previous adder as a Cin.

### 2 - What is the importance of the XOR gate in an adder?
The XOR gate in an adder matches the logic to calculate the sum of two bits without considering
the carryout value. It effectively functions as a modulo 2 operation, which is ideal for binary
addition.

### 3 - What is the largest number a two bit adder can handle? What happens when you go over?
The largest number would be six, since the highest number you can represent with 2 bits, is 3. So, 3 + 3 is six, OR, 11 + 11 = 1110
