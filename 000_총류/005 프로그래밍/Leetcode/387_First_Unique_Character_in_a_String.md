#Hash_Table #String #Queue #Counting
## Problem
Given a string `s`, _find the first non-repeating character in it and return its index_. If it does not exist, return `-1`.

**Example 1:**

**Input:** s = "leetcode"
**Output:** 0

**Example 2:**

**Input:** s = "loveleetcode"
**Output:** 2

**Example 3:**

**Input:** s = "aabb"
**Output:** -1

**Constraints:**

- `1 <= s.length <= 105`
- `s` consists of only lowercase English letters.

## Code
```run-python
class Solution:
    def firstUniqChar(self, s: str) -> int:
        mapping = {}
        for i in s:
            if i not in mapping:
                mapping[i] = 1
            else:
                mapping[i] += 1
        
        for ch in mapping:
            if mapping[ch] == 1:
                return s.index(ch)
        return -1

sol = Solution()
result = sol.firstUniqChar('aabb')
print(result)
```
