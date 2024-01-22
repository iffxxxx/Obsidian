#Array #Dynamic_Programming 
## Problem
Given an integer `numRows`, return the first numRows of **Pascal's triangle**.

In **Pascal's triangle**, each number is the sum of the two numbers directly above it as shown:

![](https://upload.wikimedia.org/wikipedia/commons/0/0d/PascalTriangleAnimated2.gif)

**Example 1:**

**Input:** numRows = 5
**Output:** `[[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]`

**Example 2:**

**Input:** numRows = 1
**Output:** `[[1]]`

**Constraints:**

- `1 <= numRows <= 30`
## Code
```run-python
class Solution:
    def generate(self, numRows: int) -> list[list[int]]:
        ans = [[1]]
        
        for n in range(1, numRows):
            nextRow = [1]
            
            for m in range(n-1):
                nextRow.append(ans[n-1][m]+ans[n-1][m+1])
            
            nextRow.append(1)
            ans.append(nextRow)
            
        return ans

sol = Solution()
result = sol.generate(5)
print(result)
```
