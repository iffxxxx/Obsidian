#Math #Dynamic_Programming #Memoization
## Problem
You are climbing a staircase. It takes `n` steps to reach the top.

Each time you can either climb `1` or `2` steps. In how many distinct ways can you climb to the top?

**Example 1:**

**Input:** `n = 2`
**Output:** 2
**Explanation:** There are two ways to climb to the top.
1. 1 step + 1 step
2. 2 steps

**Example 2:**

**Input:** `n = 3`
**Output:** 3
**Explanation:** There are three ways to climb to the top.
1. 1 step + 1 step + 1 step
2. 1 step + 2 steps
3. 2 steps + 1 step

**Constraints:**

- `1 <= n <= 45`
## Code
```run-python
class Solution:
    def climbStairs(self, n: int) -> int:
        Dp = [0,1,2]

        if n < len(Dp):
            return Dp[n]

        for i in range(3, n+1):
            ith_way = Dp[i-1] + Dp[i-2]
            Dp.append(ith_way)

        return Dp[n]
```

## Abstract
-  점화식 $F(n)=F(n-1)+F(n-2)$
	- **Why:**
		$F(n-2)$에서 두걸음 걷는 것과 $F(n-1)$에서 한걸음 가는 방법밖에 없다.
