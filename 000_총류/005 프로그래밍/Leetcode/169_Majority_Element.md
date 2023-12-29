#Array #Hash_Table #Divide_and_Conquer #Sorting #Counting

```run-python
class Solution:
    def majorityElement(self, nums: list[int]) -> int:
        num_dict = {}
        for i in nums:
            if i in num_dict:
                num_dict[i] += 1
            else:
                num_dict[i] = 1
        
        return max(num_dict, key=num_dict.get)

sol = Solution()
result = sol.majorityElement([2, 2, 1, 1, 1, 1])
print(result)
```
### Abstract
최대 value 값을 가진 Key 값을 가져오는 법.
```run-python

di = dict(zip('abcd', range(4)))
print(di)

print(max(di))

```
