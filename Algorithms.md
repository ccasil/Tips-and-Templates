# Algorithm Analysis

## Algorithms

| Algorithm      | Description | Run Time |
| -------------- | ----------- | -------- |
| Mergesort      |
| Quicksort      |             |
| Heapsort       |
| Bubble Sort    |
| Insertion Sort |
| Selection Sort |

## Orders of Growth

| O                | Description                                                                                                                                                                                    | Notes                                                                                                                                                                               |
| ---------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| O(1)             | Describes an algorithm that will always execute in the same time (or space) regardless of the size of the input data set                                                                       |
| O(n)             | Describes an algorithm whose performance will grow linearly and in direct proportion to the size of the input data set                                                                         |
| O(n<sup>2</sup>) | Represents an algorithm whose performance is directly proportional to the square of the size of the input data set                                                                             | This is common with algorithms that involve nested iterations over the data set                                                                                                     |
| O(2n)            | Denotes an algorithm whose growth doubles with each addition to the input data set. The growth curve of an O(2N) function is exponential - starting off very shallow, then rising meteorically |
| O(log n)         | Iterative halving of data sets described in the binary search example produces a growth curve that peaks at the beginning and slowly flattens out as the size of the data sets increase        | An input data set containing 10 items takes one second to complete, a data set containing 100 items takes two seconds, and a data set containing 1000 items will take three seconds |

![Running Time](./assets/runningtime.jpg)

## Master's Theorem

Let a ≥ 1, b ≥ 2, and c > 0 and suppose that T(n) is a function on the non-negative integers that satisfies the recurrence

$T(n) = aT(n/b) + f(n)$ with $T(0) = 0$ and $T(1) = \theta(1)$

where n/b means either ⌊n/b⌋or ⌈n/b⌉

* a ≥ 1 is the number of subproblems
* b ≥ 2is the factor by which the subproblem size decreases
* f(n) ≥ 0 is the work to divide and combine subproblems  
>Case 1: If c < log<sub>b</sub>a, then T(n) = Θ(n<sup>log<sub>b</sub>a</sup>)  
>Case 2: If c = log<sub>b</sub>a, then T(n) = Θ(n<sup>c</sup>log n)  
>Case 3: If c > log<sub>b</sub>a,then T(n) = Θ(n<sup>c</sup>)

## Algorithmic Paradigms

* Greedy: Build up a solution incrementally, myopically optimizing some local criterion
* Divide-and-Conquer: Break up a problem into independent subproblems; solve each subproblem; combine solutions to subproblems to form solution to original problem
* Dynamic Programming: Break up a problem into a series of overlapping subproblems; combine solutions to smaller subproblems to form solution to large subproblem

## References

**[rob-bell](https://rob-bell.net/2009/06/a-beginners-guide-to-big-o-notation/)**  
**[Algorithm Analysis](https://www.geeksforgeeks.org/fundamentals-of-algorithms/#AnalysisofAlgorithms)**  
**[Big O Cheat Sheet](http://bigocheatsheet.com/)**  
**[Algorithm Analysis](https://www.cs.princeton.edu/~wayne/kleinberg-tardos/pdf/02AlgorithmAnalysis.pdf)**  
**[Master's Theorem](https://www.cs.princeton.edu/~wayne/kleinberg-tardos/pdf/05DivideAndConquerII.pdf)**
