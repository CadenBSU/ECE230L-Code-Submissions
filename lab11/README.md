# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

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
In this lab we made a modulo counter and a ripple counter. The modulo counter flips a
bit every time the clock signal is pulsed a certain amount of times (6 in our case). To
achieve this, we used out full adder from a couple labs ago, as well as our d-flip-flop
from the last lab, with a new reset functionality. The ripple counter counts how many
times the clock signal is pulsed by chaining together t-flip-flops, and resets the count
when it reaches a specific count (6).

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
Since the output toggles for every time Count reaches the target, a full
cycle takes two toggles, which means you would have to make Count reach
the target twice.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
Since all of the clock signals are connected to the output of the previous t-flip-flop
(the first one being connected to the main clock), flipping the main clock sets the entire
stage array to 1's.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?
We start from a 100MHz clock so we want a divisor of 100,000,000/1,000 = 100,000.
Log2(100,000) is about 16.6, so we could either have 16 or 17 stages.
