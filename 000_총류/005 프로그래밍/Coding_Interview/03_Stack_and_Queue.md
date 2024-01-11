#Stack #Queue 
## Stack
- **스택 구현:**
	  
	스택 데이터 구조는 정확히 그 이름이 의미하는 대로 데이터의 스택입니다. 특정 유형의 문제에서는 배열 대신 스택에 데이터를 저장하는 것이 유리할 수 있습니다.
	
	스택은 LIFO(후입선출) 순서를 사용합니다. 즉, 접시를 쌓은 것처럼 스택에 가장 최근에 추가된 항목이 제일 먼저 제거됩니다.
	
	다음과 같은 연산을 사용합니다:
	
	- `pop()`: 스택의 맨 위 항목을 제거합니다.
	- `push(item)`: 항목을 스택의 맨 위에 추가합니다.
	- `peek()`: 스택의 맨 위를 반환합니다.
	- `isEmpty()`: 스택이 비어있는 경우에만 true를 반환합니다.
	
	배열과 달리 스택은 i번째 항목에 대한 상수 시간 접근을 제공하지 않습니다. 그러나 상수 시간으로 항목을 추가 및 제거할 수 있습니다.
	
	스택은 링크드 리스트를 사용하여 구현될 수 있으며, 이 경우 항목이 동일한 쪽에서 추가 및 제거되었습니다.
- **코드:**
```run-python
class MyStack:
    class StackNode:
        def __init__(self, data):
            self.data = data
            self.next = None

    def __init__(self):
        self.top = None

    def pop(self):
        if self.top is None:
            raise IndexError("pop from an empty stack")
        item = self.top.data
        self.top = self.top.next
        return item

    def push(self, item):
        t = self.StackNode(item)
        t.next = self.top
        self.top = t

    def peek(self):
        if self.top is None:
            raise IndexError("peek from an empty stack")
        return self.top.data

    def is_empty(self):
        return self.top is None
```

## Queue
- **큐 구현:**
	
	큐는 FIFO(선입선출) 순서를 구현합니다. 티켓 창구에서의 줄이나 큐와 같이 항목은 추가된 순서대로 데이터 구조에서 제거됩니다.
	
	다음과 같은 연산을 사용합니다:
	
	- `add(item)`: 항목을 목록의 끝에 추가합니다.
	- `remove()`: 목록에서 첫 번째 항목을 제거합니다.
	- `peek()`: 큐의 맨 위를 반환합니다.
	- `isEmpty()`: 큐가 비어있는 경우에만 true를 반환합니다.
	
	큐도 링크드 리스트를 사용하여 구현될 수 있습니다. 실제로 항목이 반대쪽에서 추가 및 제거되는 한 둘은 본질적으로 동일합니다.
- **코드:**
```run-python
class MyQueue:
    class QueueNode:
        def __init__(self, data):
            self.data = data
            self.next = None

    def __init__(self):
        self.first = None
        self.last = None

    def add(self, item):
        t = self.QueueNode(item)
        if self.last is not None:
            self.last.next = t
        self.last = t
        if self.first is None:
            self.first = self.last

    def remove(self):
        if self.first is None:
            raise IndexError("remove from an empty queue")
        data = self.first.data
        self.first = self.first.next
        if self.first is None:
            self.last = None
        return data

    def peek(self):
        if self.first is None:
            raise IndexError("peek from an empty queue")
        return self.first.data

    def is_empty(self):
        return self.first is None
```