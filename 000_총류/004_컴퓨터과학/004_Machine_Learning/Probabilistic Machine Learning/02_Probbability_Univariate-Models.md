## Introduction
- ### What is probability?
	  확률 이론은 빈도주의적 해석과 베이지안 해석으로 나뉩니다. 빈도주의적 관점에서는 확률은 여러 번 반복된 사건의 장기적 빈도를 나타내며, 베이지안 관점에서는 확률은 불확실성이나 무지를 양적으로 표현하는 데 사용됩니다. 베이지안 해석은 일회성 사건에 대한 불확실성을 모델링할 수 있는 장점이 있습니다. 이 책에서는 베이지안 해석을 채택하며, 확률 이론의 기본 규칙은 채택된 해석과 무관하게 동일하게 적용됩니다.
- ### Types of uncertainty
	- **정의:**
		우리의 예측에서의 불확실성은 기본적으로 두 가지 다른 이유로 발생할 수 있습니다. 첫 번째는 데이터를 생성하는 기저의 숨겨진 원인 또는 메커니즘에 대한 무지 때문입니다. 이를 지식론적 불확실성이라고 하며, 더 간단하게는 모델 불확실성이라고도 합니다. 두 번째 종류의 불확실성은 더 많은 데이터를 수집해도 줄일 수 없는 고유한 변동성에서 발생합니다.
- ### Probability as an extension of logic
	- **정의:**
		  이 섹션에서는 확률의 기본 규칙을 Bool 논리의 확장으로 간주하는 것을 검토합니다.
		  
	- #### Probability of an event
		  우리는 이진 변수 A로 표시되는 사건을 세계의 어떤 상태로 정의합니다. 이 사건은 발생하거나 발생하지 않을 수 있습니다. 예를 들어, A는 "내일 비가 올 것이다" 또는 "어제 비가 내렸다" 또는 "라벨이 y = 1이다" 또는 "매개변수 θ가 1.5에서 2.0 사이에 있다"와 같은 사건이 될 수 있습니다. 표현 Pr(A)은 사건 A가 참일 확률(또는 A가 발생할 장기적인 비율)을 나타냅니다. 우리는 0 ≤ Pr(A) ≤ 1을 요구하며, 여기서 Pr(A) = 0은 사건이 확실히 발생하지 않을 것이고, Pr(A) = 1은 사건이 확실히 발생할 것이라는 것을 의미합니다.
		  
	- #### Probability of a conjunction of two events
		  두 사건이 동시에 발생할 확률을 우리는 다음과 같이 나타냅니다: 
		  $Pr(A ∧ B) = Pr(A, B)$
		  
		만약 A와 B가 독립적인 사건이라면, 다음의 관계가 성립합니다: 
		$Pr(A, B) = Pr(A) Pr(B)$
		
	- #### Probability of a union of two events
		  두 사건 A 또는 B가 발생할 확률은 다음과 같이 주어집니다: 
		  $Pr(A∪B)=Pr(A)+Pr(B)−Pr(A∩B)$
		
		만약 두 사건이 서로 배타적이라면 (즉, 동시에 일어날 수 없는 경우), 다음이 성립합니다: $Pr(A∪B)=Pr(A)+Pr(B)$
		
		예를 들어, X가 집합 �={1,2,3,4}X={1,2,3,4}에서 균일하게 무작위로 선택된다고 가정해 봅시다. A를 X ∈ {1, 2}인 사건으로 정의하고, B를 X ∈ {3}인 사건으로 정의하면, 다음이 성립합니다: 
		$Pr(A∪B)=\frac{2}{4}​+\frac{1}{4}$
		
	- #### Conditional probability of one event given another
		  우리는 사건 A가 발생했을 때 사건 B가 발생할 조건부 확률을 다음과 같이 정의합니다: 
		  $Pr(B∣A)=Pr(A)Pr(A,B)​$
		
		만약 Pr(A) = 0이라면, 불가능한 사건에 대해 조건을 설정할 수 없으므로 이는 정의되지 않습니다.
		
	- #### Independence of events
		만약 사건 A와 B가 다음의 관계를 만족한다면, 우리는 사건 A가 사건 B와 독립적이라고 말합니다: $Pr(A,B)=Pr(A)⋅Pr(B)$
		
	- #### Conditional independence of events
		  만약 사건 A와 B가 사건 C가 주어졌을 때 다음의 관계를 만족한다면, 우리는 사건 A와 B가 사건 C에 대해 조건부로 독립적이라고 말합니다: 
		  $Pr(A,B∣C)=Pr(A∣C)⋅Pr(B∣C)$
		
		이것은 A ⊥ B|C로 표기됩니다. 사건들은 종종 서로 의존적일 수 있지만, 우리가 관련된 중간 변수에 대해 조건을 걸면 서로 독립적일 수 있습니다.
