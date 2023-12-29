#Array #Dynamic_Programming #Matrix

```run-python
class Solution:
    def minPathSum(self, grid: list[list[int]]) -> int:
        for y in range(1, len(grid)):
            grid[y][0] += grid[y-1][0]
            
        for x in range(1, len(grid[0])):
            grid[0][x] += grid[0][x-1]

        for y in range(1, len(grid)):
            for x in range(1, len(grid[0])):
                grid[y][x] += min(grid[y-1][x], grid[y][x-1])

        return grid[-1][-1]

sol = Solution()
grid = [[1,2,3],[4,5,6]]
result = sol.minPathSum(grid)
print(result)
```
### Abstract
각 칸까지 도달할 수 있는 최솟값으로 업데이트