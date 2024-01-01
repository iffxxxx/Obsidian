#Hash_Table #Linked_List #Two_Pointers 

```run-python
class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

class Solution(object):
    def hasCycle(self, head: ListNode) -> bool:
        if head is None:
            return False
        visited = set()
        while head:
            if head in visited:
                return True
            visited.add(head)
            head = head.next
        return False

# Example usage:
sol = Solution()

# Example with a cycle
list_with_cycle = ListNode(1, ListNode(2, ListNode(3)))
list_with_cycle.next.next.next = list_with_cycle.next  # Create a cycle

has_cycle_result = sol.hasCycle(list_with_cycle)
print("Has Cycle:", has_cycle_result)

# Example without a cycle
list_without_cycle = ListNode(1, ListNode(2, ListNode(3, ListNode(4))))
has_cycle_result = sol.hasCycle(list_without_cycle)
print("Has Cycle:", has_cycle_result)
```
### Abstract
visited를 추가하여 한번 탐색한 노드를 다시 탐색할 경우 사이클이 돈다고 판정.