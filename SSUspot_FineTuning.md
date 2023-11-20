## 기존의 SVDTunning
![[Pasted image 20231120171125.png]]

Antz (1998) 5
Seven (a.k.a. Se7en) (1995) 5
Clerks (1994) 5
Wolf (1994) 5
Much Ado About Nothing (1993) 5
Sirens (1994) 5
Twister (1996) 5
Fried Green Tomatoes (1991) 5
Fight Club (1999) 5
Encino Man (1992) 5

## 4점대 필터링 (코드에서 수정)
```run-python
ratingsDataset.raw_ratings = [r for r in ratingsDataset.raw_ratings if r[2] >= 4.0]
```

![[Pasted image 20231120171719.png]]

Tron (1982) 5
Legends of the Fall (1994) 5
Piano, The (1993) 5
Schindler's List (1993) 5
Fear and Loathing in Las Vegas (1998) 5
American Beauty (1999) 5
Heavy Metal (1981) 5
Shining, The (1980) 5
Dark Crystal, The (1982) 5
American Tail, An (1986) 5

### 결과에 대한 생각
- 평점기반 시스템은 영화에 대한 구체적인 평가를 내릴 수 있다.
	- 하지만 4점대를 필터링할 경우 불호를 체크하지 못하고 선호하는 것들에서만 평가가 이뤄지기에 완전히 다른 결과가 나오게 된다.

![[Pasted image 20231120181104.png]]

We recommend:
Mary Shelley's Frankenstein (Frankenstein) (1994) 5
Sirens (1994) 5
Terminator 2: Judgment Day (1991) 5
Shawshank Redemption, The (1994) 5
Trainspotting (1996) 5
Bedknobs and Broomsticks (1971) 5
Lady and the Tramp (1955) 5
Little Mermaid, The (1989) 5
Return from Witch Mountain (1978) 5
Steamboat Willie (1928) 5

We recommend:
Ben-Hur (1959) 5
GoldenEye (1995) 5
Clueless (1995) 5
Batman Forever (1995) 5
Circle of Friends (1995) 5
Houseguest (1994) 5
Shallow Grave (1994) 5
While You Were Sleeping (1995) 5
Fugitive, The (1993) 5
Three Musketeers, The (1993) 5