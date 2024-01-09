#Array #Divide_and_Conquer #Tree #Binary_Search_Tree #Binary_Tree #Fail1 

Given an integer array `nums` where the elements are sorted in **ascending order**, convert it to a **height-balanced** binary search tree_.

**Example 1:**

![](https://assets.leetcode.com/uploads/2021/02/18/btree1.jpg)

**Input:** `nums = [-10,-3,0,5,9]`
**Output:** `[0,-3,9,-10,null,5]`
**Explanation:** `[0,-10,5,null,-3,null,9]` is also accepted:
![](https://assets.leetcode.com/uploads/2021/02/18/btree2.jpg)

**Example 2:**

![](https://assets.leetcode.com/uploads/2021/02/18/btree.jpg)

**Input:** `nums = [1,3]`
**Output:** `[3,1]`
**Explanation:** `[1,null,3]` and `[3,1]` are both height-balanced BSTs.

**Constraints:**

- `1 <= nums.length <= 104`
- `-104 <= nums[i] <= 104`
- `nums` is sorted in a **strictly increasing** order.
## Code
```run-python
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
        
class Solution:
    def sortedArrayToBST(self, nums):
        if not nums:
            return None
        mid = len(nums) // 2
        node = TreeNode(nums[mid])
        node.left = self.sortedArrayToBST(nums[:mid])
        node.right = self.sortedArrayToBST(nums[mid + 1:])
        return node

    def inorderTraversal(self, root):
        result = []
        if root:
            result.extend(self.inorderTraversal(root.left))
            result.append(root.val)
            result.extend(self.inorderTraversal(root.right))
        return result

solution = Solution()
result_tree = solution.sortedArrayToBST([-10, -3, 0, 5, 9])
result_values = solution.inorderTraversal(result_tree)
print(result_values)
```
## Abstract
![[Pasted image 20240109071119.png]]
중간값을 기점으로 슬라이싱하여 새로운 노드를 재귀를 통해 연결한다.