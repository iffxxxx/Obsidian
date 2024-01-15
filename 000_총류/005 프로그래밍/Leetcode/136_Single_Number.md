#Array #Bit_Manipulation
## Problem
Given a **non-empty** array of integers `nums`, every element appears _twice_ except for one. Find that single one.

You must implement a solution with a linear runtime complexity and use only constant extra space.

**Example 1:**

**Input:** `nums = [2,2,1]`
**Output:** 1

**Example 2:**

**Input:** `nums = [4,1,2,1,2]`
**Output:** 4

**Example 3:**

**Input:** `nums = [1]`
**Output:** 1

**Constraints:**

- `1 <= nums.length <= 3 * 104`
- `-3 * 104 <= nums[i] <= 3 * 104`
- ==Each element in the array appears twice except for one element which appears only once.==
## Code
```run-python
class Solution:
    def singleNumber(self, nums: list[int]) -> int:
        mapping = {}
        for n in nums:
            if n not in mapping:
                mapping[n] = 1
            else:
                mapping[n] += 1
        
        for i in mapping:
            if mapping[i] == 1:
                return i

sol = Solution()
result = sol.singleNumber([1,4,1,3,3])
print(result)
```
## Abstract
해쉬를 사용해서 풀었으나 topic에 bit manipulation이 있는 것으로 보아 다른 방안이 있을 것이라 생각
조건의 형광펜 친 부분을 자세히 보면 중복되는 숫자들은 짝수개임을 확인할 수 있다.
XOR 연산을 통해서 풀수도 있음을 깨달았다.

[[05_Bit Manipulation#Bit_Facts_and_Tricks]]에서 알 수 있듯이, `x ^ x = 0`과 `x ^ 0 = x`임을 볼 수 있다.
즉 nums = [1, 1, 3]