#Depth-First_Search #Breadth-First_Search #Union_Find #Graph #Time_Limit_Exceeded
## Problem
There is a **bi-directional** graph with `n` vertices, where each vertex is labeled from `0` to `n - 1` (**inclusive**). The edges in the graph are represented as a 2D integer array `edges`, where each `edges[i] = [ui, vi]` denotes a bi-directional edge between vertex `ui` and vertex `vi`. Every vertex pair is connected by **at most one** edge, and no vertex has an edge to itself.

You want to determine if there is a **valid path** that exists from vertex `source` to vertex `destination`.

Given `edges` and the integers `n`, `source`, and `destination`, return `true` _if there is a **valid path** from_ `source` _to_ `destination`_, or_ `false` _otherwise__._

**Example 1:**

![](https://assets.leetcode.com/uploads/2021/08/14/validpath-ex1.png)

**Input:** `n = 3, edges = [[0,1],[1,2],[2,0]], source = 0, destination = 2`
**Output:** true
**Explanation:** There are two paths from vertex 0 to vertex 2:
- 0 → 1 → 2
- 0 → 2

**Example 2:**

![](https://assets.leetcode.com/uploads/2021/08/14/validpath-ex2.png)

**Input:** `n = 6, edges = [[0,1],[0,2],[3,5],[5,4],[4,3]], source = 0, destination = 5`
**Output:** false
**Explanation:** There is no path from vertex 0 to vertex 5.

**Constraints:**

- `1 <= n <= 2 * 105`
- `0 <= edges.length <= 2 * 105`
- `edges[i].length == 2`
- `0 <= ui, vi <= n - 1`
- `ui != vi`
- `0 <= source, destination <= n - 1`
- There are no duplicate edges.
- There are no self edges.

## Code
```run-python
from collections import deque

class Solution:
    def validPath(self, n: int, edges: list[list[int]], source: int, destination: int) -> bool:
        graph = {i: [] for i in range(n)}
        
        for u, v in edges:
            graph[u].append(v)
            graph[v].append(u)

        visited = set()
        queue = deque([source])

        while queue:
            cur = queue.popleft()
            visited.add(cur)

            if cur == destination:
                return True

            for i in graph[cur]:
                if i not in visited:
                    queue.append(i)

        return False

sol = Solution()
result = sol.validPath(n = 3, edges = [[0,1],[1,2],[2,0]], source = 0, destination = 2)
print(result)
```
## Abstract
BFS로 visited를 확인하면서 노드를 탐색했다.
![[Pasted image 20240109080746.png]]