#String #Stack

```run-python
class Solution:
    def isValid(self, s: str) -> bool:
        dict = {
            ')': '(',
            '}': '{',
            ']': '['
        }
        stack = []
        for char in s:
            if char not in dict:
                stack.append(char)
            elif not stack or dict[char] != stack.pop():
                return False
        return not len(stack)
        
sol = Solution()
s = "(]"
result = sol.isValid(s)
print(result)
```
## Abstract
- `(` 가 있으면 `)`가 필요하다.
	Stack을 사용하여 해결하였다.
	
- 
