#Linked_List #Two_Pointers #Stack #Recursion 
## Problem
Given the `head` of a singly linked list, return `true` _if it is a palindrome_ _or_ `false` _otherwise_.

**Example 1:**

![](https://assets.leetcode.com/uploads/2021/03/03/pal1linked-list.jpg)

**Input:** `head = [1,2,2,1]`
**Output:** true

**Example 2:**

![](https://assets.leetcode.com/uploads/2021/03/03/pal2linked-list.jpg)

**Input:** `head = [1,2]`
**Output:** false

**Constraints:**

- The number of nodes in the list is in the range `[1, 105]`.
- `0 <= Node.val <= 9`

**Follow up:** Could you do it in `O(n)` time and `O(1)` space?

## Code
```run-python
class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

class Solution:
    def isPalindrome(self, head: Optional[ListNode]) -> bool:
        temp = []

        if head is None:
            return True

        while head.next != None:
            temp.append(head.val)
            head = head.next

        temp.append(head.val)

        if temp == temp[::-1]:
            return True
        else:
            return False
```