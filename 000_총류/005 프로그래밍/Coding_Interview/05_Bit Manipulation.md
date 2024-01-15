## Bit Manipulation By Hand
- **한번 풀어보기:**
	![[Pasted image 20240114195846.png]]
	1. 0110 + 0110은 0110 * 2와 동등하며, 이는 0110을 왼쪽으로 1만큼 이동시키는 것과 동일합니다.
	2. 0100은 4와 동일하며, 4로 곱하는 것은 왼쪽으로 2만큼 이동하는 것과 같습니다. 그래서 0011을 왼쪽으로 2만큼 이동하여 1100을 얻습니다.
	3. 비트별로 이 작업을 생각해보세요. 비트를 그 자신의 부정값과 XOR하면 항상 1이 됩니다. 따라서 A XOR (A = NOT a)의 해는 1의 시퀀스가 됩니다.
	4. ~0은 1의 시퀀스이므로 ~0 << 2는 1로 시작하는 두 개의 0입니다. 이를 다른 값과 AND하면 값의 마지막 두 비트가 지워집니다.
## Bit_Facts_and_Tricks
- **소개:**
	다음 표현식들은 비트 조작에서 유용합니다. 하지만 단순히 외우지 말고 각각이 왜 참인지 심도 있게 생각해보세요. "1s"와 "0s"는 각각 1의 시퀀스 또는 0의 시퀀스를 나타냅니다.
	
	![[Pasted image 20240114214729.png]]
		**^는 XOR**
	이러한 표현식을 이해하기 위해서는 이러한 연산이 비트별로 발생하며 한 비트에서 일어나는 것이 다른 비트에 영향을 미치지 않음을 기억해야 합니다. 이는 위의 각 문장이 단일 비트에 대해 참이면 비트 시퀀스에 대해서도 참임을 의미합니다.
## Two's Complement and Negative Numbers
- **개념:**
	컴퓨터는 일반적으로 정수를 2의 보수 표현으로 저장합니다. 양수는 자기 자신으로 표현되고, 음수는 그 절대값에 대한 2의 보수로 표현됩니다 (부호 비트에 음수임을 나타내기 위해 1이 들어갑니다). N비트 수 (여기서 N은 부호 비트를 제외한 숫자에 사용된 비트 수)의 2의 보수는 해당 수에 대한 $2^N$에 대한 보수입니다.
	
- **예시:**
	  ![[Pasted image 20240114215406.png]]
	4비트 정수 -3을 살펴봅시다. 이것이 4비트 숫자인 경우, 부호에는 1비트, 값에는 3비트가 할당됩니다. $2^3$에 대한 보수를 얻으려면 8을 사용합니다. -3의 절대값에 대한 8에 대한 보수는 5입니다. 5를 2진수로 나타내면 101입니다. 따라서 4비트 숫자로 표현된 -3은 1101이고, 첫 번째 비트는 부호 비트입니다.
	
	다른 말로, N비트 숫자로 표현된 -K (음수 K)의 이진 표현은 1을 제외한 (1, 2^N - 1 - K)입니다. 이를 다르게 표현하면 양수 표현의 비트를 반전하고 맨 앞에 1을 더하는 것입니다.
## Arithmetic vs. Logical Right Shift
- **정의:**
	두 종류의 오른쪽 시프트 연산자에 대해 설명하고 있습니다. 산술 오른쪽 시프트는 본질적으로 2로 나누는 것과 동등합니다. 논리적 오른쪽 시프트는 비트를 시프트하는 것으로 시각적으로는 비트를 오른쪽으로 이동시키는 것과 같습니다. 이 중요한 차이는 ==음수에 대한 시프트==에서 나타납니다.
	
	논리적 오른쪽 시프트에서는 비트를 오른쪽으로 이동하고 ==가장 중요한 비트(MSB, 부호 비트)==에는 0을 채웁니다. `>>` 연산자로 표시됩니다. 8비트 정수에서 (부호 비트가 MSB인 경우), 이는 아래 이미지와 같이 나타낼 수 있습니다.
	![[Pasted image 20240114215908.png]]
	
	 산술적 오른쪽 시프트에서는 값을 오른쪽으로 이동시키지만 새로운 비트는 부호 비트의 값으로 채워집니다. 이는 (대략적으로) 2로 나누는 효과를 가지고 있습니다. `>>` 연산자로 표시됩니다.
	![[Pasted image 20240114220318.png]]
	
- **코드:**
```run-python
def repeatedArithmeticShift(x, count):
    for i in range(count):
        x >>= 1  # 산술적 오른쪽 시프트 1회 수행
    return x

def repeatedLogicalShift(x, count):
    for i in range(count):
        x = (x % 0x100000000) // 2  # 논리적 오른쪽 시프트 1회 수행
    return x

print(repeatedArithmeticShift(-93242, 40))
print(repeatedLogicalShift(-93242, 40))
```
- **코드설명:**
	이 함수들은 정수 x와 count라는 매개변수를 받아서 각각 산술적 오른쪽 시프트와 논리적 오른쪽 시프트를 반복적으로 수행하는 것으로 보입니다.
	
	함수들이 매개변수 x = -93242와 count = 40으로 호출될 경우에 대한 예상 결과를 설명합니다. 논리적 시프트에서는 0이 반복해서 부호 비트에 채워지므로 0이 반환됩니다. 산술적 시프트에서는 1이 반복해서 부호 비트에 채워지므로 -1이 반환됩니다. 부호 있는 정수에서 모든 비트가 1인 경우는 -1을 나타냅니다.
