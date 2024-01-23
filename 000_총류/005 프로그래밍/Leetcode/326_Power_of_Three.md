#Math #Recursion 
## Problem
Given an integer `n`, return _`true` if it is a power of three. Otherwise, return `false`_.

An integer `n` is a power of three, if there exists an integer `x` such that `n == 3x`.

**Example 1:**

**Input:** n = 27
**Output:** true
**Explanation:** 27 = 33

**Example 2:**

**Input:** n = 0
**Output:** false
**Explanation:** There is no x where 3x = 0.

**Example 3:**

**Input:** n = -1
**Output:** false
**Explanation:** There is no x where 3x = (-1).

**Constraints:**

- `-231 <= n <= 231 - 1`

**Follow up:** Could you solve it without loops/recursion?

## Code
```run-python
class Solution:
    def isPowerOfThree(self, n: int) -> bool:
        if n <= 0: return False
        if 3 ** 31 % n == 0: return True
```
## Abstract
거듭제곱인지 확인하는 내장함수가 있을 것 같아 인터넷에 찾아봤다.
```run-python
class Solution:
    def isPowerOfThree(self, n: int) -> bool:
        if n <= 0: return False
        if pow(3, 31, n) == 0: return True
```

- **Pow:**
	`pow(3, 31, n)`는 파이썬에서 제곱 연산을 나타내는 함수입니다. 이 함수는 세 개의 인자를 받습니다:
	
	- 첫 번째 인자 (`3`): 밑 (base)
	- 두 번째 인자 (`31`): 지수 (exponent)
	- 세 번째 인자 (`n`): 모듈러 연산(modulo operation)의 값
	
	이 함수는 밑을 지수만큼 제곱한 후, 그 결과를 모듈러 연산으로 나눈 나머지를 반환합니다.
	
	따라서 `pow(3, 31, n)`은 3의 31제곱을 계산하고, 그 결과를 `n`으로 나눈 나머지를 반환합니다.