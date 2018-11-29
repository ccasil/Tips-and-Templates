# Big O Notation

O |   Description |   Notes
--- |   --- |   ---
O(1) |   describes an algorithm that will always execute in the same time (or space) regardless of the size of the input data set |
O(N)  |   describes an algorithm whose performance will grow linearly and in direct proportion to the size of the input data set |
O(N2) |   represents an algorithm whose performance is directly proportional to the square of the size of the input data set   | this is common with algorithms that involve nested iterations over the data set
O(2N)  |   denotes an algorithm whose growth doubles with each additon to the input data set. The growth curve of an O(2N) function is exponential - starting off very shallow, then rising meteorically    |
O(log N)  |   iterative halving of data sets described in the binary search example produces a growth curve that peaks at the beginning and slowly flattens out as the size of the data sets increase    | an input data set containing 10 items takes one second to complete, a data set containing 100 items takes two seconds, and a data set containing 1000 items will take three seconds