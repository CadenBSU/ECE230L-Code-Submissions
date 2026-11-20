# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

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
We took a state machine table, and translated it into a state diagram. After this translation, we then further
translated that same state machine table into a series of KMaps. Using those KMaps, we were able to construct
logic equations, and built a one hot encoded state machine, and a binary state machine. Afterwards, these
machines were tested on the FPGA, and the outputs were compared.

## Lab Questions

### Compare and contrast One Hot and Binary encodings
For one hot encoding vs binary encoding, you are choosing whether you want your state machine to be run off of
a series of flip flops or combinational logic. They both use flip flops, but how they use them differs. With N
being the number of states, one hot uses a N flip flops for its states. Binary uses log2(N) flip flops for its
states. One hot checks only its current state's bit, and binary has to check all the state bits.

### Which method did your team find easier, and why?
We found the one hot method to be slightly easier than the binary one, mainly because it didn't
require making any K-Maps. The code is a bit longer than the code of the binary encoding but
it involved slightly less work.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
The binary encoding would be optimal if you are trying to minimize the complexity and amount of logic gates.
While it does involve extra work to find a minimal boolean function, the work pays off because it
makes it faster and more optimized.
