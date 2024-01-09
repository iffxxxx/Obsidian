## Bayesian decision theory 167
- ### Basics 167
- ### Classification problems 169
- ### ROC curves 171
- ### Precision-recall curves 174
- ### Regression problems 176
- ### Probabilistic prediction problems 177
## Choosing the “right” model 179
- ### Bayesian hypothesis testing 179
- ### Bayesian model selection
	- 귀무가설
		- **정의:**
			통계학에서 처음부터 버릴 것을 예상하는 가설
			차이가 없거나 의미있는 차이가 없는 경우의 가
- ### Occam’s razor
	- **정의:**
		같은 성능이 있다면 더 간단한 것을 고르라
- ### Connection between cross validation and marginal likelihood 184
- ### Information criteria
	- **BIC:**
		Dm log n
	- **AIC:**
		2D
- ### Posterior inference over effect sizes and Bayesian significance testing
## Frequentist decision theory
많이 실험하면 잘된다.
- Bayes risk
	- 사전확률을 통해서 모수 추정
- Maximum risk
	- 사전확률을 통해서 리스크의 상한 값이 

최대의 리스크를 생각했을때 빨강색이 더 높다. 따라서 파랑 선택
- ### Computing the risk of an estimator 188
- ### Consistent estimators
- 장기적으로 특정기간내에 데이터를 때려박으면 잘 예측한다.
- ### Admissible estimators
- 델타1과 델타2의 지배적인 관계
- 모델 1이 모델 2보다 좋을때 지배적이다
- 
## Empirical risk minimization 192
- ### Empirical risk 192
- 실험하면서 나오는 리스크 줄이자
- ### Structural risk 194
- approximation error : 내가 예측한 함수가 얼마나 실제함수와 유사한가
- generalize error : 유한한 데이터때문에 생겨나는 차이
- ### Cross-validation 194
- ### Statistical learning theory
- #### VC dimension
- 유용한 매개변수의 값을 몇개로 할 것인가?
## Frequentist hypothesis testing * 197

5.5.1 Likelihood ratio test 197
- ### Type I vs type II errors and the Neyman-Pearson lemma 198
	 Type 1 false negative
	 Type 2 false positive
	 Type1은 실수로 h1을 선택한 경우
	 틀렸는데
- ### Null hypothesis significance testing (NHST) and p-values 198
	귀무가설 세우고 이러한 과정들이 다 Null hypothesis 검증 방법
- ### p-values considered harmful 199
- p가 작으면 작을수록 h1이 맞는 것 Null 값이 아닐경우가 높다.
- 삼단논법
- ### Why isn’t everyone a Bayesian? 201
- modus tollens 부정 삼단 논법
- 지금 태양이 폭발했니 - 