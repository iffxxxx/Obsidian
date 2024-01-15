#Math #String 
## Problem
Given an integer `columnNumber`, return _its corresponding column title as it appears in an Excel sheet_.

For example:

```
A -> 1
B -> 2
C -> 3
...
Z -> 26
AA -> 27
AB -> 28 
...
```

**Example 1:**

**Input:** `columnNumber = 1`
**Output:** "A"

**Example 2:**

**Input:** `columnNumber = 28`
**Output:** "AB"

**Example 3:**

**Input:** `columnNumber = 701`
**Output:** "ZY"

**Constraints:**

- `1 <= columnNumber <= 231 - 1`

## Code
```run-python
class Solution:
    def convertToTitle(self, columnNumber: int) -> str:
        result = []

        while columnNumber:
            columnNumber -= 1
            m, n = divmod(columnNumber, 26)
            result.append(chr(n + ord('A')))
            columnNumber = m
        return ''.join(result[::-1])

sol = Solution() 
result1 = sol.convertToTitle(1) 
result2 = sol.convertToTitle(27) 
result3 = sol.convertToTitle(701) 

print(result1) 
print(result2) 
print(result3)
```
