#Stack #Design_Program
## Problem
Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

Implement the `MinStack` class:

- `MinStack()` initializes the stack object.
- `void push(int val)` pushes the element `val` onto the stack.
- `void pop()` removes the element on the top of the stack.
- `int top()` gets the top element of the stack.
- `int getMin()` retrieves the minimum element in the stack.

You must implement a solution with `O(1)` time complexity for each function.

**Example 1:**

**Input**
`["MinStack","push","push","push","getMin","pop","top","getMin"]`
`[[],[-2],[0],[-3],[],[],[],[]]`
**Output**
`[null,null,null,null,-3,null,0,-2]`

**Explanation**
`MinStack minStack = new MinStack();`
`minStack.push(-2);`
`minStack.push(0);`
`minStack.push(-3);`
`minStack.getMin(); // return -3`
`minStack.pop();`
`minStack.top();    // return 0`
`minStack.getMin(); // return -2`

**Constraints:**
- `-231 <= val <= 231 - 1`
- Methods `pop`, `top` and `getMin` operations will always be called on **non-empty** stacks.
- At most `3 * 104` calls will be made to `push`, `pop`, `top`, and `getMin`.
  
## Code
```run-python
class MinStack:
    def __init__(self):
        self.s = []

    def push(self, x: int) -> None:
        cur_min = self.getMin()
        if cur_min == None or x < cur_min: 
            cur_min = x
        self.s.append((x,cur_min))

    def pop(self) -> None:
        self.s.pop()

    def top(self) -> int:
        if len(self.s) == 0: return None
        return self.s[-1][0]

    def getMin(self) -> int:
        if len(self.s) == 0: return None
        return self.s[-1][1]
    
# Create a MinStack object
minStack = MinStack()
# Push elements onto the stack
minStack.push(-2)
minStack.push(0)
minStack.push(-3)
print(minStack.getMin())
minStack.pop()
print(minStack.top())
print(minStack.getMin())
```
## Abstract
```run-python
    def push(self, x: int) -> None:
        cur_min = self.getMin()
        if cur_min == None or x < cur_min: 
            cur_min = x
        self.s.append((x,cur_min))
```

2차원 튜플을 통해서 최소값과 현재 입력받은 값을 동시에 입력
`(-2, -2), (`