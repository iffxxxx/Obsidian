![[Cracking_the_Coding_Interview.pdf]]
### Abstract
코딩 인터뷰 준비에 많이 쓰는 교재입니다. 
Cracking the Coding Interview (한글: 코딩 인터뷰 완전 분석)인데, 코딩 인터뷰의 개괄적인 설명 뿐만 아니라 실제로 문제 풀이에 많이 사용되는 알고리즘의 원리에 대해 설명해 줍니다. 
이 책은 정독해보는 걸 추천합니다.

## Arrays_and_Strings
### Hash_Table
A hash table is a **data structure that maps keys to values** for highly efficient lookup.

Compute the hash code from the key, and then compute the index from the hash code.
Then, search through the linked list for the value with this key.

If the number of collisions is very high, the worst case runtime is $O(N)$, where $N$ is the number of keys. However, we generally assume a good implementation that keeps collisions to a minimum, in which case the lookup time is $O(1)$.

### ArrayList_and_Resizable_Arrays
Alternatively, we can implement the hash table with a **balanced binary search tree**. This gives us an O( log N) lookup time. The advantage of this is **potentially using less space**, since we no longer allocate a large array. We can also iterate through the keys in order, which can be useful sometimes. 

#### Qusetion
Why is the amortized insertion runtime $O(1)$? 

> Amortized Analysis (최악수행시간분석)
> "최악의 경우에 대해 최악의 경우가 발생하도록 연속된 연산을 수행하고,
> 그때의 한번의 연산에 대한 평균 수행시간을 분석하는 것"