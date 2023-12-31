#String 

```run-python
class Solution:

    def lengthOfLastWord(self, s: str) -> int:

        string = s.split()

        return len(string[-1])

  

sol = Solution()

result = sol.lengthOfLastWord("Hello World")

print(result)
```