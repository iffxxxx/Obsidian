#Tree #Depth-First_Search #Breadth-First_Search #Binary_Tree 
## Problem
Given the `root` of a binary tree, _check whether it is a mirror of itself_ (i.e., symmetric around its center).

**Example 1:**

![](https://assets.leetcode.com/uploads/2021/02/19/symtree1.jpg)

**Input:** `root = [1,2,2,3,4,4,3]`
**Output:** true

**Example 2:**

![](https://assets.leetcode.com/uploads/2021/02/19/symtree2.jpg)

**Input:** `root = [1,2,2,null,3,null,3]`
**Output:** false

**Constraints:**

- The number of nodes in the tree is in the range `[1, 1000]`.
- `-100 <= Node.val <= 100`

**Follow up:** Could you solve it both recursively and iteratively?

## Code
```run-python
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right

class Solution:
    def isSymmetric(self, root: TreeNode) -> bool:
        return self.Compare(root, root)

    def Compare(self, p: TreeNode, q: TreeNode) -> bool:
        if not p or not q:
            return p == q
        return p.val == q.val and self.Compare(p.left, q.right) and self.Compare(p.right, q.left)

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
result = solution.isSymmetric(root_tree)
print(result)
```
## Abstract
[100번 문제](100_Same Tree)에서 두개의 트리를 비교하는 것에서 힌트를 얻었다.
하지만 다음과 같은 문제점을 발견했다.
- ### Test Case
	`return p.val == q.val and self.Compare(p.left, q.right)`
	![[Pasted image 20240109043027.png]]
	 너무 간단하게 왼쪽과 오른쪽만 비교하면 될 것이라 생각했다.
	 하위 트리에서 확인하지 못하는 부분이 생겼다.