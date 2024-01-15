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
- ### Edge case
	n의 범위가 음수도 포함되어 있어 양수인지 확인
`bin(n).count('1')` 2의 거듭제곱인지 여부를 확인 `ex) 1, 10, 100, 1000`

- ### Corner case
	```run-python
	class Solution:
	    def isPowerOfTwo(self, n: int) -> bool:
	        if n <= 0:
	            return False
	        return str(bin(n))[2] == '1'
	```
	 맨앞에만 1이면 된다고 생각했었는데, 3도 110으로 1로 시작해서 오류가 났었다.
