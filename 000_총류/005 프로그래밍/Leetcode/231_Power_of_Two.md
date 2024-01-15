#Math #Bit_Manipulation #Recursion 
## Problem
Given an integer `n`, return _`true` if it is a power of two. Otherwise, return `false`_.

An integer `n` is a power of two, if there exists an integer `x` such that `n == 2x`.

**Example 1:**

**Input:** n = 1
**Output:** true
**Explanation:** 20 = 1

**Example 2:**

**Input:** n = 16
**Output:** true
**Explanation:** 24 = 16

**Example 3:**

**Input:** n = 3
**Output:** false

**Constraints:**

- `-231 <= n <= 231 - 1`
## Code
```run-python
class Solution:
    def isPowerOfTwo(self, n: int) -> bool:
        if n <= 0:
            return False
        return bin(n).count('1') == 1
```

## Abstract
`bin(n).count('1')` 2의 거듭제곱인지 여부를 확인