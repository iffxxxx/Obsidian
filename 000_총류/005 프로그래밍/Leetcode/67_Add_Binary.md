#Math #String #Bit_Manipulation #Simulation

```run-python
class Solution:
	def addBinary(self, a: str, b: str) -> str:
		temp = bin(int(a, 2) + int(b, 2))
		return temp[2:]

sol = Solution()
a = "11"
b = "1"
result = sol.addBinary(a, b)
print(result)
```
### Abstract
```run-python
print(bin(42))
print(oct(42))
print(hex(42))
```
2진수 : 0b
8진수 : 0o
16진수 : 0x

```run-python
print(int('0b101010', 2))
print(int('0o52', 8))
print(int('0x2a', 16))
```
