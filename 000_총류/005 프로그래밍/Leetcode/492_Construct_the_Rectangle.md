#Math 
## Problem
A web developer needs to know how to design a web page's size. So, given a specific rectangular web page’s area, your job by now is to design a rectangular web page, whose length L and width W satisfy the following requirements:

1. The area of the rectangular web page you designed must equal to the given target area.
2. The width `W` should not be larger than the length `L`, which means `L >= W`.
3. The difference between length `L` and width `W` should be as small as possible.

Return _an array `[L, W]` where `L` and `W` are the length and width of the web page you designed in sequence._

**Example 1:**

**Input:** `area = 4`
**Output:** `[2,2]`
**Explanation:** The target area is 4, and all the possible ways to construct it are `[1,4], [2,2], [4,1]`. 
But according to requirement 2, `[1,4]` is illegal; according to requirement 3,  `[4,1]` is not optimal compared to `[2,2]`. So the length L is 2, and the width W is 2.

**Example 2:**

**Input:** `area = 37`
**Output:** `[37,1]`

**Example 3:**

**Input:** `area = 122122`
**Output:** `[427,286]`

**Constraints:**

- `1 <= area <= 107`

## Code
```run-python
class Solution:
    def constructRectangle(self, area: int) -> List[int]:
        a = int(area ** 0.5)
        while area % a != 0:
            a -= 1
        b = int(area / a)
        
        return [b, a]
```
## Abstract
약수 찾기가 생각났다.
너비에 제곱근을 씌워 정사각형에 근접하게 만든뒤,
하나씩 빼주면서 가장 차이가 나지 않는 약수의 쌍을 구하면 출력하도록 설계했다.