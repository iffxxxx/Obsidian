#Array #Hash_Table #Stack #Monotonic_Stack #Fail1
## Problem
The **next greater element** of some element `x` in an array is the **first greater** element that is **to the right** of `x` in the same array.

You are given two **distinct 0-indexed** integer arrays `nums1` and `nums2`, where `nums1` is a subset of `nums2`.

For each `0 <= i < nums1.length`, find the index `j` such that `nums1[i] == nums2[j]` and determine the **next greater element** of `nums2[j]` in `nums2`. If there is no next greater element, then the answer for this query is `-1`.

Return _an array_ `ans` _of length_ `nums1.length` _such that_ `ans[i]` _is the **next greater element** as described above._

**Example 1:**

**Input:** `nums1 = [4,1,2], nums2 = [1,3,4,2]`
**Output:** `[-1,3,-1]`
**Explanation:** The next greater element for each value of nums1 is as follows:
- 4 is underlined in nums2 = `[1,3,4,2]`. There is no next greater element, so the answer is -1.
- 1 is underlined in nums2 = `[1,3,4,2`]. The next greater element is 3.
- 2 is underlined in nums2 = `[1,3,4,2]`. There is no next greater element, so the answer is -1.

**Example 2:**

**Input:** nums1 = `[2,4]`, nums2 = `[1,2,3,4]`
**Output:** `[3,-1]`
**Explanation:** The next greater element for each value of nums1 is as follows:
- 2 is underlined in nums2 = `[1,2,3,4]`. The next greater element is 3.
- 4 is underlined in nums2 = `[1,2,3,4]`. There is no next greater element, so the answer is -1.

**Constraints:**

- `1 <= nums1.length <= nums2.length <= 1000`
- `0 <= nums1[i], nums2[i] <= 104`
- All integers in `nums1` and `nums2` are **unique**.
- All the integers of `nums1` also appear in `nums2`.

**Follow up:** Could you find an `O(nums1.length + nums2.length)` solution?
## Code
```run-python
class Solution:
    def nextGreaterElement(self, nums1: list[int], nums2: list[int]) -> list[int]:
        if not nums1 or not nums2:
            return None

        mapping = {}
        result = []
        stack = [nums2[0]]

        for i in range(1, len(nums2)):
            while stack and nums2[i] > stack[-1]:
                mapping[stack[-1]] = nums2[i]
                stack.pop()
            stack.append(nums2[i])

        for i in stack:
            mapping[i] = -1

        for i in range(len(nums1)):
            result.append(mapping[nums1[i]])
        return result

sol = Solution()
nums1 = [2,4]
nums2 = [1,2,3,4]
result = sol.nextGreaterElement(nums1, nums2)
print(result)
```
## Abstract
- 해쉬 테이블을 만들고, `nums2`의 특정 값 뒤에 오는 숫자중 무엇이 제일 큰지 맵핑을 시작한다.
	위의 예시와 같은 경우, `{1 : 2, 2 : 3, 3 : 4}`
- ### Edge case
	- nums1과 nums2가 비어있을 경우
- ### Corner case
	- nums2에 4와 같은 경우, 조건문에서 맵핑 조건에 들어가지 않고 스택에 남는다.
		  for문을 돌려서 stack에 남은 수들을 -1에 맵핑해주면 끝이 난다.