## Random variables
- **정의:**
	가정해 봅시다 X가 주사위를 굴렸을 때 나올 면의 방향과 같은 관심 있는 양을 나타내는 경우, 또는 현재 시간의 집 바깥의 온도와 같은 경우입니다. 만약 X의 값이 알려지지 않거나 변할 수 있다면, 우리는 이를 확률 변수(random variable 또는 rv)라고 부릅니다. 가능한 값들의 집합은 X로 표시되며, 이를 표본 공간(sample space) 또는 상태 공간(state space)이라고 합니다. 여러분은 주어진 표본 공간에서 발생하는 결과의 집합을 사건(event)이라고 합니다.
	
- ### Discrete random variables
	- **정의:**
		  만약 표본 공간 X가 유한하거나 셀 수 있는 무한이라면, X는 이산 확률 변수(discrete random variable)라고 불립니다. 이 경우, X가 값 x를 가질 확률을 나타내는 것은 Pr(X = x)로 표기됩니다. 확률 질량 함수(probability mass function 또는 pmf)는 확률 변수를 각 가능한 값에 설정하는 이벤트의 확률을 계산하는 함수로 정의됩니다: $p(x)=Pr(X=x)$
		  ![[Pasted image 20240105184435.png]]
		  그림에서는 X = {1, 2, 3, 4}에 정의된 두 개의 pmf를 보여줍니다. 왼쪽에는 균일 분포, p(x)=1/4, 오른쪽에는 퇴화 분포, p(x)=I(x=1) (여기서 $I()$는 이진 인디케이터 함수)가 있습니다. 그림 b의 분포는 X가 항상 값 1과 같다는 사실을 나타냅니다. (따라서 우리는 확률 변수가 항상 일정할 수도 있다는 것을 볼 수 있습니다.)
- ### Continuous random variables
	  만약 $X∈R$가 실수 값을 가지는 양이라면, 이를 연속 확률 변수(continuous random variable)라고 부릅니다. 이 경우, X가 취할 수 있는 유한한 또는 셀 수 있는 값들의 집합을 정의할 수 없습니다. 그러나 우리는 실수 축을 여러 구간으로 나눌 수 있습니다. 각 구간에 대해 X가 속하는 사건을 정의하면, 이산 확률 변수에 대한 방법과 유사한 방식으로 다룰 수 있습니다. 간단히 말해, X가 특정한 실수 값을 취할 확률을 해당 값이 속하는 구간의 크기를 제로로 수렴시켜 나타낼 수 있습니다.
- ### Sets of related random variables
	- **정의:**
		  이 섹션에서는 관련된 두 확률 변수 집합에 대한 분포에 대해 논의합니다.
		
		먼저 두 확률 변수 X와 Y가 있을 때, 두 확률 변수의 결합 분포를 정의할 수 있습니다. 모든 가능한 X와 Y의 값에 대해 p(x, y) = p(X = x, Y = y)로 정의합니다. 두 변수가 유한한 집합일 경우, 결합 분포를 2차원 표로 나타낼 수 있으며, 표의 모든 항목은 1의 합을 갖습니다. 예를 들어, 두 이진 변수의 다음 예를 살펴보겠습니다:
		![[Pasted image 20240105190853.png]]
		
		만약 두 변수가 독립적이라면, 결합 분포를 두 주변 분포의 곱으로 나타낼 수 있습니다. 두 변수가 유한한 카디널리티를 갖는 경우, 2차원 결합 표를 두 1차원 벡터의 곱으로 나타낼 수 있습니다.
		
		주어진 결합 분포가 있을 때, 확률 변수의 주변 분포는 다음과 같이 정의됩니다:
		
		$p(X=x)=∑y​p(X=x,Y=y)$
		
		여기서 우리는 Y의 모든 가능한 상태에 대해 합산합니다. 이는 때로 합의 규칙 또는 총 확률의 규칙이라고 불리기도 합니다. p(Y = y)는 비슷한 방식으로 정의됩니다. 예를 들어, 위의 2차원 표에서 p(X = 0) = 0.2 + 0.3 = 0.5이고, p(Y = 0) = 0.2 + 0.3 = 0.5입니다. ("주변"이라는 용어는 표의 행과 열의 합계를 표의 테두리 또는 여백에 쓰는 회계 관행에서 비롯됩니다.)
		
		우리는 확률 변수의 조건부 분포를 다음과 같이 정의합니다:
		
		$p(Y=y∣X=x)=p(X=x)p(X=x,Y=y)​$
		
		이 식을 재배열하여 $p(x,y)=p(x)p(y∣x)$를 얻을 수 있습니다.
