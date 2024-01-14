## Prime Numbers
- **소개:**
	모든 양의 정수는 소수들의 곱으로 분해될 수 있습니다. 예를 들어, 84는 $2^2×3^1×5^0×7^1×11^0×13^0×17^0×…$와 같이 소수의 곱으로 표현될 수 있습니다. 여기서 많은 소수들은 지수가 0인 것에 주목합니다.
	
- ### Divisibility (나누기 가능성):
	
	- 위에서 언급한 소수의 법칙은 어떤 수 x가 다른 수 y로 나눠진다면 (`x \ y` 또는 ` y mod x=0`), x의 소인수분해에 있는 모든 소수는 y의 소인수분해에도 있어야 한다는 것을 의미합니다. 
		  ![[Pasted image 20240114225235.png]]
		더 구체적으로는, 만약 `x\y`이라면, `i`에 대해 모든 소수에 대해 $j_i≤k_i$여야 합니다.
	    
	- 사실, x와 y의 최대공약수(gcd)는 각 소수의 지수들 중 작은 것들을 곱한 것입니다. 최소공배수(lcm)는 각 소수의 지수들 중 큰 것들을 곱한 것입니다.
	    ![[Pasted image 20240114225443.png]]
	- $gcd \times lcm$?
		각 소수의 min과 max값을 곱한 것이기에 $x \times y$가 된다.
- ### Checking for Primality
	- **접근 방식:**
		주어진 숫자가 소수인지 여부를 확인하는 과정에 대해 설명합니다. 초기 접근 방식은 2부터 n-1까지 반복하여 각 반복에서 나누어 떨어지는지 확인하는 것입니다.
		
		```run-python
		def primeNaive(n)
		    if n < 2:
		        return False
		    for i in range(2, n):
		        if n % i == 0:
		            return False
		    return True
		```
	- **개선방안:**
		루트 n까지만 반복하는 이유는 a×b=n인 경우, n을 나누는 어떤 a에 대해서는 그 보수 b가 존재하기 때문입니다. 만약 $a>\sqrt{n})$이라면, $b<\sqrt{n}$일 것이며 ($(\sqrt{n})^2=n$이기 때문에) 이미 b에 대해서 확인했으므로 a를 확인할 필요가 없습니다.
		```run-python
		import math
		
		def primeSlightlyBetter(n)
		    if n < 2:
		        return False
		    sqrt_n = int(math.sqrt(n))
		    for i in range(2, sqrt_n + 1):
		        if n % i == 0:
		            return False
		    return True
		```
	- **아리스토텔레스의 체:**
		  ![[Sieve_of_Eratosthenes_animation.gif]]
		  마치 체처럼 걸러낸다고 하여 이름 붙인 이 알고리즘은, 2 이상 n 이하의 정수 x가 소수인지 아닌지 효율적으로 판단할 수 있도록 추가적인 배열을 만드는 전처리 알고리즘입니다.
		```run-python
		import math
		
		def prime_naive(n):
		    if n < 2:
		        return False
		    for i in range(2, n):
		        if n % i == 0:
		            return False
		    return True
		
		def prime_slightly_better(n):
		    if n < 2:
		        return False
		    sqrt_n = int(math.sqrt(n))
		    for i in range(2, sqrt_n + 1):
		        if n % i == 0:
		            return False
		    return True
		```
## Probability
- **정의:**
	
- ### Probabiliry of A and B
	