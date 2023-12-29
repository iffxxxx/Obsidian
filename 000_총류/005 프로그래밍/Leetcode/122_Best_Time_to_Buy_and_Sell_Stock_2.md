#Array #Dynamic_Programming #Greedy

```run-python
class Solution:
    def maxProfit(self, prices: list[int]) -> int:
        profit = 0
        for i in range(len(prices) - 1):
            if prices[i + 1] > prices[i]:
                profit += prices[i + 1] - prices[i]
                
        return profit

sol = Solution()
prices = [7, 1, 5, 3, 6, 4]
result = sol.maxProfit(prices)
print(result)
```
### Abstract
이득을 볼 수 있는 구조에서는 **최대한 이득**을 봐야함.
$[1, 2, 3]$와 같이 증가하는 부분이면 $[1, 2]$와 $[2, 3]$에서 파는 것과 $[1, 3]$에서 파는 이익이 같다.