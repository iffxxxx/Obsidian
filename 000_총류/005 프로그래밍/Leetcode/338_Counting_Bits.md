#Dynamic_Programming #Bit_Manipulation 
## Problem
Given an integer `n`, return _an array_ `ans` _of length_ `n + 1` _such that for each_ `i` (`0 <= i <= n`)_,_ `ans[i]` _is the **number of**_ `1`_**'s** in the binary representation of_ `i`.

**Example 1:**

**Input:** n = 2
**Output:** `[0,1,1]`
**Explanation:**
0 --> 0
1 --> 1
2 --> 10

**Example 2:**

**Input:** n = 5
**Output:** `[0,1,1,2,1,2]`
**Explanation:**
0 --> 0
1 --> 1
2 --> 10
3 --> 11
4 --> 100
5 --> 101

**Constraints:**

- `0 <= n <= 105`

**Follow up:**

- It is very easy to come up with a solution with a runtime of `O(n log n)`. Can you do it in linear time `O(n)` and possibly in a single pass?
- Can you do it without using any built-in function (i.e., like `__builtin_popcount` in C++)?
## Code
```run-python
class Solution:
    def countBits(self, n: int) -> List[int]:
        dp = [0] * (n + 1)
        if n > 0:
            dp[1] = 1

            for i in range(2, n + 1):
                dp[i] = dp[i // 2] + (i % 2)

        return dp
```
## Abstract
```
0 --> 0 --> 0
1 --> 1 --> 1
2 --> 10 --> 1
3 --> 11 --> 2
4 --> 100 --> 1
5 --> 101 --> 2
6 --> 110 --> 2
7 --> 111 --> 3    #Dp[7] = Dp[4] + Dp[3]
8 --> 1000 --> 1   #Dp[8] = 1
9 --> 1001 --> 2
10 --> 1010 --> 2
11 --> 1011 --> 3  #Dp[11] = Dp[8] + Dp[3]
12 --> 1100 --> 2  #Dp[12] = Dp[8] + Dp[4]
13 --> 1101 --> 3  #Dp[13] = Dp[8] + Dp[5]
14 --> 1110 --> 3  #Dp[14] = Dp[8] + Dp[6]
15 --> 1111 --> 4
16 --> 10000 --> 1
```

```run-python
class Solution:
    def countBits(self, n: int) -> List[int]:
        dp = [0] * (n + 1)
        dp[1] = 1

        for i in range(2, n + 1):
            dp[i] = dp[i // 2] + (i % 2)

        return dp
```
- ### Edge Case:
	  0일때를 고려하지 못했다.
	![[Pasted image 20240123091620.png]]
