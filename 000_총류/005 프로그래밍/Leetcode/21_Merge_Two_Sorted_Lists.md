#Linked_List #Recursion 
## Problem
You are given the heads of two sorted linked lists `list1` and `list2`.

Merge the two lists into one **sorted** list. The list should be made by splicing together the nodes of the first two lists.

Return _the head of the merged linked list_.

**Example 1:**

![](https://assets.leetcode.com/uploads/2020/10/03/merge_ex1.jpg)

**Input:** `list1 = [1,2,4], list2 = [1,3,4]`
**Output:** `[1,1,2,3,4,4]`

**Example 2:**

**Input:** `list1 = [], list2 = []`
**Output:** `[]`

**Example 3:**

**Input:** `list1 = [], list2 = [0]`
**Output:** `[0]`

**Constraints:**

- The number of nodes in both lists is in the range `[0, 50]`.
- `-100 <= Node.val <= 100`
- Both `list1` and `list2` are sorted in **non-decreasing** order.
## Code
```run-python
class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

class Solution:
    def mergeTwoLists(self, list1: ListNode, list2: ListNode) -> ListNode:
        temp = ListNode()
        tail = temp
        while list1 or list2:
            if list1 is None:
                tail.next = list2
                list2 = list2.next
            elif list2 is None:
                tail.next = list1
                list1 = list1.next
            else:
                if list1.val < list2.val:
                    tail.next = list1
                    list1 = list1.next
                else:
                    tail.next = list2
                    list2 = list2.next
            tail = tail.next
        return temp.next

# Example usage:
sol = Solution()
list1 = ListNode(1, ListNode(2, ListNode(4)))
list2 = ListNode(1, ListNode(3, ListNode(4)))
result = sol.mergeTwoLists(list1, list2)

# 결과 출력
while result:
    print(result.val, end=" ")
    result = result.next

```
### Abstract
두개의 리스트가 정렬되어 있어서 순차적으로 비교하며 진행.
tail을 지속적으로 업데이트 해줘야 함.