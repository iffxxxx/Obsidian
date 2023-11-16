## 지난 강의 요약
이미지 분류기는 매개변수(parameter or weight)로 구성된 함수로 표현 가능하다.
목적 함수(또는 손실 함수, loss function)은 실제 값과 예측 값의 차이를 나타내는 함수이다.
최적화는 목적 함수를 최소화하는 매개변수 찾는 과정입니다.
	경사하강법은 미분을 사용한 최적화 기법 중 하나입니다.
	역전파는 신경망에 경사하강법을 적용하기 위한 수학적 트릭이다.
	

## VGGNet
Q : Why use smaller filters? (3 * 3 conv)
A : 뉴럴네트워크 - 레이어마다 Relu - 비선형성 - Effective receptive field - 비선형이 많아지면 이미지들의 디테일 ,Feature를 분석할때 더 복잡한 함수로 구분할수 있다
스택 많이 해서 effective receptive field

1 * 1 을 선택하는 것은 spacial한 정보를 못본다?
풀링으로 줄이면서 spacial한 정보를 보고 모든 네트워크는 1by 1
transformer도 1 * 1로 사용하는 것도 많다

메모리도 종류가 많다 - GPU메모리

Gradiant에 대한 플로팅 포인트를 생성해놔야 

## GoogLeNet
INception : 네트워크 안에 네트워크
이전 레이어의 입력에 영향을 받는

1 * 1 convolution : 단점이 많다 >>  spacial 정보를 못본다

flick connected layer - average pooling

