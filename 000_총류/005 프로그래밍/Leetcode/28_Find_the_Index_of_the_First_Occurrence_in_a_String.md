#Two_Pointers #String #String_Matching

```run-python
class Solution:
    def strStr(self, haystack: str, needle: str) -> int:
        for i in range(len(haystack)):
            if haystack[i : i + len(needle)] == needle:
                return i
        return -1

sol = Solution()
haystack = "leetcode"
needle = "leet"
result = sol.strStr(haystack, needle)
print(result)
```
