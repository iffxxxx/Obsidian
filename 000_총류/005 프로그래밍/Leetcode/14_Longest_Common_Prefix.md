#String #Trie

```run-python
class Solution:
    def longestCommonPrefix(self, strs: list[str]) -> str:
        strs.sort(key=lambda x: len(x))

        for i in range(len(strs[0])):
            for j in range(len(strs)):
                if strs[0][i] != strs[j][i]:
                    return strs[0][:i]

        return strs[0]

sol = Solution()
strs = ["flower", "flow", "flight"]
result = sol.longestCommonPrefix(strs)
print(result)

```
### Abstract
접두사라 앞에서부터 구분하는 것.
