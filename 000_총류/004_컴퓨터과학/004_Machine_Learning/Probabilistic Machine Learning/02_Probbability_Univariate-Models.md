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
## Random variables
- ### Discrete random variables
- ### Continuous random variables
- ### Sets of related random variables
- ### Independence and conditional independence
- ### Moments of a distribution
- ### Limitations of summary statistics
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
