# Sequential Circuits: Latches

In this lab, you’ve learned about edge sensitive circuits and explored some of the power therein.

## Rubric

|Item|Description|Value|
|-|-|-|
|Summary Answers|Your writings about what you learned in this lab.|25%|
|Question 1|Your answers to the question|25%|
|Question 2|Your answers to the question|25%|
|Question 3|Your answers to the question|25%|

## Names
Zachery Woodruff, Caden Knox

## Summary
In this lab, we implemented three kinds of flip-flops: A D Flip Flop, a JK Flip Flop, and a
T Flip Flop. Each of these flip flops are built off of each other and are useful in different
scenarios. The key thing that separates a flip flop (specifically a D flip flop) from a latch
is that while the clock signal is high, the data can change to anything, but the output will
remain at whatever it was set to when the clock signal was activated. The other flip flops
have different ways of representing this data.

## Lab Questions

### What is difference between edge and level sensitive circuits?
The output of edge sensitive circuits match the data of the input as long as the clock is high,
while the output of level sensitive circuits only match the input at the moment that the clock
becomes high.

### Why is it important to declare initial state?
Because when the FPGA is programmed it doesn't know the state of any pieces of memory within,
so you need to set it to 0 initially.

### What do edge sensitive circuits let us build?
Edge sensitive circuits are useful for many different applications, one of them being counters.
They allow precise increments on each clock tick, which is not possible with a normal latch.
