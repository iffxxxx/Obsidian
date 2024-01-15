#Hash_Table #Math #Two_Pointers 
## Problem
Write an algorithm to determine if a number `n` is happy.

A **happy number** is a number defined by the following process:

- Starting with any positive integer, replace the number by the sum of the squares of its digits.
- Repeat the process until the number equals 1 (where it will stay), or it **loops endlessly in a cycle** which does not include 1.
- Those numbers for which this process **ends in 1** are happy.

Return `true` _if_ `n` _is a happy number, and_ `false` _if not_.

**Example 1:**

**Input:** n = 19
**Output:** true
**Explanation:**
12 + 92 = 82
82 + 22 = 68
62 + 82 = 100
12 + 02 + 02 = 1

**Example 2:**

**Input:** n = 2
**Output:** false

**Constraints:**

- `1 <= n <= 231 - 1`
## Code
```run-python
class Solution:
    def isHappy(self, n: int) -> bool:
        vis = set([n])
        while True:
            n = sum([int(c) ** 2 for c in str(n)])
            if n == 1:
                return True
            if n in vis:
                return False
            vis.add(n)
```
## Abstract
결과가 1 >> True
무한 루프를 돌면서 혹시나 주기가 반복될 경우 False 출력