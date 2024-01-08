#Tree #Depth-First_Search #Breadth-First_Search #Binary_Tree 
## Problem
Given a binary tree, find its minimum depth.

The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.

**Note:** A leaf is a node with no children.

**Example 1:**

![](https://assets.leetcode.com/uploads/2020/10/12/ex_depth.jpg)

**Input:** `root = [3,9,20,null,null,15,7]`
**Output:** 2

**Example 2:**

**Input:** root = `[2,null,3,null,4,null,5,null,6]`
**Output:** 5

**Constraints:**

- The number of nodes in the tree is in the range `[0, 105]`.
- `-1000 <= Node.val <= 1000`
## Code
```run-python
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right

class Solution:
    def minDepth(self, root: TreeNode) -> int:
        if not root:
            return 0
        if not root.left and not root.right:
            return 1

        if not root.left:
            return 1 + self.minDepth(root.right)
        elif not root.right:
            return 1 + self.minDepth(root.left)

        return 1 + min(self.minDepth(root.left), self.minDepth(root.right))


solution = Solution()
root = TreeNode(3, TreeNode(9), TreeNode(20, TreeNode(15), TreeNode(7)))
result = solution.minDepth(root)
print(result)
```
## Abstract
- ### Test case
	 [104번 문제](104_Maximum_Depth_of_Binary_Tree#Code)에서 max값을 min값으로 바꿔주면 될 것이라 생각했는데 1자로 되어있는 트리를 고려하지 못했다.
	 `return 1 + min(self.minDepth(root.left), self.minDepth(root.right))`
	 ![[Pasted image 20240109071712.png]]
	 왼쪽 노드가 없다면 오른쪽을 탐색할 수 있도록 설정했다.