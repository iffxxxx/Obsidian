#Tree #Depth-First_Search #Breadth-First_Search #Binary_Tree 
## Problem
Given the `root` of a binary tree, return _its maximum depth_.

A binary tree's **maximum depth** is the number of nodes along the longest path from the root node down to the farthest leaf node.

**Example 1:**

![](https://assets.leetcode.com/uploads/2020/11/26/tmp-tree.jpg)

**Input:** `root = [3,9,20,null,null,15,7]`
**Output:** 3

**Example 2:**

**Input:** `root = [1,null,2]`
**Output:** 2

**Constraints:**

- The number of nodes in the tree is in the range `[0, 104]`.
- `-100 <= Node.val <= 100`

## Code
```run-python
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right

class Solution:
    def maxDepth(self, root: TreeNode) -> int:
        if root is None:
            return 0
        return 1 + max(self.maxDepth(root.left), self.maxDepth(root.right))

def build_tree_from_list(lst):
    if not lst:
        return None
    root = TreeNode(lst[0])
    nodes = [root]
    index = 1
    while nodes and index < len(lst):
        node = nodes.pop(0)
        if lst[index] is not None:
            node.left = TreeNode(lst[index])
            nodes.append(node.left)
        index += 1
        if index < len(lst) and lst[index] is not None:
            node.right = TreeNode(lst[index])
            nodes.append(node.right)
        index += 1
    return root

root_list = [1,2,2,None,3,None,3]
root_tree = build_tree_from_list(root_list)

solution = Solution()
result = solution.maxDepth(root_tree)
print(result)
```
## Abstract
재귀를 몇번 하는지 카운트해주면 그 깊이를 알 수 있음.