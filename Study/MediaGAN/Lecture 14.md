# Convolution Network
## Convolution Layers
### Zero Padding

### Receptive Field
커널 크기가 K인 컨볼루션의 경우 출력의 각 요소는 입력의 K * K 수용필드
![[Pasted image 20231020135832.png]]
각각의 연속적인 컨볼루션은 수용 필드 크기에 K-1을 추가합니다.
L 레이어의 경우 수용 필드의 크기는 $1+L*(K-1)$ 

> 키우려면 커널 사이즈를 키워야지 3 * 3을 여러개 쓰는 것과 큰 커널 하나
> 커널사이즈가 커질수록 계산량이 늘어난다.

### Strided Convolution
사진 넣자 gif로
### Convolution Example
Input : 3 * 32 * 32 (Input volumn = 3)
10, 3 * 5 * 5 filters with stride 1, pad 2

Output volume size : $\frac{32+2*2-5}{1+1}=32$, spatially, so $10 * 32 * 32 = 10240$
Number of learnable parameters : Parameters per filter * 10 filters = 760
learnable parameter는 filter와 입력 채널 수와 관련이 있다.
Parameters per filter : $3 * 5 * 5 + 1 = 76$ (for bias)
Number of multiply-add operations : outputs * tensors, $10240*75=768K$

### Other Convolution
#### 1D Convolution

#### 3D Convolution
커널이 3D, 입력 채널이 4D (+depth)

## Pooling Layers
### LeNet-5


## Normalization
### Batch Normalization
Idea : 각 레이어의 출력을 "**정규화**"하여 평균과 단위 분산이 0이 되도록 합니다.
내부 공변량 이동 (Internal covariate shift)를 줄여 최적화를 향상시킵니다.
내부 공변량이란? Learnable parameter말고 변하는 값이 있다.

활성화 배치(A batch of activations)를 정규화할 수 있습니다.
$$\hat x=\frac{{x-E[x]}}{\sqrt{{Var[x]}}}$$
미분 가능한 함수로 네트워크에서 연산자로 사용하고 이를 통과하며 역전파를 할 수 있다.

