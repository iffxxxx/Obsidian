#String #Backtracking #Bit_Manipulation 
## Problem
Given a string `s`, you can transform every letter individually to be lowercase or uppercase to create another string.

Return _a list of all possible strings we could create_. Return the output in **any order**.

**Example 1:**

**Input:** `s = "a1b2"`
**Output:** `["a1b2","a1B2","A1b2","A1B2"]`

**Example 2:**

**Input:** `s = "3z4"`
**Output:** `["3z4","3Z4"]`

**Constraints:**

- `1 <= s.length <= 12`
- `s` consists of lowercase English letters, uppercase English letters, and digits.

## Code
```run-python
class Solution:
    def letterCasePermutation(self, s: str) -> list[str]:
        result = []
        self.backTracking(result, list(s), 0)
        return result

    def backTracking(self, result, chars, i):
        if i == len(chars):
            result.append(''.join(chars))
            return

        c = chars[i]
        if c.isalpha():
            self.backTracking(result, chars, i + 1)
            if c.islower():
                chars[i] = c.upper()
                self.backTracking(result, chars, i + 1)
            elif c.isupper():
                chars[i] = c.lower()
                self.backTracking(result, chars, i + 1)
        else:
            self.backTracking(result, chars, i + 1)

sol = Solution()
result = sol.letterCasePermutation("a1b2")
print(result)
```
## Abstract
Backtracking으로 엔드 케이스를 설정하고 소문자일때와 대문자일때, 숫자일때 고려해서 입력했다.