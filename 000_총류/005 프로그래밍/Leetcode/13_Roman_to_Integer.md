#Hash_Table #Math #String

```run-python
class Solution:
    def romanToInt(self, s: str) -> int:
        num_dict = {'I': 1, 'V': 5, 'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000}
        total = num_dict[s[-1]]

        for i in range(len(s) - 1):
            if num_dict[s[i]] >= num_dict[s[i + 1]]:
                total += num_dict[s[i]]
            else:
                total -= num_dict[s[i]]

        return total

sol = Solution()
result = sol.romanToInt("MCMXCIV")
print(result)

```

### Abstract
![[Pasted image 20231231225156.png|500]]
좌변이 우변보다 작을 경우 음수로 변환해주면 된다.