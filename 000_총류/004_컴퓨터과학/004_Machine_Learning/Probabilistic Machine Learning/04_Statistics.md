## Introduction
확률 모델의 모든 매개변수 θ가 알려져 있다고 가정했습니다. 
이번 장에서는 데이터에서 이러한 매개변수를 학습하는 방법에 대해 설명합니다.
**D로부터 θ를 추정하는 과정을 모델 피팅 또는 트레이닝이라고 하며, 머신 러닝의 핵심**입니다.
이러한 추정치를 생성하는 방법에는 여러 가지가 있지만, 대부분은 다음과 같은 형태의 최적화 문제로 귀결됩니다.
$$\hat{\theta}=argmin\;L(\theta)$$
여기서 L(θ)는 일종의 손실 함수 또는 목적 함수입니다. 
이 장에서는 몇 가지 다른 손실함수에 대해 설명합니다.
## Maximum likelihood estimation(MLE)
- ### Definition
1. **정의:**
    
    - MLE은 데이터셋 D에 대한 likelihood 함수 $p(D|\theta)$를 최대화하는 매개변수 $\theta$를 찾는 것으로 정의됩니다.
    - $\theta_{mle}=arg⁡max⁡_{\theta}\;p(D|\theta)$
2. **딥러닝에서의 추론:**
    
    - 딥러닝에서 "추론"은 "예측"으로 참조되며, 특정한 입력 x에 대한 출력 y의 확률 $p(y∣x,\hat{\theta})$를 계산하는 것을 의미합니다.
3. **독립 동일 분포 가정:**
    
    - likelihood 함수는 각 예제의 독립성과 동일한 분포를 가정한 것으로 표현됩니다.
    
4. **로그 우도:**
    
    - 로그 우도 $L(\theta)$는 각 예제에 대한 로그 확률의 합으로 표현됩니다.
    - $L(\theta)=\sum_{n=1}^{N}\;log\;p(y_{n}|x_{n},\theta)$
    
    - 로그 우도 함수를 사용하는 이유
		- 우도 함수는 0에서 1사이에 값을 취함
			  우도 함수에 로그값을 취해 $-\infty<ln\;L<=0$
	    - 우도 함수의 값은 사례수가 많은 경우에는 대단히 작은 값
5. **MLE 목적 함수:**
    
    - MLE는 로그 우도를 최대화하는 것으로 정의되며, 최적화 문제로 표현됩니다:
	      최적화 알고리즘을 사용하여 이 목적 함수를 최대화하면, 모델의 파라미터를 찾을 수 있다.
        - $\hat{\theta}_{mle}=arg⁡max⁡_{\theta}\;L(\theta)$
6. **음의 로그 우도 (NLL : Negative Log Likelihood):**
    
    - 목적에 따라 최적화를 위해 (비용 함수를 최소화하기 위해) 음의 로그 우도가 일반적으로 사용됩니다.
    - $NLL(\theta)=-\sum_{n=1}^{N}\;log\;p(y_{n}|x_{n},\theta)$
7. **무조건적 (비지도) MLE:**
    
    - 무조건적 (비지도) 모델의 경우, 출력 $y_{n}$은 있지만 입력 $x_{n}$이 없을 때 음의 로그 우도를 최소화하여 MLE를 찾습니다.
    - $\hat{\theta}_{mle}=arg⁡min⁡_{\theta}\;-\sum_{n=1}^{N}\;log\;p(y_{n}|\theta)$
8. **입출력의 결합 우도:**
    
    - 어떤 경우에는 <font color="#d99694">입력과 출력의 결합 우도를 최대화</font>하고 싶을 수 있습니다.
	      입력과 출력 간의 상관 관계를 모델로써 잘 파악하고자 하는 목적을 나타내는 표현
    - $\hat{\theta}_{mle}=arg⁡min⁡_{\theta}\;-\sum_{n=1}^{N}\;log\;p(y_{n}|\theta)$

요약하면, MLE는 통계 모델의 매개변수를 likelihood 함수를 최대화하여 추정하는 방법으로, 딥러닝에서는 입력을 주고 출력을 예측하는 작업에 사용됩니다. 음의 로그 우도는 일반적으로 최적화의 목적 함수로 사용되며, 조건부와 결합 우도는 모델링 작업에 따라 선택됩니다.

- ### Justification for MLE
1. **Bayesian 해석:**
    
    - MLE를 베이지안 관점에서 바라볼 수 있습니다. 베이지안 관점에서 MLE는 베이지안 사후 확률인 $p(\theta|D)$를 균일한 사전 분포(uniform prior)를 사용한 델타 함수(delta function)로 근사화한 것으로 볼 수 있습니다.
    - $\theta_{map}=argmax_{\theta}\;log\;p(\theta|D)=argmax_{\theta}\;log\;p(D|\theta)+log\;p(\theta)$
    - 만약 균일한 사전 분포를 사용한다면, MAP(최대 사후 확률) 추정치는 MLE와 같아집니다.
	      $\theta_{map}=\theta_{mle}$
