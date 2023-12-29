#Array #Dynamic_Programming 

```run-python
class Solution:
    def getRow(self, rowIndex: int) -> list[int]:
        Dp = []
        for i in range(rowIndex + 1):
            temp = [0] * (i + 1)
            Dp.append(temp)
        
        Dp[0][0] = 1
        for y in range(rowIndex + 1):
            for x in range(y + 1):
                if x == 0 or x == y:
                    Dp[y][x] = 1
                else:
                    Dp[y][x] = Dp[y-1][x-1] + Dp[y-1][x]
        
        return Dp[rowIndex]

sol = Solution()
result = sol.getRow(5)
print(result)
```
### Abstract
Dp라고 점화식 찾을 필요가 없다.