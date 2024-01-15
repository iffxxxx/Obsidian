#Math #String
## Problem
Given a string `columnTitle` that represents the column title as appears in an Excel sheet, return _its corresponding column number_.

For example:

A -> 1
B -> 2
C -> 3
...
Z -> 26
AA -> 27
AB -> 28 
...

**Example 1:**

**Input:** columnTitle = "A"
**Output:** 1

**Example 2:**

**Input:** columnTitle = "AB"
**Output:** 28

**Example 3:**

**Input:** columnTitle = "ZY"
**Output:** 701

**Constraints:**

- `1 <= columnTitle.length <= 7`
- `columnTitle` consists only of uppercase English letters.
- `columnTitle` is in the range `["A", "FXSHRXW"]`.

## Code
```run-python
class Solution:
    def titleToNumber(self, columnTitle: str) -> int:
        result = 0
        for char in columnTitle:
            result = result * 26 + (ord(char) - ord('A') + 1)
        return result

sol = Solution()
result1 = sol.titleToNumber("A")
result2 = sol.titleToNumber("AB")
result3 = sol.titleToNumber("ZY")

print(result1)  # 1
print(result2)  # 28
print(result3)  # 701
```
## Abstract
`ord(char) - ord('A') + 1`은 각 문자를 1부터 26까지의 숫자로 변환하는 부분