## Common Bit Tasks: Getting and Setting
1. **Get Bit (비트 가져오기):**
	   이 방법은 1을 1비트씩 이동하여 00010000 같은 값을 생성합니다. AND를 수행하면 num을 사용하여 AND를 수행하면 비트 i의 비트를 제외한 모든 비트를 지우고 마지막으로 0과 비교합니다. 새 값이 0이 아니라면, 비트 i는 1이어야 합니다. 그렇지 않으면 비트 i는 0입니다. 
```run-python
def get_bit(num, i): 
	return (num & (1 << i)) != 0
	
num_get_bit = 28 # 이진수로 11101 
i_get_bit = 1    # 뒤에서 0 1 두번째가 0이면 False, 1이면 True
result_get_bit = get_bit(num_get_bit, i_get_bit) 
print(f"Get Bit: Bit at position {i_get_bit} in {num_get_bit} is {result_get_bit}")
```
	
2. **Set Bit (비트 설정):** 
	비트 시프트 1을 i비트씩 설정하여 00010000 같은 값을 만듭니다. num으로 OR을 수행하면 비트 i의 값만 변경됩니다. 마스크의 다른 모든 비트는 0이며 num에 영향을 주지 않습니다. 
```run-python
def set_bit(num, i): 
	return num | (1 << i)

num_set_bit = 23 # 이진수로 10111
i_set_bit = 3    # 이진수로 11111
result_set_bit = set_bit(num_set_bit, i_set_bit) 
print(f"Set Bit: Setting bit at position {i_set_bit} in {num_set_bit} results in {result_set_bit}")
```
    
3. **Clear Bit (비트 지우기):** 
	해당 비트를 0으로 지우는 함수입니다. `1 << i`를 이용하여 해당 비트를 1로 만들고, 이를 NOT 연산하여 해당 비트를 0으로 만든 뒤 AND 연산하여 지웁니다.
```run-python
def clear_bit(num, i): 
	mask = ~(1 << i) 
	return num & mask

num_clear_bit = 15 # 이진수로 1111 
i_clear_bit = 2    # 이진수로 1011 = 11
result_clear_bit = clear_bit(num_clear_bit, i_clear_bit) 
print(f"Clear Bit: Clearing bit at position {i_clear_bit} in {num_clear_bit} results in {result_clear_bit}")
```
	
4. **Clear Bits from Most Significant Bit through i (inclusive)**
	가장 상위 비트부터 i 비트까지 모두 지우기: `1 << i - 1`로 구한 mask를 이용하여 가장 상위 비트부터 i 비트까지를 모두 0으로 만듭니다.
```run-python
def clear_bits_msb_through_i(num, i): 
	mask = (1 << i) - 1 
	return num & mask

num_clear_bits_msb_through_i = 29 # 이진수로 11101 
i_clear_bits_msb_through_i = 3    # 이진수로 ^^___ 맨 앞부터 5 - 3번째까지 0으로 교체
result_clear_bits_msb_through_i =clear_bits_msb_through_i(num_clear_bits_msb_through_i, i_clear_bits_msb_through_i) 
print(f"Clear Bits MSB through i: Clearing bits from MSB through {i_clear_bits_msb_through_i} in {num_clear_bits_msb_through_i} results in {result_clear_bits_msb_through_i}")
```
    
5. **Clear Bits from i through 0 (inclusive)**
	i 비트부터 0 비트까지 모두 지우기: `(-1 << (i + 1))`로 구한 mask를 이용하여 i 비트부터 0 비트까지를 모두 0으로 만듭니다.
```run-python
def clear_bits_i_through_0(num, i): 
	mask = -1 << (i + 1) 
	return num & mask

num_clear_bits_i_through_0 = 22 # 이진수로 10110 
i_clear_bits_i_through_0 = 2    # 이진수로 __^^^ 0비트부터 i 비트까지 0으로 교체
result_clear_bits_i_through_0 = clear_bits_i_through_0(num_clear_bits_i_through_0, i_clear_bits_i_through_0) 
print(f"Clear Bits i through 0: Clearing bits from {i_clear_bits_i_through_0} through 0 in {num_clear_bits_i_through_0} results in {result_clear_bits_i_through_0}")
```
	
6. **Update Bit (비트 업데이트):** 
	해당 비트를 주어진 값으로 업데이트하는 함수입니다. 먼저 해당 비트를 0으로 지우기 위해 `1 << i`로 구한 mask를 이용하고, 값을 왼쪽으로 i 비트 시프트하여 해당 비트에 원하는 값을 넣은 뒤 OR 연산하여 업데이트합니다.
```run-python
def update_bit(num, i, bit_is_1): 
	value = 1 if bit_is_1 else 0 
	mask = ~(1 << i) 
	return (num & mask) | (value << i)

num_update_bit = 9 # 이진수로 1001 
i_update_bit = 1   # 이진수로 __^_ 1비트를 1로 바꾸고 싶다.
bit_value_update_bit = True # 1로 업데이트 
result_update_bit = update_bit(num_update_bit, i_update_bit, bit_value_update_bit) 
print(f"Update Bit: Updating bit at position {i_update_bit} in {num_update_bit} to {bit_value_update_bit} results in {result_update_bit}")
```
