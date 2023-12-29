#Array #Hash_Table
```run-python
class Solution:
    def twoSum(self, nums: list[int], target: int) -> list[int]:
        num_dict = {}
        for i, num in enumerate(nums):
            num_dict[num] = i

        for i, num in enumerate(nums):
            if target - num in num_dict and i < num_dict[target - num]:
                return [i, num_dict[target - num]]

sol = Solution()
result = sol.twoSum([3, 2, 3], 6)
print(result)

```
### Abstarct
**딕셔너리 사용 == 해쉬 테이블**

Target에서 수를 뺀 값이 num_dict에 있는 것을 확인하기 위해 **Key와 Value**를 바꿈

return 값에 들어갈 두 요소의 중복을 피하기 위해 **enumerate**를 재사용