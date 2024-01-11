## Arrays_and_Strings
### Hash_Table
A hash table is a **data structure that maps keys to values** for highly efficient lookup.

Compute the hash code from the key, and then compute the index from the hash code.
Then, search through the linked list for the value with this key.

If the number of collisions is very high, the worst case runtime is $O(N)$, where $N$ is the number of keys. However, we generally assume a good implementation that keeps collisions to a minimum, in which case the lookup time is $O(1)$.

Alternatively, we can implement the hash table with a **balanced binary search tree**. This gives us an $O( log N)$ lookup time. The advantage of this is **potentially using less space**, since we no longer allocate a large array. We can also iterate through the keys in order, which can be useful sometimes. 
### ArrayList_and_Resizable_Arrays
A typical implementation is that when the array is full, the **array doubles** in size. **Each doubling takes $0(n)$ time**, but happens so rarely that its **amortized insertion time is still $O(1)$**. 
#### Array_Doubling
- 만약 연산을 수행하다 배열이 꽉찬 경우
	1. 어떤 상수 c만큼 늘리는 것
	
	2. 배열을 두배 늘리는 것
		- 60명을 수용할 수 있는 방에 61명을 수용하고자 한다.
			120명을 수용할 수 있는 방으로 가야한다.
			
			만약 한사람을 옮기는 비용을 t, 옮겨야할 사람이 n이라고 가정
			$t \times n$
			
			그 전에도 배열이 두배가 되었기에
			final capaciry increase
			 $t \times \frac{n}{2}$
			 
			 이와 같은 방법을 반복할 경우, N명의 사람들을 추가할 경우
			 $t \times \frac{n}{2} + t \times \frac{n}{4} \cdots + 2 + 1$
			
			![[Pasted image 20231230001633.png]]
			
			이는 N보다 작습니다.
##### Question
Why is the amortized insertion runtime $O(1)$? 

> Amortized Analysis (최악수행시간분석)
> "최악의 경우에 대해 최악의 경우가 발생하도록 연속된 연산을 수행하고,
> 그때의 한번의 연산에 대한 평균 수행시간을 분석하는 것"

**비교적 드문 작업:** 배열 크기를 두 배로 늘리는 작업은 비교적 드문 작업 중 하나입니다. 새로운 요소를 추가할 때마다 배열 크기를 두 배로 늘릴 필요가 없고, 일정한 크기 이상의 배열이 될 때만 이 작업을 수행하면 됩니다.
### StringBuilder
- Imagine you were concatenating a list of strings, as shown below. What would the running time of this code be? 
	  
	 For simplicity, assume that the strings are all the same length (call this x) and that there are n strings. 
	 
```run-python
words = ["Hello", " ", "World", "!"]
sentence = ""
for w in words:
    sentence = sentence + w
print(sentence)
```
- On each concatenation, a new copy of the string is created, and the two strings are copied over, character by character. 
	The first iteration requires us to copy x characters. The second iteration requires copying 2x characters. The third iteration requires 3x, and so on. The total time therefore is O( x + 2x + . . . + nx). This reduces to $O(xn^2)$. 
	
	- ##### Question
		Why is it $O(xn^2)$?
		Because $1 + 2 + ... + n = n(n+1)/2$ , or $O(n^2)$. 
		
	
```run-python
words = ["Hello", " ", "World", "!"]
sentence = "".join(words)
print(sentence)
```
- StringBuilder can help you avoid this problem. 
	StringBuilder simply creates a resizable array of all the strings, copying them back to a string only when necessary. 
	
1. **문자열 연결 방법의 차이:**
    
    - 첫 번째 코드는 문자열을 더하는 방식(`sentence = sentence + w`)으로 문자열을 연결합니다. 이 방식은 각각의 문자열 조각을 합칠 때마다 새로운 문자열을 생성하게 됩니다.
    - 두 번째 코드는 `StringBuilder`를 사용하여 문자열을 연결합니다. `StringBuilder`는 가변적이며, 각각의 조각을 추가할 때마다 기존의 내용을 변경하므로, 문자열을 합칠 때 새로운 객체를 생성하지 않습니다.
2. **성능 차이:**
    
    - 두 번째 코드(StringBuilder 사용)가 효율적입니다. 문자열을 연결할 때마다 객체를 새로 생성하는 첫 번째 방법은 더 많은 시간과 메모리를 소비할 수 있습니다. 반면, `StringBuilder`는 가변적이므로 효율적인 문자열 조작을 가능하게 합니다.

### Interview_Question
1. Is Unique: Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures? 