2. **예측 분포의 근사:**
    
    - 또 다른 MLE를 정당화하는 방법은 얻어진 예측 분포 $p(y|\theta_{mle}​)$가 데이터의 경험적 분포(empirical distribution)와 가능한 비슷하도록 만드는 것입니다.
    - KL(Kullback-Leibler) 다이버전스를 사용하여 두 분포 간의 유사성을 측정합니다.
    - KL 다이버전스를 최소화하는 것은 MLE를 수행하는 것과 동일하며, 이는 Negative Log Likelihood(NLL)를 최소화하는 것과도 동일합니다.
    - 이를 통해 모델이 주어진 데이터의 경험적 분포와 가능한 가까워지도록 모델을 학습하는 것이 MLE를 정당화하는 한 가지 방법임을 보여줍니다.

MLE는 베이지안 관점에서는 균일한 사전 분포를 사용한 베이지안 추론의 특별한 경우로 해석되며, 예측 분포의 경험적 분포와의 유사성을 최대화함으로써 정당화될 수 있습니다.

- ### Example
	- #### Bernoulli 분포에 대한 MLE
		
		- **베르누이 분포:** 동전 던지기의 결과를 나타내는 확률변수 $Y$를 고려하고, 이때 이벤트 $Y=1$은 앞면을 나타내고 $Y=0$은 뒷면을 나타냅니다. 확률 $\theta$는 앞면이 나올 확률입니다.
		- **Negative Log Likelihood (NLL):** 베르누이 분포의 NLL은 다음과 같이 정의됩니다. 
			
			$NLL(\theta)=−\sum_{n=1}^{N}​[I(y_{n}​=1)log\;\theta+I(y_{n}​=0)log(1-\theta)$] 여기서 $I$는 지시함수입니다.
		- **MLE 계산:** NLL를 최소화하기 위해 편미분하여 미분이 0이 되는 값을 찾습니다. 
		     
		     $\theta_{mle}=\frac{N_{1}}{N_{0}+N_{1}}$
		    여기서 $N_1$​은 1의 개수(앞면), $N_0​$은 0의 개수(뒷면), $N$은 전체 샘플 수입니다.
		- **해석:** MLE는 단순히 앞면의 경험적 비율로 계산됩니다.
	- #### categorical 분포에 대한 MLE
		  
		- **범주 분포:** K면체 주사위를 N번 던질 때의 결과를 나타내는 확률변수 $Y_n​$을 고려합니다. 각각의 범주 $k$에 대한 확률은 $\theta_{k}$입니다.
		- **NLL 및 MLE 계산:** 범주 분포에 대한 NLL을 정의하고, MLE를 구하기 위해 Lagrange multipliers를 사용합니다. 
			- **Lagrange multipliers** (라그랑주 승수)
				  MLE에서 Lagrange Multipliers를 사용하는 예시 중 하나는 모수에 대한 제한 조건이 있는 경우입니다.
				- 예제
					목적 함수 $f$ 와 등식 제한조건 $g$ 이 다음과 같은 경우를 생각하자.
					$f\left(x,\ y\right)=x^2+y^2$
					$g\left(x,\ y\right)=x+y=1$
					
					이를 만족하는 f의 최적해(최대 or 최솟값)를 찾아라.
					
					라그랑주 승수법의 보조함수를 아래와 같이 정의합니다.
					$L\left(x,\ y,\ λ\right)=x^2+y^2-λ\left(x+y-1\right)$
					
					위의 함수 L의 gradient vector가 0벡터인 위치를 구합니다.
					$\frac{\partial L}{\partial x}=2x-λ=0$
					$\frac{\partial L}{\partial y}=2y-λ=0$
					$\frac{\partial L}{\partial λ}=x+y-1=0$
					
					위의 연립방정식을 풀면 다음과 같은 최적해의 위치를 구할 수 있습니다.
					$x=y=\frac{1}{2},\ λ=1$
				
			$\theta_{mle, k}=\frac{N_{k}}{N}$
			여기서 $N_{k}$​는 $Y=k$인 경우의 개수이고, $N$은 전체 샘플 수입니다.
		- **해석:** 각 범주의 경험적 비율로 MLE를 계산합니다.
	- #### univariate Gaussian 분포에 대한 MLE
		 - **단변량 가우시안 분포의 MLE:**  단변량 가우시안에서는 평균과 분산을 계산합니다.
			$\mu_{mle}=\frac{1}{N}\sum_{n-1}^{N}{y_{n}}$
			$\sigma_{mle}^{2}=\frac{1}{N}\sum_{n=1}^{N}(y_{n}-\mu_{mle})^{2}$
		
	- #### multivariate Gaussian 분포에 대한 MLE
		- **다변량 가우시안 분포의 MLE:** 다변량 가우시안에서는 평균 벡터와 공분산 행렬을 계산합니다.
			$\mu_{mle}=\frac{1}{N}\sum_{n-1}^{N}{y_{n}}$
			$\Sigma_{mle}=\frac{1}{N}\sum_{n=1}^{N}(y_{n}-\mu_{mle})(y_{n}-\mu_{mle})^{T}$
	- #### linear regression 분포에 대한 MLE
		- **선형 회귀의 RSS 및 MLE 계산:**
			$RSS(w)=(Xw-y)^{T}(Xw-y)$
			$w_{mle}=(X^{T}X)^{-1}X^{T}y$
		- **해석:**
			RSS는 잔차 제곱합으로, 회귀 모델의 적합도를 나타냅니다.
			MLE는 회귀 계수를 얻기 위해 입력과 출력 간의 관계를 최적화합니다.
		
