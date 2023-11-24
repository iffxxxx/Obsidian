## Weight Regularization
[출처](https://reniew.github.io/13/)
가중치가 서로 다른 방식으로 정규화되었을 때, 

일반적인 접근법은 **가중치 정규화(Weight Regularization)와 편향값 정규화(Bias Regularization)을 사용**할 수 있습니다. 가중치 정규화에서는 주로 L1 정규화와 L2 정규화가 있습니다. 

- L1 정규화는 일부 가중치를 0으로 만들어 특성 선택(Feature Selection) 효과를 갖습니다. 이를 통해 모델의 가중치 값을 더 희소하게 만들 수 있으며, 특성 간의 상대적인 중요성을 부여합니다. 

- L2 정규화는 가중치 크기가 작아지도록 유도하여 **과적합(Overfitting)** 을 줄이는데 도움이 됩니다. L2 정규화는 편향값 정규화에 주로 적용됩니다.


가중치가 서로 다른 방식으로 초기화되었을 때 :
### Lecun Initialization
 - **LeCun Initialization**는 LeNet의 창시자이며, CNN을 세상에 도입한 사람이 효과적인 역전파를 위한 초기화 방법인데 정규분포를 따르는 방법과 균등분포를 따르는 두가지 방법에 대해서 소개했다.
#### LeCun Nomal Initialization
$$W\sim N(0,V_{ar}(W))$$
$$V_{ar}(W)=\sqrt{\frac{2}{n_{in}}}$$
($n_{in}$ : 이전 layer(input)의 노드 수)
#### LeCun Uniform Initailization
$$W\sim U(-\sqrt{\frac{1}{n_{in}}}, +\sqrt{\frac{1}{n_{in}}})$$
 
### Xavier Initialization
**Xavier 초기화 전략**을 사용합니다. Xavier 초기화 전략은 신경망을 균등하게 초기화하는 방법으로, **활성화 함수로 sigmoid 사용**시 input의 절대값이 조금 커지게 되면 미분값이 소실되는 문제를 해결하기 위해 사용됩니다. 이전 레이어의 뉴런 개수와 다음 레이어의 뉴런 개수에 따라 초기화 가중치를 조절하여 **그레디언트 소실 또는 폭주 문제**를 완화합니다. LeCun의 초기화 방법과 유사하지만 다음 층의 노드 수도 사용하고, 많은 연구를 통해 가장 최적화된 상수값 또한 찾아냈다.
#### Xavier Normal Initialization
$$W\sim N(0,V_{ar}(W))$$
$$V_{ar}(W)=\sqrt{\frac{2}{n_{in}+n_{out}}}$$
($n_{in}$ : 이전 layer(input)의 노드 수, $n_{out}$ : 다음 layer의 노드 수)
#### Xavier Uniform Initailization
$$W\sim U(-\sqrt{\frac{6}{n_{in}+n_{out}}}, +\sqrt{\frac{6}{n_{in}+n_{out}}})$$
 
 Xiaver함수는 비선형함수(ex. sigmoid, tanh)에서 효과적인 결과를 보여준다. 하지만 **ReLU 함수에서 사용 시 출력 값이 0으로 수렴**하게 되는 현상을 확인 할 수 있다. 따라서 ReLU함수에는 또 다른 초기화 방법을 찾아야 한다.

#### He Initialization
**He Initalization**은 ReLU를 활성화 함수로 사용 시 Xavier 초기값 설정이 비효율적인 결과를 보이는 것을 확인했는데, 이런 경우 사용하는 초기화 방법이다. 이 방법 또한 정규분포와 균등분포 두가지 방법이 사용된다.
- He Nomal Initialization
$W\sim N(0,V_{ar}(W))$
$V_{ar}(W)=\sqrt{\frac{2}{n_{in}}}$
($n_{in}$ : 이전 layer(input)의 노드 수)
- He Uniform Initailization
$W\sim U(-\sqrt{\frac{6}{n_{in}}}, +\sqrt{\frac{6}{n_{in}}})$