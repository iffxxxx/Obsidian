#Array #Hash_Table #String #Fail1
## Problem
Given a string array `words`, return _an array of all characters that show up in all strings within the_ `words` _(including duplicates)_. You may return the answer in **any order**.

**Example 1:**

**Input:** `words = ["bella","label","roller"]`
**Output:** `["e","l","l"]`

**Example 2:**

**Input:** `words = ["cool","lock","cook"]`
**Output:** `["c","o"]`

**Constraints:**

- `1 <= words.length <= 100`
- `1 <= words[i].length <= 100`
- `words[i]` consists of lowercase English letters.
## Code
```run-python
from collections import Counter

class Solution:
    def commonChars(self, words: list[str]) -> list[str]:
        counters = [Counter(word) for word in words]

        compare = counters[0]
        for counter in counters[1:]:
            compare &= counter

        answer = list(compare.elements())
        return answer

# Example usage 
solution = Solution() 
words = ["bella", "label", "roller"] 
result = solution.commonChars(words) 
print(result)
```
## Abstract
처음에는 가장 처음의 문자열을 돌아가면서 탐색하여 지워나가는 방법을 썼다.
이후에 다른 풀이를 발견해서 한참 공부했다.

우선 Counter의 elements 기능부터 공부했다.
```run-python
from collections import Counter

word = "bella"
counters = Counter(word)
print(list(counters.elements()))
```
counter를 사용하면 기존의 순서를 망각하고 숫자만 세주는 줄 알았는데
elements는 기존의 순서를 기억하여 다시 출력해준다.