## Empirical Risk Minimization (ERM)
- **정의:** MLE를 일반화하여 어떤 다른 손실 함수를 사용할 수 있도록 하는 개념
- ### Example
	 0-1 손실 함수는 다음과 같이 정의됩니다.
	 
	 $l_{01}(y_{n},\theta;x_{n})=\begin{cases}0,\;if\;y_{n}=f(x_{n};\theta)\\1,\;if\;y_{n}\ne f(x_{n};\theta)\end{cases}$
	 여기서 $f(x;\theta)$는 예측기입니다. 
	 이는 데이터 포인트가 올바른 범주에 할당되면 0이고, 그렇지 않으면 1입니다. 이러한 0-1 손실을 사용하여 에측 모델을 최적화하면 훈련 데이터셋에서의 미스클래스피케이션 비율을 최소화하는 것이 됩니다.
	 이때, 경험적 위험(Empirical risk)는 다음과 같이 표현됩니다.
	 
	 $L(\theta)=\frac{1}{N}\sum_{n=1}^{N}{l_{01}(y_{n},\theta;x_{n})}$
	 이것은 훈련 세트에서의 경험적 미스클래스피케이션 비율을 나타냅니다.
	 
- ### Surrogate loss
	  0-1 손실은 비선형 및 미분 불가능한 특성을 가지고 있어 최적화가 어려울 수 있습니다. 이를 극복하기 위해 대체 손실 함수를 사용합니다. 대표적인 대체 손실 함수로는 log loss와 hinge loss가 있습니다.
		![[Pasted image 20240102034737.png|500]]
		이진 분류를 위한 다양한 손실 함수의 그림입니다. 가로축은 마진이고 세로축은 손실입니다.
		
	-  **Log Loss:**
		확률적인 이진 분류 문제를 고려해보겠습니다. 모델이 만들어내는 로그-오즈(η)를 사용하여 다음과 같이 확률을 정의할 수 있습니다: 
		
		$p(\tilde{y}|x,\theta)=\sigma(\tilde{y}​η)=\frac{1}{1+e^{-\tilde{y}η}}​$
		여기서 $σ$는 시그모이드 함수이며, $η=f(x;θ)$는 로그-오즈입니다. 
		로그 손실은 다음과 같이 정의됩니다: 
		
		‘ll(�~,�)=−log⁡�(�~∣�)=log⁡(1+�−��~)‘ll​(y~​,η)=−logp(y~​∣η)=log(1+e−yη~) 
		이 손실 함수는 미스클래스피케이션 비율에 대한 최대한 타이트한 상한을 제공하며, 그림 4.2에서 그래프로 확인할 수 있습니다.
	
	- **Hinge Loss:**
		힌지 손실은 다음과 같이 정의됩니다: ‘hinge(�~,�)=max⁡(0,1−��~)=(1−��~)+‘hinge​(y~​,η)=max(0,1−yη~)=(1−yη~)+​ 여기서 (�)+(z)+​는 �z와 0 중 큰 값을 의미합니다. 힌지 손실은 0-1 손실의 볼록한 상한을 제공하지만, 미분가능하지 않은 부분이 있습니다.
		
	이러한 대체 손실 함수는 0-1 손실을 근사화하는 데 사용될 수 있으며, 그라디언트 기반 최적화를 통해 모델을 효과적으로 학습할 수 있도록 도와줍니다.

## Other Estimation Methods
- ### The metod of moments
- ### Online (recursive) estimation

## Regularization

## Bayesian Statistics
## Frequentist Statistics
