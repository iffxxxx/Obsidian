#Hash_Table #Linked_List #Two_Pointers #Fail1

```run-python
# Definition for singly-linked list.
class ListNode:
    def __init__(self, x):
        self.val = x
        self.next = None

class Solution:
    def getIntersectionNode(self, headA: ListNode, headB: ListNode) -> ListNode:
        tempa = headA
        tempb = headB
        while tempa != tempb:
            tempa = tempa.next if tempa else headB
            tempb = tempb.next if tempb else headA
        return tempa

# Example usage:
sol = Solution()

# Creating intersected linked lists
# ListA: 1 -> 9 -> 1 -> 2 -> 4 -> 5 -> None
# ListB: 3 -> 2 -> 4 -> 5 -> None
intersected_node = ListNode(5)
listA = ListNode(1)
listA.next = ListNode(9)
listA.next.next = ListNode(1)
listA.next.next.next = ListNode(2)
listA.next.next.next.next = ListNode(4)
listA.next.next.next.next.next = intersected_node

listB = ListNode(3)
listB.next = ListNode(2)
listB.next.next = intersected_node

# Finding the intersection node
result = sol.getIntersectionNode(listA, listB)

# Printing the result
if result:
    print("Intersected at", result.val)
else:
    print("No intersection")
```
### Abstract
[해설영상](https://www.youtube.com/watch?v=D0X0BONOQhI)
이 코드는 두 개의 연결 리스트 `headA`와 `headB`가 주어졌을 때, 두 리스트가 교차하는 지점의 노드를 찾아주는 함수를 구현한 것입니다. 코드에서 사용된 주요 원리는 투 포인터(Two Pointers) 알고리즘입니다.

1. `tempa`와 `tempb`는 각각 `headA`와 `headB`를 가리키는 포인터입니다.
2. 두 포인터가 서로 다른 노드를 가리키고 있는 동안(즉, 교차 지점을 찾을 때까지) 반복문이 실행됩니다.
3. 반복문 내에서 `tempa`와 `tempb`를 각각 다음 노드로 이동시킵니다. 단, 만약 `tempa` 또는 `tempb`가 `None`이면 다른 리스트의 헤드로 이동시킵니다. 이렇게 하면 두 포인터의 이동 속도가 맞춰지면서 교차 지점을 찾을 수 있습니다.
4. 두 포인터가 교차 지점을 가리키면 반복문을 종료하고 해당 노드를 반환합니다.

이 알고리즘의 핵심 아이디어는 두 포인터가 각각 두 연결 리스트를 한 번씩 순회하면서, 만약 교차 지점이 있다면 반드시 교차 지점에서 만난다는 것입니다. 따라서 교차 지점을 찾을 때까지 반복문을 실행하고, 찾았을 경우 해당 노드를 반환합니다. 교차 지점이 없다면 `None`을 반환합니다.

#### 교차지점에서 만나는 이유
교차 지점에서 만나는 이유는 두 포인터의 이동 속도가 서로를 따라잡기 때문입니다.

두 연결 리스트의 길이가 각각 `m`과 `n`이라고 할 때, 두 포인터가 각각 한 번의 순회 동안에는 두 연결 리스트의 총 길이만큼 이동하게 됩니다. 따라서 두 포인터의 상대적인 이동 속도는 차이가 `|m - n|` 만큼 발생하게 됩니다.

처음에는 두 포인터가 각각 자신의 리스트를 순회하다가 어느 한 쪽이 먼저 끝에 도달하면, 해당 포인터는 다른 리스트의 헤드로 이동하여 나머지 부분을 순회하게 됩니다. 그리고 나서는 두 포인터의 상대적인 이동 속도는 차이 `|m - n|`만큼 줄어들게 됩니다.
##### Code
`None`이 아니면 `tempa`를 다음 노드로 이동시킵니다. 만약 `tempa`가 이미 끝에 도달했다면 (`tempa`가 `None`이라면) `tempa`를 `headB`로 이동시킵니다.
- 마찬가지로, `tempb`가 `None`이 아니면 `tempb`를 다음 노드로 이동시킵니다. 만약 `tempb`가 이미 끝에 도달했다면 (`tempb`가 `None`이라면) `tempb`를 `headA`로 이동시킵니다.

이렇게 함으로써 두 포인터는 각각 자신의 리스트를 순회한 후, 다른 리스트의 헤드로 이동하여 나머지 부분을 순회하게 됩니다. 이것이 투 포인터 알고리즘에서 두 리스트의 길이 차이를 상쇄하는 핵심 원리입니다.