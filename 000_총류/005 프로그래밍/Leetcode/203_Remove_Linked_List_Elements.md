#Linked_List #Recursion 
## Problem
Given the `head` of a linked list and an integer `val`, remove all the nodes of the linked list that has `Node.val == val`, and return _the new head_.

**Example 1:**

![](https://assets.leetcode.com/uploads/2021/03/06/removelinked-list.jpg)

**Input:** `head = [1,2,6,3,4,5,6], val = 6`
**Output:** `[1,2,3,4,5]`

**Example 2:**

**Input:** `head = [], val = 1`
**Output:** `[]`

**Example 3:**

**Input:** `head = [7,7,7,7], val = 7`
**Output:** `[]`

**Constraints:**

- The number of nodes in the list is in the range `[0, 104]`.
- `1 <= Node.val <= 50`
- `0 <= val <= 50`

```run-python
# Definition for singly-linked list.
class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

class Solution:
    def removeElements(self, head: ListNode, val: int) -> ListNode:
        temp = ListNode()
        temp.next = head
        cur_node = temp
        while cur_node.next:
            if cur_node.next.val == val:
                cur_node.next = cur_node.next.next
            else:
                cur_node = cur_node.next
        return temp.next

# Example usage:
sol = Solution()

# Creating a linked list: 1 -> 2 -> 6 -> 3 -> 4 -> 5 -> 6
list_head = ListNode(1)
list_head.next = ListNode(2)
list_head.next.next = ListNode(6)
list_head.next.next.next = ListNode(3)
list_head.next.next.next.next = ListNode(4)
list_head.next.next.next.next.next = ListNode(5)
list_head.next.next.next.next.next.next = ListNode(6)

# Removing elements with value 6
result_head = sol.removeElements(list_head, 6)

# Printing the result
while result_head:
    print(result_head.val, end=" ")
    result_head = result_head.next
```

### Abstract
이 코드는 주어진 연결 리스트에서 특정 값(`val`)과 일치하는 노드를 제거하는 메서드인 `removeElements`를 구현한 것입니다. 코드의 주요 구조 및 동작은 다음과 같습니다:

1. `temp`라는 새로운 노드를 생성하고, 이를 헤드 노드의 이전에 위치시킵니다. 이렇게 하면 헤드 노드를 직접 조작하지 않고도 연결 리스트를 순회할 수 있습니다.
    
2. `cur_node` 변수를 `temp`로 초기화합니다. `cur_node`는 현재 순회 중인 노드를 나타냅니다.
    
3. `while` 루프를 사용하여 연결 리스트를 순회합니다. 루프 내에서는 현재 노드의 다음 노드를 검사하여 값이 `val`과 일치하면 해당 노드를 건너뛰고 다음 노드로 이동합니다.
    
4. 값이 `val`과 일치하지 않으면 `cur_node`를 다음 노드로 이동합니다.
    
5. 순회가 끝난 후 `temp.next`를 반환합니다. 이는 헤드 노드를 포함한 수정된 연결 리스트의 첫 번째 노드를 가리킵니다.

이런 식으로 연결 리스트의 시작점을 가리키는 것은 코드에서 노드를 삽입, 삭제, 탐색 등의 작업을 할 때 편리하게 하기 위함입니다. 코드에서 시작점을 나타내는 노드를 가리키면, 연결 리스트의 모든 노드에 접근할 수 있게 되어 다양한 작업을 쉽게 수행할 수 있습니다.