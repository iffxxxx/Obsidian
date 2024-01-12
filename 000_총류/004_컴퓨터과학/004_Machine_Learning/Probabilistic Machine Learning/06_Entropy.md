불확실성의 척도 - 엔트로피와 비례 - 정보의 양(알지 못하는 정보)

정보전달 평균 비트
![[Pasted image 20240112140747.png]]
-가 붙은 이유 - 확률이 분수기에 로그 값 또한 음수

Maximum entropy: 모두가 균등할때 최대
Minimum entropy: 하나로 몰아져있을때

- Estimating entropy
	 - Cross Entropy
		 - 정의:
			 두개의 확률분포가 있고 이 두개를 분류하는 것
	- Joint Entropy
		- 정의:
			두개의 확률분포를 합해서 측정
			두 변수가 독립적이라면 더하고
			아니라면 계산 - **자유도** 감소할 수도 있음
			
		- Lower 
- Perplexity
	- 정의:
		지수화된 
		언어모델 - 추론 - 성능이 좋아질수록 엔트로피가 낮아