- ### Independence and conditional independence
	  우리는 X와 Y가 무조건적으로 독립적이거나 주변적으로 독립적이라고 말하며, 기호로는 $X⊥Y$로 나타냅니다. 만약 우리가 결합 분포를 두 주변 분포의 곱으로 나타낼 수 있다면
	
	$X⊥Y⇔p(X,Y)=p(X)p(Y)$
	
	일반적으로, 변수 집합 $X1​,…,Xn$​이 (상호적으로) 독립적이라고 말하면, 결합 분포를 모든 부분 집합 $X_1​,…,X_m​⊆X_1​,…,X_n$​에 대해 다음과 같이 쓸 수 있다:
	
	$p(X_1​,…,X_m​)=∏_{i=1}{m}​p(X_i​)$ (2.22)
	
	예를 들어, $X_1​,X_2​,X_3$​이 상호적으로 독립이라면 다음 조건이 성립합니다: 
	
	불행히도, 무조건적 독립성은 드물며, 대부분의 변수는 대부분의 다른 변수에 영향을 미칠 수 있습니다. 그러나 일반적으로 이 영향은 직접적인 것이 아닌 다른 변수를 통해 중재됩니다. 따라서 우리는 X와 Y가 주어진 Z 하에서 조건부로 독립적이라고 말합니다. 만약 조건부 결합이 조건부 주변 분포의 곱으로 나타낼 수 있다면:
	
	$X⊥Y∣Z⇔p(X,Y∣Z)=p(X∣Z)p(Y∣Z)$
	
	이 가정은 X − Z − Y 그래프로 나타낼 수 있으며, 이는 X와 Y 간의 모든 의존성이 Z를 통해 중재된다는 직관을 캡처합니다. 더 큰 그래프를 사용하여 복잡한 결합 분포를 정의할 수 있습니
- ### Moments of a distribution
	- **개요:**
		  이 섹션에서는 확률 분포(확률 밀도 함수 또는 확률 질량 함수)에서 파생될 수 있는 다양한 요약 통계량에 대해 설명합니다.
- ### Limitations of summary statistics
	- **문제정의:**
		    요약 통계량(평균 및 분산과 같은)을 사용하여 확률 분포(또는 분포에서 샘플링된 점들)를 요약하는 것은 일반적이지만, 이로 인해 많은 정보가 손실될 수 있습니다. 이를 보여주는 두 예시가 있습니다.
		
		1. **Anscombe's Quartet**: Anscombe은 평균, 분산 및 상관 계수와 같은 특징이 완전히 동일한 4개의 데이터셋을 만들어냈습니다. 이것들은 그래프로 표현되었을 때 매우 다른 모양을 가지고 있습니다. 이는 통계학자들 사이에서 수치적 요약이 데이터 시각화보다 우월하다는 인상을 뒤엎기 위한 것이었습니다.
		    ![[Pasted image 20240105191546.png]]
		    동일한 낮은 차수의 요약 통계량을 가지고 있는 12개의 데이터셋으로 구성되어 있습니다. 낮은 차수의 통계량은 평균, 분산과 같은 간단한 통계량을 말합니다. 이러한 12개의 데이터셋 중 하나는 공룡 모양을 가지고 있지만, 다른 11개는 완전히 다른 모양을 가지고 있습니다. 이것은 동일한 통계적 특성을 가진 데이터가 여러 형태로 나타날 수 있으며, 수치적 요약만으로는 이러한 차이를 파악하기 어렵다는 사실을 강조합니다.
		    
		2. **Datasaurus Dozen**: 이 예시는 고작렬 통계량을 가진 12개의 데이터셋으로 구성되어 있습니다. 이 중 하나는 공룡 모양을 가지고 있습니다. 그러나 나머지 11개의 데이터셋은 완전히 다른 모양을 가지고 있습니다. 이러한 데이터셋은 Datasaurus Dozen이라고 불리며, 이것은 순수한 통계량만으로는 차이를 알아볼 수 없다는 사실을 보여줍니다.
		
		이러한 예시들은 통계량만으로는 데이터의 다양성을 충분히 반영할 수 없다는 한계를 보여줍니다. 따라서 데이터를 시각화하여 더 깊게 이해하는 것이 중요합니다.
## Bayes' rule
- ### Example: Testing for COVID-19
- ### Example: The Monty Hall problem
- ### Inverse problems
## Bernoulli and binomial distributions
- ### Definition
- ### Sigmoid (logistic) function
- ### Binary logistic regression
## Categorical and multinomial distributions
- ### Definition
- ### Softmax function
- ### Multiclass logistic regression
- ### Log-sum-exp trick
## Univariate Gaussian (normal) distribution
- ### Cumulative distribution function
- ### Probability density function
- ### Regression
- ### Why is the Gaussian distribution so widely used?
- ### Dirac delta function as a limiting casse
## Some other common univariate distributions
- ### Student t distribution
- ### Cauchy distribution
- ### Laplace distribution
- ### Beta distribution
- ### Gamma distribution
- ### Empirical distribution
## Transformations of random variables
- ### Discrete case
- ### Continuous case
- ### Invertible transformations
- ### Moments of a linear transformation
- ### The convolution theorem
- ### Central limit theorem
- ### Monte Carlo approximation
## Exercises
