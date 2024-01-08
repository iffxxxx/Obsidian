#Graph 
## Problem
There is an undirected **star** graph consisting of `n` nodes labeled from `1` to `n`. A star graph is a graph where there is one **center** node and **exactly** `n - 1` edges that connect the center node with every other node.

You are given a 2D integer array `edges` where each `edges[i] = [ui, vi]` indicates that there is an edge between the nodes `ui` and `vi`. Return the center of the given star graph.

**Example 1:**

![](https://assets.leetcode.com/uploads/2021/02/24/star_graph.png)

**Input:** `edges = [[1,2],[2,3],[4,2]]`
**Output:** 2
**Explanation:** As shown in the figure above, node 2 is connected to every other node, so 2 is the center.

**Example 2:**

**Input:** `edges = [[1,2],[5,1],[1,3],[1,4]]`
**Output:** 1

**Constraints:**

- `3 <= n <= 105`
- `edges.length == n - 1`
- `edges[i].length == 2`
- `1 <= ui, vi <= n`
- `ui != vi`
- The given `edges` represent a valid star graph.

## Code
```run-python
class Solution:
    def findCenter(self, edges: list[list[int]]) -> int:
        if edges[0][0] == edges[1][0] or edges[0][0] == edges[1][1]:
            return edges[0][0]  
        else: return edges[0][1]


sol = Solution()
result = sol.findCenter([[1,2],[5,1],[1,3],[1,4]])
print(result)
```
## Abstract
- ### StarGraph
	  ![[Pasted image 20240109075940.png]]
	그래프 이론에서 별 Sₖ는 완전한 이분 그래프 K1, 하나의 내부 노드와 k 개의 잎이 있는 트리입니다.
- ### Test case
	 n이 최소 3개이기 때문에 노드 2개를 선택하고 그 중 노선이 2개인 것을 선택하면 된다.