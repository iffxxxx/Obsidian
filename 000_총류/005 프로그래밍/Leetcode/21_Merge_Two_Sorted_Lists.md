#Linked_List #Recursion 

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