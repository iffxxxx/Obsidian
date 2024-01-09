#Stack #Design_Program #Queue #Fail1
## Problem
Implement a first in first out (FIFO) queue using only two stacks. The implemented queue should support all the functions of a normal queue (`push`, `peek`, `pop`, and `empty`).

Implement the `MyQueue` class:

- `void push(int x)` Pushes element x to the back of the queue.
- `int pop()` Removes the element from the front of the queue and returns it.
- `int peek()` Returns the element at the front of the queue.
- `boolean empty()` Returns `true` if the queue is empty, `false` otherwise.

**Notes:**

- You must use **only** standard operations of a stack, which means only `push to top`, `peek/pop from top`, `size`, and `is empty` operations are valid.
- Depending on your language, the stack may not be supported natively. You may simulate a stack using a list or deque (double-ended queue) as long as you use only a stack's standard operations.

**Example 1:**

**Input**
`["MyQueue", "push", "push", "peek", "pop", "empty"]`
`[[], [1], [2], [], [], []]`
**Output**
`[null, null, null, 1, 1, false]`

**Explanation**
MyQueue myQueue = new MyQueue();
myQueue.push(1); // queue is: `[1]`
myQueue.push(2); // queue is: `[1, 2]` (leftmost is front of the queue)
myQueue.peek(); // return 1
myQueue.pop(); // return 1, queue is `[2]`
myQueue.empty(); // return false

**Constraints:**

- `1 <= x <= 9`
- At most `100` calls will be made to `push`, `pop`, `peek`, and `empty`.
- All the calls to `pop` and `peek` are valid.

**Follow-up:** Can you implement the queue such that each operation is **[amortized](https://en.wikipedia.org/wiki/Amortized_analysis)** `O(1)` time complexity? In other words, performing `n` operations will take overall `O(n)` time even if one of those operations may take longer.

## Code
```run-python
class MyQueue:
    def __init__(self):
        self.push_stack=[]
        self.pop_stack=[]
        
    def push(self, x: int) -> None:
        self.push_stack.append(x)
        
    def pop(self) -> int:
        if self.pop_stack:
            return self.pop_stack.pop()
        else:
            while self.push_stack:
                temp=self.push_stack.pop() 
                self.pop_stack.append(temp) 
            return self.pop_stack.pop()
            
    def peek(self) -> int:
        if self.pop_stack:
            return self.pop_stack[-1]
        else:
            while self.push_stack:
                temp=self.push_stack.pop()
                self.pop_stack.append(temp)
            return self.pop_stack[-1]
            
    def empty(self) -> bool:
        return False if self.push_stack or self.pop_stack else True
```
## Abstract
스택을 두개 사용하면 큐를 구현할 수 있다.
Last in Fisrt out을 두 번할 경우 1234를 스택에 두번 넣을 경우 >> 4321 >> 1234
Stack은 1부터 나오기 때문에 First in First out을 구현할 수 있다.