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
	
- ### Edge case
	- dict를 사용하여 입력받는 데이터를 제어
		  dict에 pair를 직접 작성하여 해결
- ### Coner case
	- 열린 괄호가 닫히지 않거나 순서쌍이 안맞을 경우
	- 닫힌 괄호만 있을 경우 ex) `]`
		  `return not len(stack)`
