#Linked_List 

```run-python
class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

class Solution:
    def deleteDuplicates(self, head: ListNode) -> ListNode:
        if head is None:
            return head
        result = head
        while head.next is not None:
            if head.val == head.next.val:
                head.next = head.next.next
            else:
                head = head.next
        return result

# Example usage:
sol = Solution()
list1 = ListNode(1, ListNode(2, ListNode(2, ListNode(3, ListNode(4, ListNode(4))))))
result = sol.deleteDuplicates(list1)

# 결과 출력
while result:
    print(result.val, end=" ")
    result = result.next

```
