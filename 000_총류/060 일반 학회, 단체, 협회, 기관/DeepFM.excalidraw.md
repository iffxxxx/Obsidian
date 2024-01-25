---

excalidraw-plugin: parsed
tags: [excalidraw]

---
==⚠  Switch to EXCALIDRAW VIEW in the MORE OPTIONS menu of this document. ⚠==


# Text Elements
DEEPFM ^q4HgIucT

CTR ^GK3BKitr

CTR이란 (Clikc-through rate)로 추천된 아이템을
유저가 클릭할 확률

추천시스템에 있어 CTR은 매우 중요한 요소 중 하나

Ranking Sort 기준은 CTR   bid 값으로 조정 ^woPkp4sQ

2017년 발표된 논문으로 Factorization Machine을
신경망으로 확장한 DeepFM 모델 제안 ^oSXzoabA

%%***>>>text element-link:[[00_Recommender_Systems#Implicit_vs_Explicit]]<<<***%%Implicit feature ^GUTZRWIU

학습 요소 ^zILDYHwL

식사시간(시간)에 음식 배달 앱(앱 종류)을 자주 다운로드
앱 종류와 시간 사이의 order-2 Interaction이 
CTR의 신호

남자(성별) 아이들(나이)이 슈팅게임 어플(앱 종류)을 선호
성별, 나이, 앱 종류 사이의 order-3 Interaction이
CTR의 신호

위의 예시들은 누구나 납득할만한 Interaction이며,
전문가를 고용하여 모델링이 가능 ^phjZ7ZH6

CTR? ^gtDauUeq

일반적인 접근법 ^ARPfDggG

Related Studies ^q1MjBx4p

2010년에 발표된 FM(Factorization Machine)은 Latent
space로 각각의 특성들을 매핑하여 내적을 통해 Interaction
을 계산할 수 있는 방법입니다.
 ^vuHjbpWn

위의 식을 통해 order-2에서부터 order-n까지의 
Interaction을 내적을 통해 모두 모델링 할 수 있습니다.   ^jdj2uvvr

해결방안 ^zWORx80X

피쳐 벡터들 간의 pairwise interaction을 직접 feature ^moCIA2oh

기저귀를 구매하는 사람은 맥주를 함께 구매한다(order-2)
와 같은 대부분의 Interaction들은 데이터 속에 숨겨짐.

(아버지들이 기저귀를 기저귀를 자주 구매하는 듯 한다)
위와 같은 Interaction들은 전문가조차 찾기 힘들다.
 ^ebK8nqVk

결합 ^xWE7M7SM

Bid? ^TTl5qHkx

유저가 아이템을 클릭할 때마다 받는 보상값 ^Ub2G9d7i

즉, 피쳐들간의 상호작용을 모델링하는 것이 목적 ^WmOy8sKw

대부분의 피쳐 상호작용은 데이터 속에 숨겨져 있고
이를 선험적(prior)으로 알기 어렵다. ^TJHlTldr

문제정의: ^vde9RmJW

일반화된 선형 모델 (FTRL)은 간단하지만 준수한 성능
허나 선형 모델은 피쳐 상호작용을 학습하기는 어려움 ^Z2PtTnQu

Why? ^hFKivGyP

선형성 : 비선형 관계나 상호작용을 잘 표현하지 못함
고차원 특성 : 데이터는 고차원, 복잡한 상호작용 모델링 힘듦
계산 복잡성 : 많은 수의 매개변수 필요, 계산 비용 증가, 
                과적합 위험 ^5o6LqlRY

문제 정의: ^oZmfFkjL

단점: ^ZIBw5s3D

FM모델이 높은 차원의 Feature Interaction을 모델링 가능
허나, 실제로는 높은 복잡도 때문에 거의 order-2 상호작용만 ^DjiJ7pBb

CNN과 같이 ^UezxAaVr

A Convolutional Click Prediction Model ^9jzL3QPr

2015년 - 145회 인용 ^zRpClNm9

단점 ^TzmSzFUw

DNN과 같이 ^8tniQCKt

DNN이 효율적으로 작동하도록 하기 위해  
세가지 특징 변환 방법, 

인수분해 머신(FM), 
제한 볼츠만 머신(RBM), 
노이즈 제거 자동 인코더(DAE)를 활용 ^DReQyQrX

단점 ^uPBL2LQM

해결방안: ^RsONSwcR

FM의 성능 제한을 받는다. ^7UQZUTAs

feature interaction? ^huF5ai1E

Product-based Neural Networks for 
UserResponse Prediction ^vhgUMQ32

카테고리 데이터의 분산 표현을 학습하기 위한 임베딩 레이어, 
필드 간 카테고리 간의 상호작용 패턴을 포착하기 위한 제품 
레이어, 그리고 고차 특징 상호작용을 탐색하기 위한 
완전 연결 레이어가 포함된 제품 기반 신경망(PNN)을 제안 ^lMUCL69X

CNN 기반 모델은 인접한 피쳐를 학습하는 편향성 ^efOBj3h2

이미지 처리에 특화된 구조로 이미지 데이터 내에서
근접한 픽셀 간의 패턴 및 공간적인 관계를 학습하는데 강점 ^bvOtmy6F

RNN 기반 모델은 연속성이 있어 클릭 데이터에 적합 ^C3LVEl0z

순차적인 데이터를 처리하는데 강점
이전 시간 단계의 출력이 현재 시간의 입력으로 사용되기에
시퀸스 데이터의 연속성을 잘 학습할 수 있다. ^6Y8njjCN

완전 연결 레이어 포함 ^rRmfrMLn

embedding layer와 fully-connected layer 사이에 
product layer를 도입 ^4qJ40Lvf

해결방안: ^V1Mvv5HF

Wide & Deep Learning for 
Recommender Systems ^99Bs0Muz

wide linear model과 dnn을 jointly train하는 
Wide & Deep learning을 소개하며 이는 recommender 
system에 대한 memorization과 generalization의 이점을 
결합하고 있다. ^3u3MeBQi

단점 ^HoT9UGnC

Deep Learning over Multi-field 
Categorical Data ^JAQGQX0a

심층신경망(DNN)을 사용하여 범주형 특징 상호작용에서 
효과적인 패턴을 자동으로 학습하고 사용자의 광고 클릭을 
예측하는 새로운 모델
FM supported Neural Network(FNN)을 제안 ^93XYqeVL

낮은 차원의 피처 상호작용 포착하지 못함 ^URbH6FLo

Why? ^bo8eVoIn

PNN과 FNN은 주로 피처 임베딩을 사용하여 입력 피처를 
저차원의 벡터로 매핑합니다. 피처 임베딩은 피처를 
밀집 벡터로 표현하는데, 낮은 차원의 벡터로 표현되면서 
피처 간의 상호작용을 제대로 포착하기 어려워집니다.  ^sGWF2J8e

단점: ^zl2TErTR

PNN과 FNN은 다른 딥러닝 모델처럼 낮은 차원의 특징 
상호작용을 거의 포착하지 못하는데, 이는 CTR 예측에 
필수적인 요소이기도 합니다. ^XksToshA

추가설명: ^IJWK1fQp

피쳐 임베딩 ^egBloQMm

저차원 특성 공간: ^T0AtoJKo

범주형 피처(예: 성별, 도시, 제품 등)는 일반적으로 
원-핫 인코딩으로 표현됩니다. 하지만 이러한 표현은 
고차원이며 희소한 벡터로 나타납니다. 이를 해결하기 위해 
신경망은 피처 임베딩을 사용하여 범주형 피처를 저차원의 
밀집 벡터로 매핑합니다. 임베딩 레이어의 가중치 행렬을 
학습함으로써, 각 범주형 값은 연속적이고 학습 가능한 
표현으로 변환됩니다. ^AtaOH2G6

임베딩을 통해 얻은 벡터는 일반적으로 저차원의 공간에 
위치하게 됩니다. 예를 들어, 성별을 나타내는 피처를 2차원의 
벡터로 임베딩할 경우, 남성과 여성은 각각 다른 2차원 
벡터에 매핑됩니다. 이러한 저차원 특성 공간에서는 피처 간의
 상호작용을 표현하기가 한계가 있습니다. ^gbbYd5ie

예시: ^anwplova

성별 "남성", "여성" ^LcesrzB3

특성 키 추가 ^WI6sRNVp

상호작용의 예시로, 만약 "키"라는 추가 피처가 있다면, 
"남성"일 때 "키" 피처의 영향이 "여성"일 때와 다를 수 
있습니다. 낮은 차원의 임베딩에서는 이러한 복잡한 특성 
간의 상호작용을 잘 표현하기 어려울 것입니다.  ^IrNZp4yi

성별을 예로 들어보겠습니다. 가정하자면 성별은 
"남성"과 "여성"이라는 두 가지 범주로 나뉠 수 있는 
피처입니다. 각 범주를 2차원의 벡터로 임베딩한다고 
가정하면 다음과 같을 수 있습니다:

"남성"을 나타내는 2차원 임베딩 벡터: [0.8, -0.5]
"여성"을 나타내는 2차원 임베딩 벡터: [-0.7, 0.9] ^YW0gr6Xf

linear(wide) + Deep ^yhQrI37Y

해결방안 1: ^cG8mTWhz

Memorization ^xXND7mQQ

일반적인 regression은 종종 One-hot vector를 사용하여 
학습합니다. Memorization은 기존의 특성들을 사용하여 새로운 
특성을 만들어 학습하는 것을 의미합니다. 일반적으로 
간단하게 Memorization은 동시출현(co-occurrence)빈도를 
표현하는 Cross-product로 생성이 가능합니다. ^H40TDvkU

Cross-product Tranformation ^BvWoYZ20

One-hot vector 사이의 AND 연산(cross product)을 통해
동시출현 여부를 의미하는 새로운 Binary feature를 생성할 
수 있습니다.

예를 들어, AND(User = 정구섭, Item = 맥북) 이라는 새로운 
Memorization 특성은 One-hot 특성간의 Cross-product 
transformation을 통해 생성이 가능합니다. ^gzPinRvH

[참고](https://supkoon.tistory.com/32) ^CdDT6gpz

Generalization ^nhs9fcHl

새로운 특성 조합에 대한 일반화된 예측을 가능하게 하는 
방법입니다. Matrix Factorization , Factorization 
Machines 같은 임베딩 기반 모델들은 각각의 특성들을 동일한 
차원의 잠재 공간으로 매핑하여 Dense 벡터로 
표현합니다. 새로 표현된 Dense 특성벡터는 서로 내적이 
가능하며, 따라서 별도의 Cross-product transformation
을 필요로 하지 않습니다. 무엇보다도 Generalization은 
과거에 관측되지 않은 특성의 조합에 대한 일반화된 예측을 
제공해 줍니다. ^solpdiEq

효과 ^yaFrOSO5

추천시스템에서 Generalization은 추천의 다양성을 증가
비주류 아이템을 거의 추천하지 않는 Long-tail problem 극복 ^xQPAovzh

등장하지 않은 조합에 대한 
설명력이 떨어짐 ^v8uVkL26

해결방안 2: ^COtzUc1j

[long tail](01_Evaluating_Recommender_Systems#Novelty) ^2bkCbej3

Dense Vector? ^Zd7jPvlx

실제로 존재할 수 없는 관계를
과도하게 일반화 가능성 ^01xPaPQ0

상호보완적 ^9U1ItVqy

일반적인 패턴 ^jboLMRP1

복잡한 패턴 ^aXtAVXR4

Wide는 memorization을 담당 ^kKty8OzJ

feature set x는 개별적인 raw 특성과 cross-product
transformation으로 생성된 새로운 특성을 함께 포함 ^fEnRUueM

Generalized linear model ^aRk82atg

모델의 파라미터 ^9uBLtgXj

bias ^vNAdpXxE

feature vector에 대한 예측값  ^DozKNSsU

라고 가정 ^CJg5hhRg

k번째 cross-product transformation
유저(x_1)와 나이(x_3)의 cross-product를 고려하는 특성 ^klEOyw2u

i번째 특성이 포함되면 해당 C_ki는 1로 세팅된다. ^9pqqUvSZ

이는 cross-product feature를 계산하기 위해
선택된 개별 boolen 특성의 곱을 의미합니다. ^3j2LPRXE

Wide part는 새로운 특성을 기존의 raw특성에 concatenate하여
모델을 학습합니다. 이는 linear 모델 자체에 비선형성 추가 ^2ngxSaiL

feed-forward neural network ^HVMisXFr

Categorical feature는 embedding layer을 통해 저차원의
특성으로 변환 ^cuIUaY4P

Continuous feature와 concatenate되어 심츰 신경망의
입력이 됩니다. ^eTWk3yAB

랜덤으로 초기화되며 모델 학습과정에서
같이 학습 ^8VmV4Khf

각각의 hidden layer에서는 위와 같은 일반적인 신경망
연산이 진행됩니다.
L번째 층의 W(weight), b(bias), 
a(activation function) ReLu 사용 ^A8ezqNKX

Joint Training of
Wide & Deep ^nXdx8qGB

Output layer에서 Wide part와 Deep part의 output 가중 ^a7OCepMm

따라서 모델은 일반적인 logistic regression을 사용하여 동시에 
학습(joint training)이 가능합니다. ^XOrBUFpR

(weight sum) ^6cMfCFEn

Optimizer:
FTRL 알고리즘 ^M7NBhfGA

Optimizer:
AdaGrad ^wkL3Advz

cross-product feature ^0YbMcYKn

raw feature ^AgjzFRCn

일반적인 binary classification의 경우 모델의 예측은 다음과
같습니다: ^yZUkBL9U

final activation ^nKWZEin9

concat ^nBOw0KRU

마지막으로 sigmoid 함수를 통해 예측을 진행합니다. ^xfnXVjWM

그냥 앙상블 아니야? ^BdzMPsdJ

wide & deep은 output layer를 통하여 동시에 역전파가 진행 ^HKrrBEhC

App acquisition gain 평가 ^AjeJ0VM3

추천시스템 사용에 따른 어플 다운로드의 증감을 분석
실험은 3주간 A/B test로 진행 ^CwjCPxSv

Offline vs. Online ^skuhiHBE

추천시스템 사용에 따른 어플 다운로드의 증감을 분석
실험은 3주간 A/B test로 진행 ^Q0Cowx5V


# Embedded files
1acd85ab268aa15908884e70b2120d6f3eafdc60: $$\times
$$
6aa9fd2d74590eb9cbe3391d3dec3b6ea0bd1a59: $$\color{blue}y=W^{T}x+b$$
b51a612cdf93b53423fbf3c025058dad0b22cf32: $$\color{blue}w = [w_1, w_2, \cdots, w_d]$$
0e93d87ec0160be7094417aff18edee3e0a43426: $$\color{blue}x=[x_1, x_2, \cdots, x_d]$$
ca39c8b8fe5df873e923654a8772e2839ebb28bd: $$\color{blue}\phi_k(x)=\Pi^{d}_{i=1}{x_{i}^{C_{ki}}}, \; C_{ki} \in \{0,1\}$$
e524c6521ab1fc19ece619fff3c8e36677ab71f9: $$\color{blue}x=[유저, 아이템, 나이]$$
ce33e7389bcda96c6d9ad59d4743095f443c641a: $$\color{blue}\phi_k(x)=x_{유저}^{1}x_{아이템}^{0}x_{나이}^{1}$$
49f769bd60e56cba873d5bdcb465f52f4c8a887c: $$\color{blue}a^{(l+1)}=f(W^{(l)}a^{(l)}+b^{(l)})$$
940883eb07e659eee04927b1dcdec78ad0bb723c: $$\color{blue}P(Y=1|x)=σ(w^T_{wide}[x,φ(x)]+w^T_{deep}a^{(lf)}+b)$$
13c9ee52728b723a0340730c28d19618c8be616b: [[Pasted Image 20240118210956_301.png]]
238684eaf896cacd041c8ce3215c3c8f7b330ced: [[Pasted Image 20240122001632_748.png]]
bdb9ea3364a7abdc205f780176b173ccf12a3a34: [[Pasted Image 20240122020009_943.png]]
6df3d62f89062b41d078fce5b944b233e9d6542d: [[Pasted Image 20240125204524_697.png]]
b55d921621d8d0f82b8935e205bb73902fe0c971: [[Pasted Image 20240125205539_651.png]]
972b5e540823051b0ba3f9ac4102f48db34dc098: [[Pasted Image 20240125215542_172.png]]
74c86f88ad1fdb3e46980244e2ac71de9ca18980: [[Pasted Image 20240125221240_328.png]]
adfd9929ab4e3487582554fca6b4b6e27845c8ad: [[Pasted Image 20240125223116_516.png]]
c923556ebfb6e09f445ea261fc8ff4c303e11eda: [[Pasted Image 20240125234448_409.png]]

%%
# Drawing
```json
{
	"type": "excalidraw",
	"version": 2,
	"source": "https://github.com/zsviczian/obsidian-excalidraw-plugin/releases/tag/2.0.17",
	"elements": [
		{
			"id": "gkpdWh9aOgarGenzqbl7v",
			"type": "rectangle",
			"x": 818.5884296833506,
			"y": 4691.11682533987,
			"width": 935.865245139755,
			"height": 483.34355512386355,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#1e1e1e",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 2,
			"opacity": 100,
			"groupIds": [
				"AYA-UaFPBDuF_WmLtkFcc"
			],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"seed": 1071326850,
			"version": 1004,
			"versionNonce": 918792514,
			"isDeleted": false,
			"boundElements": [
				{
					"id": "NsjHvNldd5hG6CR7NPr-F",
					"type": "arrow"
				},
				{
					"id": "HxRY02gXwbyB5mu4TZb02",
					"type": "arrow"
				}
			],
			"updated": 1706194040534,
			"link": null,
			"locked": false
		},
		{
			"id": "e0NYpWq1htVibVlxDYtmt",
			"type": "image",
			"x": 846.3387389640739,
			"y": 4718.983497155056,
			"width": 876,
			"height": 438,
			"angle": 0,
			"strokeColor": "transparent",
			"backgroundColor": "#1e1e1e",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 2,
			"opacity": 100,
			"groupIds": [
				"AYA-UaFPBDuF_WmLtkFcc"
			],
			"frameId": null,
			"roundness": null,
			"seed": 886148958,
			"version": 1435,
			"versionNonce": 1201144798,
			"isDeleted": false,
			"boundElements": [
				{
					"id": "HxRY02gXwbyB5mu4TZb02",
					"type": "arrow"
				}
			],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "972b5e540823051b0ba3f9ac4102f48db34dc098",
			"scale": [
				1,
				1
			]
		},
		{
			"id": "sX9xz_tcEV9FAoiSZt6qv",
			"type": "arrow",
			"x": 1428.1647020118644,
			"y": 4001.6484648349506,
			"width": 22.850237502557547,
			"height": 239.8338632396326,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "dashed",
			"roughness": null,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"seed": 786686018,
			"version": 1953,
			"versionNonce": 549531906,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					22.850237502557547,
					239.8338632396326
				]
			],
			"lastCommittedPoint": null,
			"startBinding": {
				"elementId": "jCRDL8XF",
				"focus": -0.873515918096794,
				"gap": 5.687171154477937
			},
			"endBinding": {
				"elementId": "9pqqUvSZ",
				"focus": 0.4817224121463288,
				"gap": 2.618380669355247
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"type": "rectangle",
			"version": 849,
			"versionNonce": 736614430,
			"isDeleted": false,
			"id": "JU4jNdfb82S-nHV0dyrI1",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2226.529234113279,
			"y": 2635.087561653853,
			"strokeColor": "#e03131",
			"backgroundColor": "#ffc9c9",
			"width": 817.0666503906242,
			"height": 461.0173870902813,
			"seed": 654097347,
			"groupIds": [],
			"frameId": "0D2toMuhV6qy2w5Blvi6C",
			"roundness": {
				"type": 3
			},
			"boundElements": [],
			"updated": 1706194040535,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 680,
			"versionNonce": 1228390594,
			"isDeleted": false,
			"id": "I0ZLWxhbtCMX1qgMrQ5_a",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 640.8005981445312,
			"y": -951.6721216837562,
			"strokeColor": "#000000",
			"backgroundColor": "#a5d8ff",
			"width": 577.6000366210938,
			"height": 572,
			"seed": 1704014154,
			"groupIds": [],
			"frameId": "xypwCSRmvveY3TFu7EULd",
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"id": "ZBnbuoHoKJLjN2pLtabZh",
					"type": "arrow"
				},
				{
					"id": "N1Ri-QHvsohZgJLD2LkZf",
					"type": "arrow"
				},
				{
					"id": "aXSV0EcqZGTyMsoC8MfDd",
					"type": "arrow"
				}
			],
			"updated": 1706194040535,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 442,
			"versionNonce": 1471358046,
			"isDeleted": false,
			"id": "q4HgIucT",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 663.9339599609375,
			"y": -932.3166264851885,
			"strokeColor": "#e03131",
			"backgroundColor": "transparent",
			"width": 102.5279541015625,
			"height": 43.199999999999996,
			"seed": 516418646,
			"groupIds": [],
			"frameId": "xypwCSRmvveY3TFu7EULd",
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"fontSize": 36,
			"fontFamily": 4,
			"text": "DEEPFM",
			"rawText": "DEEPFM",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "DEEPFM",
			"lineHeight": 1.2,
			"baseline": 34
		},
		{
			"type": "embeddable",
			"version": 1098,
			"versionNonce": 197548162,
			"isDeleted": false,
			"id": "tR4AqLuUuRqxb5eVH3get",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 665.1691467407861,
			"y": -876.5684027934233,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 526.9284250926655,
			"height": 285.42267204428805,
			"seed": 1808083094,
			"groupIds": [],
			"frameId": "xypwCSRmvveY3TFu7EULd",
			"roundness": {
				"type": 3
			},
			"boundElements": [],
			"updated": 1706194040535,
			"link": "https://arxiv.org/pdf/1703.04247.pdf",
			"locked": false,
			"validated": true,
			"scale": [
				1,
				1
			]
		},
		{
			"type": "arrow",
			"version": 2292,
			"versionNonce": 1019930782,
			"isDeleted": false,
			"id": "ZBnbuoHoKJLjN2pLtabZh",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 2,
			"opacity": 100,
			"angle": 0,
			"x": 928.0598655797993,
			"y": -968.5634043843373,
			"strokeColor": "#e03131",
			"backgroundColor": "transparent",
			"width": 4.668223294235432,
			"height": 237.3846301002037,
			"seed": 714003294,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "gtDauUeq"
				}
			],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "I0ZLWxhbtCMX1qgMrQ5_a",
				"focus": 0.01499766216046745,
				"gap": 16.891282700581087
			},
			"endBinding": {
				"elementId": "MAy6wUQl",
				"focus": 0.09419951504218248,
				"gap": 12.203209061410007
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-4.668223294235432,
					-237.3846301002037
				]
			]
		},
		{
			"type": "text",
			"version": 178,
			"versionNonce": 2016147522,
			"isDeleted": false,
			"id": "gtDauUeq",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 94.3518983418613,
			"y": -320.05572960696554,
			"strokeColor": "#e03131",
			"backgroundColor": "transparent",
			"width": 52.079986572265625,
			"height": 33.6,
			"seed": 897572704,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "CTR?",
			"rawText": "CTR?",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "ZBnbuoHoKJLjN2pLtabZh",
			"originalText": "CTR?",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "rectangle",
			"version": 1325,
			"versionNonce": 1793074398,
			"isDeleted": false,
			"id": "MAy6wUQl",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 656.4620131810831,
			"y": -1790.151243545951,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 577.6000366210938,
			"height": 572,
			"seed": 780288672,
			"groupIds": [],
			"frameId": "DZh1jPdZmLUojklmLsu6x",
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"id": "ZBnbuoHoKJLjN2pLtabZh",
					"type": "arrow"
				},
				{
					"id": "I-9PL8fW6hvKsli_bTsN-",
					"type": "arrow"
				}
			],
			"updated": 1706194040535,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 727,
			"versionNonce": 1313316866,
			"isDeleted": false,
			"id": "GK3BKitr",
			"fillStyle": "hachure",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 688.8176006105533,
			"y": -1752.4178179817152,
			"strokeColor": "#e03131",
			"backgroundColor": "transparent",
			"width": 56.37599182128906,
			"height": 43.199999999999996,
			"seed": 257762976,
			"groupIds": [],
			"frameId": "DZh1jPdZmLUojklmLsu6x",
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"fontSize": 36,
			"fontFamily": 4,
			"text": "CTR",
			"rawText": "CTR",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "CTR",
			"lineHeight": 1.2,
			"baseline": 34
		},
		{
			"type": "text",
			"version": 984,
			"versionNonce": 1401149726,
			"isDeleted": false,
			"id": "woPkp4sQ",
			"fillStyle": "hachure",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 694.1511238310394,
			"y": -1664.684563315917,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 466.78778076171875,
			"height": 201.60000000000002,
			"seed": 1065861792,
			"groupIds": [],
			"frameId": "DZh1jPdZmLUojklmLsu6x",
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "CTR이란 (Clikc-through rate)로 추천된 아이템을\n유저가 클릭할 확률\n\n추천시스템에 있어 CTR은 매우 중요한 요소 중 하나\n\nRanking Sort 기준은 CTR   bid 값으로 조정",
			"rawText": "CTR이란 (Clikc-through rate)로 추천된 아이템을\n유저가 클릭할 확률\n\n추천시스템에 있어 CTR은 매우 중요한 요소 중 하나\n\nRanking Sort 기준은 CTR   bid 값으로 조정",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "CTR이란 (Clikc-through rate)로 추천된 아이템을\n유저가 클릭할 확률\n\n추천시스템에 있어 CTR은 매우 중요한 요소 중 하나\n\nRanking Sort 기준은 CTR   bid 값으로 조정",
			"lineHeight": 1.2,
			"baseline": 194
		},
		{
			"type": "text",
			"version": 387,
			"versionNonce": 2048413634,
			"isDeleted": false,
			"id": "TTl5qHkx",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 695.3027270648732,
			"y": -1452.7065457815456,
			"strokeColor": "#e03131",
			"backgroundColor": "transparent",
			"width": 32.89997863769531,
			"height": 33.6,
			"seed": 19892877,
			"groupIds": [],
			"frameId": "DZh1jPdZmLUojklmLsu6x",
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "Bid?",
			"rawText": "Bid?",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Bid?",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "text",
			"version": 492,
			"versionNonce": 237438302,
			"isDeleted": false,
			"id": "Ub2G9d7i",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 697.96939373154,
			"y": -1399.106496953421,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 292.119873046875,
			"height": 24,
			"seed": 1807805741,
			"groupIds": [],
			"frameId": "DZh1jPdZmLUojklmLsu6x",
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 4,
			"text": "유저가 아이템을 클릭할 때마다 받는 보상값",
			"rawText": "유저가 아이템을 클릭할 때마다 받는 보상값",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "유저가 아이템을 클릭할 때마다 받는 보상값",
			"lineHeight": 1.2,
			"baseline": 18
		},
		{
			"type": "frame",
			"version": 903,
			"versionNonce": 264046466,
			"isDeleted": false,
			"id": "DZh1jPdZmLUojklmLsu6x",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 625.1646003405415,
			"y": -1833.8117629778094,
			"strokeColor": "#bbb",
			"backgroundColor": "transparent",
			"width": 641.6000976562501,
			"height": 659.2000732421875,
			"seed": 1964057440,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "I-9PL8fW6hvKsli_bTsN-",
					"type": "arrow"
				}
			],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"customData": {
				"frameColor": {
					"stroke": "#2B2B2B",
					"fill": "#525252",
					"nameColor": "#6B6B6B"
				}
			},
			"name": null
		},
		{
			"type": "text",
			"version": 504,
			"versionNonce": 471509406,
			"isDeleted": false,
			"id": "oSXzoabA",
			"fillStyle": "hachure",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 669.8314704577291,
			"y": -551.5450189999449,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 455.4197692871094,
			"height": 67.2,
			"seed": 1210613408,
			"groupIds": [],
			"frameId": "xypwCSRmvveY3TFu7EULd",
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "2017년 발표된 논문으로 Factorization Machine을\n신경망으로 확장한 DeepFM 모델 제안",
			"rawText": "2017년 발표된 논문으로 Factorization Machine을\n신경망으로 확장한 DeepFM 모델 제안",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "2017년 발표된 논문으로 Factorization Machine을\n신경망으로 확장한 DeepFM 모델 제안",
			"lineHeight": 1.2,
			"baseline": 60
		},
		{
			"type": "rectangle",
			"version": 1496,
			"versionNonce": 1198835522,
			"isDeleted": false,
			"id": "NSo4GmfTI0HwEEMwN-uQl",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 639.8071978858184,
			"y": -2668.017831536936,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 577.6000366210938,
			"height": 572,
			"seed": 1841226400,
			"groupIds": [],
			"frameId": "WzpDNumaP0gcIe9j0-SQy",
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"id": "I-9PL8fW6hvKsli_bTsN-",
					"type": "arrow"
				}
			],
			"updated": 1706194040535,
			"link": null,
			"locked": false
		},
		{
			"type": "arrow",
			"version": 1878,
			"versionNonce": 747619806,
			"isDeleted": false,
			"id": "I-9PL8fW6hvKsli_bTsN-",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 933.8836049032659,
			"y": -1808.551068587157,
			"strokeColor": "#e03131",
			"backgroundColor": "transparent",
			"width": 3.4220611764685174,
			"height": 278.1577835685641,
			"seed": 587400864,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "zILDYHwL"
				}
			],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "MAy6wUQl",
				"focus": -0.026113704030583943,
				"gap": 18.399825041205986
			},
			"endBinding": {
				"elementId": "NSo4GmfTI0HwEEMwN-uQl",
				"focus": 0.006084929340292106,
				"gap": 9.308979381214613
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-3.4220611764685174,
					-278.1577835685641
				]
			]
		},
		{
			"type": "text",
			"version": 149,
			"versionNonce": 2040434434,
			"isDeleted": false,
			"id": "zILDYHwL",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1302.5756721178855,
			"y": -1186.0782261939553,
			"strokeColor": "#e03131",
			"backgroundColor": "transparent",
			"width": 105.4439697265625,
			"height": 43.199999999999996,
			"seed": 804024160,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"fontSize": 36,
			"fontFamily": 4,
			"text": "학습 요소",
			"rawText": "학습 요소",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "I-9PL8fW6hvKsli_bTsN-",
			"originalText": "학습 요소",
			"lineHeight": 1.2,
			"baseline": 34
		},
		{
			"type": "text",
			"version": 605,
			"versionNonce": 1620531742,
			"isDeleted": false,
			"id": "GUTZRWIU",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 668.2071917823027,
			"y": -2627.6176362244355,
			"strokeColor": "#e03131",
			"backgroundColor": "transparent",
			"width": 215.8918914794922,
			"height": 43.199999999999996,
			"seed": 2120939360,
			"groupIds": [],
			"frameId": "WzpDNumaP0gcIe9j0-SQy",
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040535,
			"link": "[[00_Recommender_Systems#Implicit_vs_Explicit]]",
			"locked": false,
			"fontSize": 36,
			"fontFamily": 4,
			"text": "Implicit feature",
			"rawText": "Implicit feature",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Implicit feature",
			"lineHeight": 1.2,
			"baseline": 34
		},
		{
			"type": "text",
			"version": 990,
			"versionNonce": 448356034,
			"isDeleted": false,
			"id": "phjZ7ZH6",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 669.0072406104277,
			"y": -2538.417416497873,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 502.7397766113281,
			"height": 336,
			"seed": 1613364896,
			"groupIds": [],
			"frameId": "WzpDNumaP0gcIe9j0-SQy",
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "식사시간(시간)에 음식 배달 앱(앱 종류)을 자주 다운로드\n앱 종류와 시간 사이의 order-2 Interaction이 \nCTR의 신호\n\n남자(성별) 아이들(나이)이 슈팅게임 어플(앱 종류)을 선호\n성별, 나이, 앱 종류 사이의 order-3 Interaction이\nCTR의 신호\n\n위의 예시들은 누구나 납득할만한 Interaction이며,\n전문가를 고용하여 모델링이 가능",
			"rawText": "식사시간(시간)에 음식 배달 앱(앱 종류)을 자주 다운로드\n앱 종류와 시간 사이의 order-2 Interaction이 \nCTR의 신호\n\n남자(성별) 아이들(나이)이 슈팅게임 어플(앱 종류)을 선호\n성별, 나이, 앱 종류 사이의 order-3 Interaction이\nCTR의 신호\n\n위의 예시들은 누구나 납득할만한 Interaction이며,\n전문가를 고용하여 모델링이 가능",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "식사시간(시간)에 음식 배달 앱(앱 종류)을 자주 다운로드\n앱 종류와 시간 사이의 order-2 Interaction이 \nCTR의 신호\n\n남자(성별) 아이들(나이)이 슈팅게임 어플(앱 종류)을 선호\n성별, 나이, 앱 종류 사이의 order-3 Interaction이\nCTR의 신호\n\n위의 예시들은 누구나 납득할만한 Interaction이며,\n전문가를 고용하여 모델링이 가능",
			"lineHeight": 1.2,
			"baseline": 329
		},
		{
			"type": "frame",
			"version": 659,
			"versionNonce": 253912670,
			"isDeleted": false,
			"id": "WzpDNumaP0gcIe9j0-SQy",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 614.2071917823027,
			"y": -2694.4176423279514,
			"strokeColor": "#bbb",
			"backgroundColor": "transparent",
			"width": 640,
			"height": 632.0000305175781,
			"seed": 2105960096,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "-2j90jjP8ljRqBCwnqMQD",
					"type": "arrow"
				}
			],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"customData": {
				"frameColor": {
					"stroke": "#2B2B2B",
					"fill": "#525252",
					"nameColor": "#6B6B6B"
				}
			},
			"name": null
		},
		{
			"type": "arrow",
			"version": 1927,
			"versionNonce": 929314434,
			"isDeleted": false,
			"id": "N1Ri-QHvsohZgJLD2LkZf",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 638.2824874126045,
			"y": -741.9957532519502,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 3163.788274718675,
			"height": 27.29193587556756,
			"seed": 1863007072,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "ARPfDggG"
				}
			],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "I0ZLWxhbtCMX1qgMrQ5_a",
				"focus": 0.2731616604517115,
				"gap": 2.5181107319266403
			},
			"endBinding": {
				"elementId": "o5lVJX8glv51z8dSGrXDp",
				"focus": -0.10373296125100802,
				"gap": 11.199981689452954
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-3163.788274718675,
					27.29193587556756
				]
			]
		},
		{
			"type": "text",
			"version": 154,
			"versionNonce": 151120542,
			"isDeleted": false,
			"id": "ARPfDggG",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 480.86268331937345,
			"y": 476.81961926258464,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 139.01992797851562,
			"height": 33.6,
			"seed": 1984111456,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "일반적인 접근법",
			"rawText": "일반적인 접근법",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "N1Ri-QHvsohZgJLD2LkZf",
			"originalText": "일반적인 접근법",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "rectangle",
			"version": 1369,
			"versionNonce": 1885214274,
			"isDeleted": false,
			"id": "o5lVJX8glv51z8dSGrXDp",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -3114.3058056166174,
			"y": -968.1898575155201,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"width": 577.6000366210938,
			"height": 572,
			"seed": 610524832,
			"groupIds": [],
			"frameId": "HEJ25XmHBNYjcTvpBbY1J",
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"id": "N1Ri-QHvsohZgJLD2LkZf",
					"type": "arrow"
				},
				{
					"id": "aXSV0EcqZGTyMsoC8MfDd",
					"type": "arrow"
				},
				{
					"id": "6sT5k8WgllKwZCSpIWlqa",
					"type": "arrow"
				},
				{
					"id": "-FkThbfgCU29iAl7HPxrv",
					"type": "arrow"
				}
			],
			"updated": 1706194040535,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 586,
			"versionNonce": 1558636254,
			"isDeleted": false,
			"id": "q1MjBx4p",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -3081.869423669707,
			"y": -913.1197450840061,
			"strokeColor": "#e03131",
			"backgroundColor": "transparent",
			"width": 208.97988891601562,
			"height": 43.199999999999996,
			"seed": 1069977440,
			"groupIds": [],
			"frameId": "HEJ25XmHBNYjcTvpBbY1J",
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"fontSize": 36,
			"fontFamily": 4,
			"text": "Related Studies",
			"rawText": "Related Studies",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Related Studies",
			"lineHeight": 1.2,
			"baseline": 34
		},
		{
			"type": "text",
			"version": 756,
			"versionNonce": 1988492802,
			"isDeleted": false,
			"id": "vuHjbpWn",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -3085.1422397208435,
			"y": -832.6833703503415,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 539.1677856445312,
			"height": 134.4,
			"seed": 108176224,
			"groupIds": [],
			"frameId": "HEJ25XmHBNYjcTvpBbY1J",
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "2010년에 발표된 FM(Factorization Machine)은 Latent\nspace로 각각의 특성들을 매핑하여 내적을 통해 Interaction\n을 계산할 수 있는 방법입니다.\n",
			"rawText": "2010년에 발표된 FM(Factorization Machine)은 Latent\nspace로 각각의 특성들을 매핑하여 내적을 통해 Interaction\n을 계산할 수 있는 방법입니다.\n",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "2010년에 발표된 FM(Factorization Machine)은 Latent\nspace로 각각의 특성들을 매핑하여 내적을 통해 Interaction\n을 계산할 수 있는 방법입니다.\n",
			"lineHeight": 1.2,
			"baseline": 127
		},
		{
			"type": "image",
			"version": 605,
			"versionNonce": 459430686,
			"isDeleted": false,
			"id": "IlfqHsXtKMtMaJJpFPVpd",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -3084.5058982790824,
			"y": -719.5925583608173,
			"strokeColor": "transparent",
			"backgroundColor": "transparent",
			"width": 518,
			"height": 112,
			"seed": 929116000,
			"groupIds": [],
			"frameId": "HEJ25XmHBNYjcTvpBbY1J",
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "13c9ee52728b723a0340730c28d19618c8be616b",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "text",
			"version": 728,
			"versionNonce": 115011010,
			"isDeleted": false,
			"id": "jdj2uvvr",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -3089.8694680589115,
			"y": -563.2289136742052,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 513.4078369140625,
			"height": 67.2,
			"seed": 2008453984,
			"groupIds": [],
			"frameId": "HEJ25XmHBNYjcTvpBbY1J",
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "위의 식을 통해 order-2에서부터 order-n까지의 \nInteraction을 내적을 통해 모두 모델링 할 수 있습니다.  ",
			"rawText": "위의 식을 통해 order-2에서부터 order-n까지의 \nInteraction을 내적을 통해 모두 모델링 할 수 있습니다.  ",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "위의 식을 통해 order-2에서부터 order-n까지의 \nInteraction을 내적을 통해 모두 모델링 할 수 있습니다.  ",
			"lineHeight": 1.2,
			"baseline": 60
		},
		{
			"type": "frame",
			"version": 708,
			"versionNonce": 451233630,
			"isDeleted": false,
			"id": "HEJ25XmHBNYjcTvpBbY1J",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -3137.142195331639,
			"y": -987.228824895796,
			"strokeColor": "#bbb",
			"backgroundColor": "transparent",
			"width": 624.4848386205805,
			"height": 615.757538766572,
			"seed": 1210615648,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "-FkThbfgCU29iAl7HPxrv",
					"type": "arrow"
				},
				{
					"id": "aXSV0EcqZGTyMsoC8MfDd",
					"type": "arrow"
				},
				{
					"id": "6sT5k8WgllKwZCSpIWlqa",
					"type": "arrow"
				}
			],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"customData": {
				"frameColor": {
					"stroke": "#2B2B2B",
					"fill": "#525252",
					"nameColor": "#6B6B6B"
				}
			},
			"name": null
		},
		{
			"type": "rectangle",
			"version": 2146,
			"versionNonce": 1719395714,
			"isDeleted": false,
			"id": "7eeGwcY2N4JxWeYg35SW9",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 631.875705539868,
			"y": -3493.2289347128376,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 577.6000366210938,
			"height": 572,
			"seed": 193514336,
			"groupIds": [],
			"frameId": "45xFR6gTILwISZ2FOkroU",
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"id": "-2j90jjP8ljRqBCwnqMQD",
					"type": "arrow"
				}
			],
			"updated": 1706194040535,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 2531,
			"versionNonce": 1002482590,
			"isDeleted": false,
			"id": "qi0dYaEIknVYnd1rP-eWZ",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -3118.849769166878,
			"y": -210.32753829392277,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 577.6000366210938,
			"height": 572,
			"seed": 1534262112,
			"groupIds": [],
			"frameId": "RS4ehBEVEp216OCwhPj18",
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"id": "-FkThbfgCU29iAl7HPxrv",
					"type": "arrow"
				},
				{
					"id": "p-zllBP0pFRlpNKvPDwoj",
					"type": "arrow"
				}
			],
			"updated": 1706194040535,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 1491,
			"versionNonce": 1588061506,
			"isDeleted": false,
			"id": "moCIA2oh",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -3091.8372948200004,
			"y": -153.61413794143255,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 520.0717163085938,
			"height": 33.6,
			"seed": 203196256,
			"groupIds": [],
			"frameId": "RS4ehBEVEp216OCwhPj18",
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "피쳐 벡터들 간의 pairwise interaction을 직접 feature",
			"rawText": "피쳐 벡터들 간의 pairwise interaction을 직접 feature",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "피쳐 벡터들 간의 pairwise interaction을 직접 feature",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "arrow",
			"version": 2488,
			"versionNonce": 740657118,
			"isDeleted": false,
			"id": "p-zllBP0pFRlpNKvPDwoj",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2848.2367800619727,
			"y": 365.4617188022259,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 0.6421466177803268,
			"height": 179.5348493626845,
			"seed": 1042537261,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "ZIBw5s3D"
				}
			],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "qi0dYaEIknVYnd1rP-eWZ",
				"focus": 0.05390800089196157,
				"gap": 3.789257096148617
			},
			"endBinding": {
				"elementId": "_NKlakUeYwbodt-tAHv0C",
				"focus": -0.04135409796996193,
				"gap": 8.864308014576295
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-0.6421466177803268,
					179.5348493626845
				]
			]
		},
		{
			"type": "text",
			"version": 119,
			"versionNonce": 951971074,
			"isDeleted": false,
			"id": "ZIBw5s3D",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1518.0022194468063,
			"y": 857.8453081984788,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 46.05998229980469,
			"height": 33.6,
			"seed": 440402499,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "단점:",
			"rawText": "단점:",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "p-zllBP0pFRlpNKvPDwoj",
			"originalText": "단점:",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "frame",
			"version": 1482,
			"versionNonce": 740613150,
			"isDeleted": false,
			"id": "RS4ehBEVEp216OCwhPj18",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -3151.8372948199994,
			"y": -234.94717118524522,
			"strokeColor": "#bbb",
			"backgroundColor": "transparent",
			"width": 637.142871675037,
			"height": 615.0476292201453,
			"seed": 855777120,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "-FkThbfgCU29iAl7HPxrv",
					"type": "arrow"
				}
			],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"customData": {
				"frameColor": {
					"stroke": "#2B2B2B",
					"fill": "#525252",
					"nameColor": "#6B6B6B"
				}
			},
			"name": null
		},
		{
			"type": "arrow",
			"version": 3753,
			"versionNonce": 977075394,
			"isDeleted": false,
			"id": "-FkThbfgCU29iAl7HPxrv",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2830.1218500411014,
			"y": -394.2732958828845,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 2.847484295202321,
			"height": 164.40214379696982,
			"seed": 722874208,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "zWORx80X"
				}
			],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "o5lVJX8glv51z8dSGrXDp",
				"focus": 0.032690138812620506,
				"gap": 1.9165616326355916
			},
			"endBinding": {
				"elementId": "qi0dYaEIknVYnd1rP-eWZ",
				"focus": 0.027463401682161066,
				"gap": 19.543613791991902
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					2.847484295202321,
					164.40214379696982
				]
			]
		},
		{
			"type": "text",
			"version": 162,
			"versionNonce": 1370466398,
			"isDeleted": false,
			"id": "zWORx80X",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1520.128053077974,
			"y": 53.0903699973244,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 83.57998657226562,
			"height": 33.6,
			"seed": 31626912,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "해결방안",
			"rawText": "해결방안",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "-FkThbfgCU29iAl7HPxrv",
			"originalText": "해결방안",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "text",
			"version": 697,
			"versionNonce": 549721218,
			"isDeleted": false,
			"id": "ebK8nqVk",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 661.7833243348986,
			"y": -3450.071476027497,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 526.2317504882812,
			"height": 201.60000000000002,
			"seed": 1078522720,
			"groupIds": [],
			"frameId": "45xFR6gTILwISZ2FOkroU",
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "기저귀를 구매하는 사람은 맥주를 함께 구매한다(order-2)\n와 같은 대부분의 Interaction들은 데이터 속에 숨겨짐.\n\n(아버지들이 기저귀를 기저귀를 자주 구매하는 듯 한다)\n위와 같은 Interaction들은 전문가조차 찾기 힘들다.\n",
			"rawText": "기저귀를 구매하는 사람은 맥주를 함께 구매한다(order-2)\n와 같은 대부분의 Interaction들은 데이터 속에 숨겨짐.\n\n(아버지들이 기저귀를 기저귀를 자주 구매하는 듯 한다)\n위와 같은 Interaction들은 전문가조차 찾기 힘들다.\n",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "기저귀를 구매하는 사람은 맥주를 함께 구매한다(order-2)\n와 같은 대부분의 Interaction들은 데이터 속에 숨겨짐.\n\n(아버지들이 기저귀를 기저귀를 자주 구매하는 듯 한다)\n위와 같은 Interaction들은 전문가조차 찾기 힘들다.\n",
			"lineHeight": 1.2,
			"baseline": 194
		},
		{
			"type": "arrow",
			"version": 408,
			"versionNonce": 1284959390,
			"isDeleted": false,
			"id": "PH0Mu60CGHYivYu0S6MVs",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 897.212052711015,
			"y": -3348.071659132967,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 0,
			"height": 25.142909458705162,
			"seed": 1238132576,
			"groupIds": [],
			"frameId": "45xFR6gTILwISZ2FOkroU",
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					0,
					-25.142909458705162
				]
			]
		},
		{
			"type": "text",
			"version": 509,
			"versionNonce": 504509506,
			"isDeleted": false,
			"id": "WmOy8sKw",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 671.0365324034155,
			"y": -2178.8396756643624,
			"strokeColor": "#e03131",
			"backgroundColor": "transparent",
			"width": 417.39581298828125,
			"height": 33.6,
			"seed": 851176077,
			"groupIds": [],
			"frameId": "WzpDNumaP0gcIe9j0-SQy",
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "즉, 피쳐들간의 상호작용을 모델링하는 것이 목적",
			"rawText": "즉, 피쳐들간의 상호작용을 모델링하는 것이 목적",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "즉, 피쳐들간의 상호작용을 모델링하는 것이 목적",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "text",
			"version": 439,
			"versionNonce": 713795806,
			"isDeleted": false,
			"id": "TJHlTldr",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 662.236564955499,
			"y": -3233.773033411757,
			"strokeColor": "#e03131",
			"backgroundColor": "transparent",
			"width": 441.58782958984375,
			"height": 67.2,
			"seed": 629761315,
			"groupIds": [],
			"frameId": "45xFR6gTILwISZ2FOkroU",
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "대부분의 피쳐 상호작용은 데이터 속에 숨겨져 있고\n이를 선험적(prior)으로 알기 어렵다.",
			"rawText": "대부분의 피쳐 상호작용은 데이터 속에 숨겨져 있고\n이를 선험적(prior)으로 알기 어렵다.",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "대부분의 피쳐 상호작용은 데이터 속에 숨겨져 있고\n이를 선험적(prior)으로 알기 어렵다.",
			"lineHeight": 1.2,
			"baseline": 60
		},
		{
			"type": "frame",
			"version": 630,
			"versionNonce": 1409702914,
			"isDeleted": false,
			"id": "45xFR6gTILwISZ2FOkroU",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 602.8398500769324,
			"y": -3515.582452141167,
			"strokeColor": "#bbb",
			"backgroundColor": "transparent",
			"width": 633.3333333333335,
			"height": 626.6667175292969,
			"seed": 1434321568,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"customData": {
				"frameColor": {
					"stroke": "#2B2B2B",
					"fill": "#525252",
					"nameColor": "#6B6B6B"
				}
			},
			"name": null
		},
		{
			"type": "arrow",
			"version": 1677,
			"versionNonce": 455007518,
			"isDeleted": false,
			"id": "-2j90jjP8ljRqBCwnqMQD",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 924.1883667739592,
			"y": -2702.444221521019,
			"strokeColor": "#e03131",
			"backgroundColor": "transparent",
			"width": 1.0796819866448288,
			"height": 216.4155243955497,
			"seed": 2116281184,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "oZmfFkjL"
				}
			],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "WzpDNumaP0gcIe9j0-SQy",
				"focus": -0.02612839815595885,
				"gap": 8.026579193067391
			},
			"endBinding": {
				"elementId": "7eeGwcY2N4JxWeYg35SW9",
				"focus": -0.0034259653060498205,
				"gap": 2.3691887962691
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-1.0796819866448288,
					-216.4155243955497
				]
			]
		},
		{
			"type": "text",
			"version": 144,
			"versionNonce": 1352633282,
			"isDeleted": false,
			"id": "oZmfFkjL",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 73.12268502135935,
			"y": -2043.45199389132,
			"strokeColor": "#e03131",
			"backgroundColor": "transparent",
			"width": 90.38395690917969,
			"height": 33.6,
			"seed": 346712749,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "문제 정의:",
			"rawText": "문제 정의:",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "-2j90jjP8ljRqBCwnqMQD",
			"originalText": "문제 정의:",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "frame",
			"version": 501,
			"versionNonce": 868321630,
			"isDeleted": false,
			"id": "xypwCSRmvveY3TFu7EULd",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 621.5363891276361,
			"y": -971.0923393499666,
			"strokeColor": "#bbb",
			"backgroundColor": "transparent",
			"width": 629.333292643229,
			"height": 640,
			"seed": 1100530336,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"customData": {
				"frameColor": {
					"stroke": "#2B2B2B",
					"fill": "#525252",
					"nameColor": "#6B6B6B"
				}
			},
			"name": null
		},
		{
			"type": "arrow",
			"version": 1075,
			"versionNonce": 167560066,
			"isDeleted": false,
			"id": "aXSV0EcqZGTyMsoC8MfDd",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 2,
			"opacity": 100,
			"angle": 0,
			"x": -2534.212422885274,
			"y": -665.3239563854373,
			"strokeColor": "#2f9e44",
			"backgroundColor": "transparent",
			"width": 3164.9179552747055,
			"height": 128.43940384266102,
			"seed": 1493570,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "xWE7M7SM"
				}
			],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "o5lVJX8glv51z8dSGrXDp",
				"focus": 0.018547988964543294,
				"gap": 2.493346110249604
			},
			"endBinding": {
				"elementId": "I0ZLWxhbtCMX1qgMrQ5_a",
				"focus": -0.4733216663831023,
				"gap": 10.09506575509954
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					3164.9179552747055,
					128.43940384266102
				]
			]
		},
		{
			"type": "text",
			"version": 137,
			"versionNonce": 868527518,
			"isDeleted": false,
			"id": "xWE7M7SM",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -707.1264921229211,
			"y": -22.573501358844556,
			"strokeColor": "#2f9e44",
			"backgroundColor": "transparent",
			"width": 41.4119873046875,
			"height": 33.6,
			"seed": 429070176,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "결합",
			"rawText": "결합",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "aXSV0EcqZGTyMsoC8MfDd",
			"originalText": "결합",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "image",
			"version": 355,
			"versionNonce": 1516045122,
			"isDeleted": false,
			"id": "hsfrpMP9",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 937.6693449034151,
			"y": -1481.1398241832385,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 23,
			"height": 9,
			"seed": 3470,
			"groupIds": [],
			"frameId": "DZh1jPdZmLUojklmLsu6x",
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "1acd85ab268aa15908884e70b2120d6f3eafdc60",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "arrow",
			"version": 802,
			"versionNonce": 1213811166,
			"isDeleted": false,
			"id": "6sT5k8WgllKwZCSpIWlqa",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2825.2275688009895,
			"y": -971.3944996585152,
			"strokeColor": "#e03131",
			"backgroundColor": "transparent",
			"width": 0.9306431494812841,
			"height": 293.7142399379185,
			"seed": 723757603,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "vde9RmJW"
				}
			],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "o5lVJX8glv51z8dSGrXDp",
				"focus": 0.004123393872829235,
				"gap": 3.2046421429951124
			},
			"endBinding": {
				"elementId": "6ISOuwRavITLKEmlLc4vT",
				"focus": 0.022135015138255287,
				"gap": 8.156352221124052
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-0.9306431494812841,
					-293.7142399379185
				]
			]
		},
		{
			"type": "text",
			"version": 122,
			"versionNonce": 2082425602,
			"isDeleted": false,
			"id": "vde9RmJW",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -907.0984450840017,
			"y": -289.7793753520163,
			"strokeColor": "#e03131",
			"backgroundColor": "transparent",
			"width": 81.98396301269531,
			"height": 33.6,
			"seed": 2034702285,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "문제정의:",
			"rawText": "문제정의:",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "6sT5k8WgllKwZCSpIWlqa",
			"originalText": "문제정의:",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "rectangle",
			"version": 1576,
			"versionNonce": 1351638558,
			"isDeleted": false,
			"id": "6ISOuwRavITLKEmlLc4vT",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -3109.4776227224647,
			"y": -1845.2650918175577,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 577.6000366210938,
			"height": 572,
			"seed": 436902317,
			"groupIds": [],
			"frameId": "AJvZPsGCOkLncTrNKPzSx",
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"id": "6sT5k8WgllKwZCSpIWlqa",
					"type": "arrow"
				},
				{
					"id": "-FkThbfgCU29iAl7HPxrv",
					"type": "arrow"
				}
			],
			"updated": 1706194040535,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 432,
			"versionNonce": 96639682,
			"isDeleted": false,
			"id": "Z2PtTnQu",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -3084.801087252318,
			"y": -1804.7343112069743,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 491.45574951171875,
			"height": 67.2,
			"seed": 857898179,
			"groupIds": [],
			"frameId": "AJvZPsGCOkLncTrNKPzSx",
			"roundness": null,
			"boundElements": [
				{
					"id": "EpJDI1EiCl_2O1tafyulJ",
					"type": "arrow"
				}
			],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "일반화된 선형 모델 (FTRL)은 간단하지만 준수한 성능\n허나 선형 모델은 피쳐 상호작용을 학습하기는 어려움",
			"rawText": "일반화된 선형 모델 (FTRL)은 간단하지만 준수한 성능\n허나 선형 모델은 피쳐 상호작용을 학습하기는 어려움",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "일반화된 선형 모델 (FTRL)은 간단하지만 준수한 성능\n허나 선형 모델은 피쳐 상호작용을 학습하기는 어려움",
			"lineHeight": 1.2,
			"baseline": 60
		},
		{
			"type": "arrow",
			"version": 583,
			"versionNonce": 559606366,
			"isDeleted": false,
			"id": "EpJDI1EiCl_2O1tafyulJ",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2846.03193160328,
			"y": -1724.118935981614,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 1.2308443509615472,
			"height": 104.61538461538464,
			"seed": 1996296963,
			"groupIds": [],
			"frameId": "AJvZPsGCOkLncTrNKPzSx",
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "hFKivGyP"
				}
			],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "Z2PtTnQu",
				"focus": 0.03350660125124554,
				"gap": 13.415375225360549
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					1.2308443509615472,
					44.307720477764406
				],
				[
					1.2306565504807168,
					104.61538461538464
				]
			]
		},
		{
			"type": "text",
			"version": 110,
			"versionNonce": 1709568642,
			"isDeleted": false,
			"id": "hFKivGyP",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -907.2049169736221,
			"y": -850.4574339064184,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 51.57598876953125,
			"height": 33.6,
			"seed": 1571748717,
			"groupIds": [],
			"frameId": "AJvZPsGCOkLncTrNKPzSx",
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040535,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "Why?",
			"rawText": "Why?",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "EpJDI1EiCl_2O1tafyulJ",
			"originalText": "Why?",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "text",
			"version": 648,
			"versionNonce": 1233776286,
			"isDeleted": false,
			"id": "5o6LqlRY",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -3084.801087252318,
			"y": -1570.8881573608205,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 531.6358032226562,
			"height": 134.4,
			"seed": 454631277,
			"groupIds": [],
			"frameId": "AJvZPsGCOkLncTrNKPzSx",
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "선형성 : 비선형 관계나 상호작용을 잘 표현하지 못함\n고차원 특성 : 데이터는 고차원, 복잡한 상호작용 모델링 힘듦\n계산 복잡성 : 많은 수의 매개변수 필요, 계산 비용 증가, \n                과적합 위험",
			"rawText": "선형성 : 비선형 관계나 상호작용을 잘 표현하지 못함\n고차원 특성 : 데이터는 고차원, 복잡한 상호작용 모델링 힘듦\n계산 복잡성 : 많은 수의 매개변수 필요, 계산 비용 증가, \n                과적합 위험",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "선형성 : 비선형 관계나 상호작용을 잘 표현하지 못함\n고차원 특성 : 데이터는 고차원, 복잡한 상호작용 모델링 힘듦\n계산 복잡성 : 많은 수의 매개변수 필요, 계산 비용 증가, \n                과적합 위험",
			"lineHeight": 1.2,
			"baseline": 127
		},
		{
			"type": "frame",
			"version": 441,
			"versionNonce": 1598575170,
			"isDeleted": false,
			"id": "AJvZPsGCOkLncTrNKPzSx",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -3135.8203394844622,
			"y": -1866.693637088205,
			"strokeColor": "#bbb",
			"backgroundColor": "transparent",
			"width": 625.142822265625,
			"height": 618.2857622419085,
			"seed": 1967800739,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"customData": {
				"frameColor": {
					"stroke": "#2B2B2B",
					"fill": "#525252",
					"nameColor": "#6B6B6B"
				}
			},
			"name": null
		},
		{
			"type": "rectangle",
			"version": 2940,
			"versionNonce": 1439591134,
			"isDeleted": false,
			"id": "_NKlakUeYwbodt-tAHv0C",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -3126.748226119747,
			"y": 553.8608761794867,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 577.6000366210938,
			"height": 572,
			"seed": 764669357,
			"groupIds": [],
			"frameId": "VzkAOlYFXQlBboCKm9Kzr",
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"id": "p-zllBP0pFRlpNKvPDwoj",
					"type": "arrow"
				},
				{
					"id": "5kGwZHFLTUbDIfTVehCVt",
					"type": "arrow"
				},
				{
					"id": "iXGTn-gR3FBR-dx6GrPq5",
					"type": "arrow"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 379,
			"versionNonce": 80263682,
			"isDeleted": false,
			"id": "DjiJ7pBb",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -3105.55625188508,
			"y": 610.9629201790538,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"width": 549.9476928710938,
			"height": 67.2,
			"seed": 2038754637,
			"groupIds": [],
			"frameId": "VzkAOlYFXQlBboCKm9Kzr",
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "FM모델이 높은 차원의 Feature Interaction을 모델링 가능\n허나, 실제로는 높은 복잡도 때문에 거의 order-2 상호작용만",
			"rawText": "FM모델이 높은 차원의 Feature Interaction을 모델링 가능\n허나, 실제로는 높은 복잡도 때문에 거의 order-2 상호작용만",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "FM모델이 높은 차원의 Feature Interaction을 모델링 가능\n허나, 실제로는 높은 복잡도 때문에 거의 order-2 상호작용만",
			"lineHeight": 1.2,
			"baseline": 60
		},
		{
			"type": "arrow",
			"version": 297,
			"versionNonce": 347692830,
			"isDeleted": false,
			"id": "5kGwZHFLTUbDIfTVehCVt",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2548.148189498653,
			"y": 831.1466888294466,
			"strokeColor": "#2f9e44",
			"backgroundColor": "#a5d8ff",
			"width": 485.83357237687915,
			"height": 1.453118412666072,
			"seed": 2045964173,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "UezxAaVr"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "_NKlakUeYwbodt-tAHv0C",
				"focus": -0.033399033003767155,
				"gap": 1
			},
			"endBinding": {
				"elementId": "b_W4ATtroabrMqZ_ztwCr",
				"focus": 0.006298813082892034,
				"gap": 12.315691390089341
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					485.83357237687915,
					1.453118412666072
				]
			]
		},
		{
			"type": "text",
			"version": 123,
			"versionNonce": 895887810,
			"isDeleted": false,
			"id": "UezxAaVr",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2372.1107978468717,
			"y": 815.0725456121411,
			"strokeColor": "#2f9e44",
			"backgroundColor": "#a5d8ff",
			"width": 114.37995910644531,
			"height": 33.6,
			"seed": 101000035,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "CNN과 같이",
			"rawText": "CNN과 같이",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "5kGwZHFLTUbDIfTVehCVt",
			"originalText": "CNN과 같이",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "frame",
			"version": 1037,
			"versionNonce": 1522256734,
			"isDeleted": false,
			"id": "VzkAOlYFXQlBboCKm9Kzr",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -3144.718047364989,
			"y": 534.236506876101,
			"strokeColor": "#bbb",
			"backgroundColor": "transparent",
			"width": 628.6060680042623,
			"height": 607.9998779296877,
			"seed": 1363106851,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"customData": {
				"frameColor": {
					"stroke": "#2B2B2B",
					"fill": "#525252",
					"nameColor": "#6B6B6B"
				}
			},
			"name": null
		},
		{
			"type": "rectangle",
			"version": 2630,
			"versionNonce": 406823298,
			"isDeleted": false,
			"id": "b_W4ATtroabrMqZ_ztwCr",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2049.9989257316847,
			"y": 549.3073396795626,
			"strokeColor": "#000000",
			"backgroundColor": "#e7f5ff",
			"width": 577.6000366210938,
			"height": 572,
			"seed": 883328525,
			"groupIds": [],
			"frameId": "C5GCRCbtj5DsP8OwngzmS",
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"id": "5kGwZHFLTUbDIfTVehCVt",
					"type": "arrow"
				},
				{
					"id": "kEgk5WAtvWtPBPIjFJXDp",
					"type": "arrow"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 188,
			"versionNonce": 1176940446,
			"isDeleted": false,
			"id": "9jzL3QPr",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2027.3556057779092,
			"y": 592.774275530474,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 478.9077453613281,
			"height": 43.199999999999996,
			"seed": 1634490509,
			"groupIds": [],
			"frameId": "C5GCRCbtj5DsP8OwngzmS",
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 36,
			"fontFamily": 4,
			"text": "A Convolutional Click Prediction Model",
			"rawText": "A Convolutional Click Prediction Model",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "A Convolutional Click Prediction Model",
			"lineHeight": 1.2,
			"baseline": 34
		},
		{
			"type": "embeddable",
			"version": 191,
			"versionNonce": 412361026,
			"isDeleted": false,
			"id": "HW6ttsK6Sl00o28gZAlZE",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2025.1991006991345,
			"y": 676.9742352280648,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"width": 526.6666666666667,
			"height": 240.00002543131518,
			"seed": 941473325,
			"groupIds": [],
			"frameId": "C5GCRCbtj5DsP8OwngzmS",
			"roundness": {
				"type": 3
			},
			"boundElements": [],
			"updated": 1706194040536,
			"link": "https://wnzhang.net/share/rtb-papers/cnn-ctr.pdf",
			"locked": false,
			"validated": true,
			"scale": [
				1,
				1
			]
		},
		{
			"type": "text",
			"version": 134,
			"versionNonce": 53152734,
			"isDeleted": false,
			"id": "zRpClNm9",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2022.532474722572,
			"y": 957.9742199692757,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"width": 228.31192016601562,
			"height": 43.199999999999996,
			"seed": 799437155,
			"groupIds": [],
			"frameId": "C5GCRCbtj5DsP8OwngzmS",
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 36,
			"fontFamily": 4,
			"text": "2015년 - 145회 인용",
			"rawText": "2015년 - 145회 인용",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "2015년 - 145회 인용",
			"lineHeight": 1.2,
			"baseline": 34
		},
		{
			"type": "arrow",
			"version": 276,
			"versionNonce": 1640147202,
			"isDeleted": false,
			"id": "kEgk5WAtvWtPBPIjFJXDp",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1758.5324340324678,
			"y": 1126.3074515773485,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 0,
			"height": 216.24253706498598,
			"seed": 1504820045,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "TzmSzFUw"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "b_W4ATtroabrMqZ_ztwCr",
				"focus": -0.009232940511114495,
				"gap": 5.000111897785928
			},
			"endBinding": {
				"elementId": "LNXFX37bWu96gSDqzmJKj",
				"focus": -0.0046163821969961985,
				"gap": 1.0000203450524623
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					0,
					216.24253706498598
				]
			]
		},
		{
			"type": "text",
			"version": 111,
			"versionNonce": 265936926,
			"isDeleted": false,
			"id": "TzmSzFUw",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1785.3704314689912,
			"y": 1211.3741691066457,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 53.675994873046875,
			"height": 43.199999999999996,
			"seed": 810167053,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 36,
			"fontFamily": 4,
			"text": "단점",
			"rawText": "단점",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "kEgk5WAtvWtPBPIjFJXDp",
			"originalText": "단점",
			"lineHeight": 1.2,
			"baseline": 34
		},
		{
			"type": "frame",
			"version": 178,
			"versionNonce": 1531590850,
			"isDeleted": false,
			"id": "C5GCRCbtj5DsP8OwngzmS",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2071.9875967334406,
			"y": 533.654927377645,
			"strokeColor": "#bbb",
			"backgroundColor": "transparent",
			"width": 622.5454989346592,
			"height": 606.5454656427557,
			"seed": 502688067,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"customData": {
				"frameColor": {
					"stroke": "#2B2B2B",
					"fill": "#525252",
					"nameColor": "#6B6B6B"
				}
			},
			"name": null
		},
		{
			"type": "arrow",
			"version": 939,
			"versionNonce": 2370654,
			"isDeleted": false,
			"id": "k-RJEMkxhROcPERLTZItb",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1468.7313872891582,
			"y": 1925.5085591299962,
			"strokeColor": "#2f9e44",
			"backgroundColor": "#a5d8ff",
			"width": 358.46346726261436,
			"height": 357.74538519815997,
			"seed": 1551943171,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "8tniQCKt"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "Q6zErHlFbWQg0NCJcLwpq",
				"focus": 0,
				"gap": 8
			},
			"endBinding": {
				"elementId": "mqBOjE9PGYMJMMXjnuqhF",
				"focus": 0,
				"gap": 8
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					348.55146209056693,
					322.48688467535794
				]
			]
		},
		{
			"type": "text",
			"version": 131,
			"versionNonce": 617205890,
			"isDeleted": false,
			"id": "8tniQCKt",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1327.7910866658488,
			"y": 1601.212852054876,
			"strokeColor": "#2f9e44",
			"backgroundColor": "#a5d8ff",
			"width": 113.87596130371094,
			"height": 33.6,
			"seed": 2099187107,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "DNN과 같이",
			"rawText": "DNN과 같이",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "k-RJEMkxhROcPERLTZItb",
			"originalText": "DNN과 같이",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "arrow",
			"version": 979,
			"versionNonce": 1104867486,
			"isDeleted": false,
			"id": "nLRUh-OftKEybrydAZ5yj",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1468.7313872891582,
			"y": 1394.9962531527808,
			"strokeColor": "#2f9e44",
			"backgroundColor": "#b2f2bb",
			"width": 326.8696011841362,
			"height": 308.3058524687699,
			"seed": 45342669,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "huF5ai1E"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "Q6zErHlFbWQg0NCJcLwpq",
				"focus": 0,
				"gap": 8
			},
			"endBinding": {
				"elementId": "irIGDMpyJWGyB_jajDFb6",
				"focus": -4.902206429934664e-16,
				"gap": 8
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					332.9036860340941,
					-287.0362109145585
				]
			]
		},
		{
			"type": "text",
			"version": 118,
			"versionNonce": 302018626,
			"isDeleted": false,
			"id": "huF5ai1E",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1409.2282818234496,
			"y": 1338.632956774874,
			"strokeColor": "#2f9e44",
			"backgroundColor": "#b2f2bb",
			"width": 220.55587768554688,
			"height": 33.6,
			"seed": 1371456387,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "feature interaction?",
			"rawText": "feature interaction?",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "nLRUh-OftKEybrydAZ5yj",
			"originalText": "feature interaction?",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "arrow",
			"version": 917,
			"versionNonce": 1622093022,
			"isDeleted": false,
			"id": "40HrDZzFRrM4nXpOFDuo3",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -830.6407939305706,
			"y": 2816.6008426823996,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"width": 0.5765854489026196,
			"height": 226.36916694998672,
			"seed": 581881997,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "RsONSwcR"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "mqBOjE9PGYMJMMXjnuqhF",
				"focus": 0,
				"gap": 8
			},
			"endBinding": {
				"elementId": "9zQwxKuHoos68YXPBKpUH",
				"focus": 0,
				"gap": 8
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-5.620349689914633,
					227.57313247775755
				]
			]
		},
		{
			"type": "text",
			"version": 120,
			"versionNonce": 650975234,
			"isDeleted": false,
			"id": "RsONSwcR",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -833.0624101672349,
			"y": 2030.9380812455186,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#ffc9c9",
			"width": 87.89198303222656,
			"height": 33.6,
			"seed": 676869379,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "해결방안:",
			"rawText": "해결방안:",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "40HrDZzFRrM4nXpOFDuo3",
			"originalText": "해결방안:",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "rectangle",
			"version": 3399,
			"versionNonce": 1244782878,
			"isDeleted": false,
			"id": "9zQwxKuHoos68YXPBKpUH",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1132.3220489735581,
			"y": 3052.173975160157,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 577.6000366210938,
			"height": 572,
			"seed": 1522224227,
			"groupIds": [],
			"frameId": "nMSmPjcQW0NJVApyAAqTo",
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"id": "iXGTn-gR3FBR-dx6GrPq5",
					"type": "arrow"
				},
				{
					"id": "40HrDZzFRrM4nXpOFDuo3",
					"type": "arrow"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 601,
			"versionNonce": 321832898,
			"isDeleted": false,
			"id": "DReQyQrX",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1111.022106956957,
			"y": 3085.6738988662114,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"width": 372.371826171875,
			"height": 201.60000000000002,
			"seed": 711431725,
			"groupIds": [],
			"frameId": "nMSmPjcQW0NJVApyAAqTo",
			"roundness": null,
			"boundElements": [
				{
					"id": "iXGTn-gR3FBR-dx6GrPq5",
					"type": "arrow"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "DNN이 효율적으로 작동하도록 하기 위해  \n세가지 특징 변환 방법, \n\n인수분해 머신(FM), \n제한 볼츠만 머신(RBM), \n노이즈 제거 자동 인코더(DAE)를 활용",
			"rawText": "DNN이 효율적으로 작동하도록 하기 위해  \n세가지 특징 변환 방법, \n\n인수분해 머신(FM), \n제한 볼츠만 머신(RBM), \n노이즈 제거 자동 인코더(DAE)를 활용",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "DNN이 효율적으로 작동하도록 하기 위해  \n세가지 특징 변환 방법, \n\n인수분해 머신(FM), \n제한 볼츠만 머신(RBM), \n노이즈 제거 자동 인코더(DAE)를 활용",
			"lineHeight": 1.2,
			"baseline": 194
		},
		{
			"type": "frame",
			"version": 416,
			"versionNonce": 299109726,
			"isDeleted": false,
			"id": "nMSmPjcQW0NJVApyAAqTo",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1151.0551030864647,
			"y": 3036.7732255682904,
			"strokeColor": "#bbb",
			"backgroundColor": "transparent",
			"width": 619.6364524147727,
			"height": 610.909146395597,
			"seed": 236496845,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"customData": {
				"frameColor": {
					"stroke": "#2B2B2B",
					"fill": "#525252",
					"nameColor": "#6B6B6B"
				}
			},
			"name": null
		},
		{
			"type": "arrow",
			"version": 574,
			"versionNonce": 793018242,
			"isDeleted": false,
			"id": "hbrAYgWudQPDud6cVyiwq",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -528.7442737750844,
			"y": 2231.128585389668,
			"strokeColor": "#e03131",
			"backgroundColor": "#e7f5ff",
			"width": 274.2133727344639,
			"height": 392.9156491405288,
			"seed": 1134364382,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "zl2TErTR"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "mqBOjE9PGYMJMMXjnuqhF",
				"focus": 0,
				"gap": 8
			},
			"endBinding": {
				"elementId": "cSJCLxAwpDBQwaT7qtv_Q",
				"focus": 0,
				"gap": 8
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					282.8022611527362,
					-279.76593514768206
				]
			]
		},
		{
			"type": "text",
			"version": 99,
			"versionNonce": 887533982,
			"isDeleted": false,
			"id": "zl2TErTR",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -437.8841779139443,
			"y": 2075.8501414048824,
			"strokeColor": "#e03131",
			"backgroundColor": "#e7f5ff",
			"width": 46.05998229980469,
			"height": 33.6,
			"seed": 1341221086,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "단점:",
			"rawText": "단점:",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "hbrAYgWudQPDud6cVyiwq",
			"originalText": "단점:",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "arrow",
			"version": 1361,
			"versionNonce": 2001551170,
			"isDeleted": false,
			"id": "iXGTn-gR3FBR-dx6GrPq5",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1118.4318282952993,
			"y": 3209.3526257381322,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 1738.4275828691568,
			"height": 2071.9762270097226,
			"seed": 925056973,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "uPBL2LQM"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "DReQyQrX",
				"focus": -0.6493614783434879,
				"gap": 7.409721338342251
			},
			"endBinding": {
				"elementId": "_NKlakUeYwbodt-tAHv0C",
				"focus": 0.21503930710013355,
				"gap": 11.515522548922945
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-1522.4276090270812,
					-891.6905606802025
				],
				[
					-1738.4275828691568,
					-2071.9762270097226
				]
			]
		},
		{
			"type": "text",
			"version": 114,
			"versionNonce": 1587203550,
			"isDeleted": false,
			"id": "uPBL2LQM",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2931.6973737237477,
			"y": 2430.0621566106643,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 53.675994873046875,
			"height": 43.199999999999996,
			"seed": 1808203875,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 36,
			"fontFamily": 4,
			"text": "단점",
			"rawText": "단점",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "iXGTn-gR3FBR-dx6GrPq5",
			"originalText": "단점",
			"lineHeight": 1.2,
			"baseline": 34
		},
		{
			"type": "image",
			"version": 851,
			"versionNonce": 128452354,
			"isDeleted": false,
			"id": "mguVuSrYmxjKTH4fsVyJO",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2200.996061505858,
			"y": 2647.4207830893997,
			"strokeColor": "transparent",
			"backgroundColor": "#a5d8ff",
			"width": 758,
			"height": 400,
			"seed": 535392227,
			"groupIds": [],
			"frameId": "0D2toMuhV6qy2w5Blvi6C",
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "238684eaf896cacd041c8ce3215c3c8f7b330ced",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "frame",
			"version": 851,
			"versionNonce": 738288158,
			"isDeleted": false,
			"id": "0D2toMuhV6qy2w5Blvi6C",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2249.570699267051,
			"y": 2619.3907891541644,
			"strokeColor": "#bbb",
			"backgroundColor": "transparent",
			"width": 852.2666015625,
			"height": 494.9062848358844,
			"seed": 379161827,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"customData": {
				"frameColor": {
					"stroke": "#2B2B2B",
					"fill": "#525252",
					"nameColor": "#6B6B6B"
				}
			},
			"name": null
		},
		{
			"type": "text",
			"version": 503,
			"versionNonce": 416536258,
			"isDeleted": false,
			"id": "7UQZUTAs",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1943.760421853735,
			"y": 3050.896620651086,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#ffc9c9",
			"width": 229.62789916992188,
			"height": 33.6,
			"seed": 2087459469,
			"groupIds": [],
			"frameId": "0D2toMuhV6qy2w5Blvi6C",
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "FM의 성능 제한을 받는다.",
			"rawText": "FM의 성능 제한을 받는다.",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "FM의 성능 제한을 받는다.",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "rectangle",
			"version": 3014,
			"versionNonce": 1879797342,
			"isDeleted": false,
			"id": "irIGDMpyJWGyB_jajDFb6",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1127.827701255064,
			"y": 566.0531351380524,
			"strokeColor": "#1971c2",
			"backgroundColor": "#e7f5ff",
			"width": 577.6000366210938,
			"height": 572,
			"seed": 1722715789,
			"groupIds": [
				"2yMuDS6TxMpxiiUs3ooWC"
			],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"id": "nLRUh-OftKEybrydAZ5yj",
					"type": "arrow"
				},
				{
					"id": "wQ8CYLuKT4M-27GeEwBTk",
					"type": "arrow"
				},
				{
					"id": "dxTWNGQaZiwgH836sUuIL",
					"type": "arrow"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 580,
			"versionNonce": 2070916738,
			"isDeleted": false,
			"id": "vhgUMQ32",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1105.184381301288,
			"y": 611.1200465749013,
			"strokeColor": "#1971c2",
			"backgroundColor": "#a5d8ff",
			"width": 492.4437561035156,
			"height": 86.39999999999999,
			"seed": 1817654509,
			"groupIds": [
				"2yMuDS6TxMpxiiUs3ooWC"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 36,
			"fontFamily": 4,
			"text": "Product-based Neural Networks for \nUserResponse Prediction",
			"rawText": "Product-based Neural Networks for \nUserResponse Prediction",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Product-based Neural Networks for \nUserResponse Prediction",
			"lineHeight": 1.2,
			"baseline": 77
		},
		{
			"type": "text",
			"version": 556,
			"versionNonce": 2005529246,
			"isDeleted": false,
			"id": "lMUCL69X",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1115.4200594141496,
			"y": 978.296504685578,
			"strokeColor": "#1971c2",
			"backgroundColor": "#a5d8ff",
			"width": 557.955810546875,
			"height": 134.4,
			"seed": 1457262413,
			"groupIds": [
				"2yMuDS6TxMpxiiUs3ooWC"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "nLRUh-OftKEybrydAZ5yj",
					"type": "arrow"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "카테고리 데이터의 분산 표현을 학습하기 위한 임베딩 레이어, \n필드 간 카테고리 간의 상호작용 패턴을 포착하기 위한 제품 \n레이어, 그리고 고차 특징 상호작용을 탐색하기 위한 \n완전 연결 레이어가 포함된 제품 기반 신경망(PNN)을 제안",
			"rawText": "카테고리 데이터의 분산 표현을 학습하기 위한 임베딩 레이어, \n필드 간 카테고리 간의 상호작용 패턴을 포착하기 위한 제품 \n레이어, 그리고 고차 특징 상호작용을 탐색하기 위한 \n완전 연결 레이어가 포함된 제품 기반 신경망(PNN)을 제안",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "카테고리 데이터의 분산 표현을 학습하기 위한 임베딩 레이어, \n필드 간 카테고리 간의 상호작용 패턴을 포착하기 위한 제품 \n레이어, 그리고 고차 특징 상호작용을 탐색하기 위한 \n완전 연결 레이어가 포함된 제품 기반 신경망(PNN)을 제안",
			"lineHeight": 1.2,
			"baseline": 127
		},
		{
			"type": "embeddable",
			"version": 433,
			"versionNonce": 339381826,
			"isDeleted": false,
			"id": "CxyLJQJypMhTBy57WGuNt",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1102.9687947896462,
			"y": 713.6086669577138,
			"strokeColor": "#2f9e44",
			"backgroundColor": "#b2f2bb",
			"width": 521.9999694824221,
			"height": 248.000030517578,
			"seed": 1660972163,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [],
			"updated": 1706194040536,
			"link": "https://arxiv.org/pdf/1611.00144.pdf",
			"locked": false,
			"validated": true,
			"scale": [
				1,
				1
			]
		},
		{
			"type": "rectangle",
			"version": 3198,
			"versionNonce": 1294855902,
			"isDeleted": false,
			"id": "Q6zErHlFbWQg0NCJcLwpq",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2054.331423910252,
			"y": 1364.9031602529508,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 577.6000366210938,
			"height": 572,
			"seed": 1232267747,
			"groupIds": [
				"1F9QKe7UV2erSs3MPQ4WM"
			],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"id": "k-RJEMkxhROcPERLTZItb",
					"type": "arrow"
				},
				{
					"id": "nLRUh-OftKEybrydAZ5yj",
					"type": "arrow"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 395,
			"versionNonce": 1477670402,
			"isDeleted": false,
			"id": "efOBj3h2",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2022.531324219497,
			"y": 1437.4607045681728,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 440.63580322265625,
			"height": 33.6,
			"seed": 1944171907,
			"groupIds": [
				"1F9QKe7UV2erSs3MPQ4WM"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "CNN 기반 모델은 인접한 피쳐를 학습하는 편향성",
			"rawText": "CNN 기반 모델은 인접한 피쳐를 학습하는 편향성",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "CNN 기반 모델은 인접한 피쳐를 학습하는 편향성",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "text",
			"version": 386,
			"versionNonce": 2106090270,
			"isDeleted": false,
			"id": "bvOtmy6F",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2021.1979908861636,
			"y": 1497.660704568173,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"width": 541.2398071289062,
			"height": 67.2,
			"seed": 1773538595,
			"groupIds": [
				"1F9QKe7UV2erSs3MPQ4WM"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "이미지 처리에 특화된 구조로 이미지 데이터 내에서\n근접한 픽셀 간의 패턴 및 공간적인 관계를 학습하는데 강점",
			"rawText": "이미지 처리에 특화된 구조로 이미지 데이터 내에서\n근접한 픽셀 간의 패턴 및 공간적인 관계를 학습하는데 강점",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "이미지 처리에 특화된 구조로 이미지 데이터 내에서\n근접한 픽셀 간의 패턴 및 공간적인 관계를 학습하는데 강점",
			"lineHeight": 1.2,
			"baseline": 60
		},
		{
			"type": "text",
			"version": 453,
			"versionNonce": 1207526850,
			"isDeleted": false,
			"id": "C3LVEl0z",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2020.5158518073881,
			"y": 1625.5273508897876,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 463.7358093261719,
			"height": 33.6,
			"seed": 1046376643,
			"groupIds": [
				"1F9QKe7UV2erSs3MPQ4WM"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "RNN 기반 모델은 연속성이 있어 클릭 데이터에 적합",
			"rawText": "RNN 기반 모델은 연속성이 있어 클릭 데이터에 적합",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "RNN 기반 모델은 연속성이 있어 클릭 데이터에 적합",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "text",
			"version": 689,
			"versionNonce": 1527402334,
			"isDeleted": false,
			"id": "6Y8njjCN",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2024.2223506714836,
			"y": 1675.6190546755029,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"width": 525.391845703125,
			"height": 100.80000000000001,
			"seed": 326721635,
			"groupIds": [
				"1F9QKe7UV2erSs3MPQ4WM"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "순차적인 데이터를 처리하는데 강점\n이전 시간 단계의 출력이 현재 시간의 입력으로 사용되기에\n시퀸스 데이터의 연속성을 잘 학습할 수 있다.",
			"rawText": "순차적인 데이터를 처리하는데 강점\n이전 시간 단계의 출력이 현재 시간의 입력으로 사용되기에\n시퀸스 데이터의 연속성을 잘 학습할 수 있다.",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "순차적인 데이터를 처리하는데 강점\n이전 시간 단계의 출력이 현재 시간의 입력으로 사용되기에\n시퀸스 데이터의 연속성을 잘 학습할 수 있다.",
			"lineHeight": 1.2,
			"baseline": 94
		},
		{
			"type": "arrow",
			"version": 767,
			"versionNonce": 1829461378,
			"isDeleted": false,
			"id": "wQ8CYLuKT4M-27GeEwBTk",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -841.0652497176306,
			"y": 1145.204174736529,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#e7f5ff",
			"width": 1.0235919977076264,
			"height": 211.6046684602161,
			"seed": 260347779,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "V1Mvv5HF"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "irIGDMpyJWGyB_jajDFb6",
				"focus": 0.011908402757667701,
				"gap": 7.151039598476757
			},
			"endBinding": {
				"elementId": "2KSWDIsYbvis5RtptusnV",
				"focus": 0.020782160325808013,
				"gap": 5.534306234991618
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					1.0235919977076264,
					211.6046684602161
				]
			]
		},
		{
			"type": "text",
			"version": 106,
			"versionNonce": 1107604382,
			"isDeleted": false,
			"id": "V1Mvv5HF",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -861.6220071311486,
			"y": 1204.2169262332598,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#e7f5ff",
			"width": 87.89198303222656,
			"height": 33.6,
			"seed": 841873965,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "해결방안:",
			"rawText": "해결방안:",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "wQ8CYLuKT4M-27GeEwBTk",
			"originalText": "해결방안:",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "rectangle",
			"version": 3631,
			"versionNonce": 1418222914,
			"isDeleted": false,
			"id": "2KSWDIsYbvis5RtptusnV",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1133.4620812698,
			"y": 1362.3431494317367,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 577.6000366210938,
			"height": 572,
			"seed": 954015245,
			"groupIds": [
				"tVclKK95h3wDHWO4_GQNi",
				"t8cP4rjHZSArPd-nYLO_F"
			],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"id": "wQ8CYLuKT4M-27GeEwBTk",
					"type": "arrow"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 894,
			"versionNonce": 1554550750,
			"isDeleted": false,
			"id": "rRmfrMLn",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1106.1215318121303,
			"y": 1400.116201928894,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 207.64791870117188,
			"height": 33.6,
			"seed": 688378989,
			"groupIds": [
				"tVclKK95h3wDHWO4_GQNi",
				"t8cP4rjHZSArPd-nYLO_F"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "완전 연결 레이어 포함",
			"rawText": "완전 연결 레이어 포함",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "완전 연결 레이어 포함",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "text",
			"version": 901,
			"versionNonce": 198141186,
			"isDeleted": false,
			"id": "4qJ40Lvf",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1107.4639286186477,
			"y": 1462.9919320687452,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"width": 487.19976806640625,
			"height": 67.2,
			"seed": 55361229,
			"groupIds": [
				"tVclKK95h3wDHWO4_GQNi",
				"t8cP4rjHZSArPd-nYLO_F"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "embedding layer와 fully-connected layer 사이에 \nproduct layer를 도입",
			"rawText": "embedding layer와 fully-connected layer 사이에 \nproduct layer를 도입",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "embedding layer와 fully-connected layer 사이에 \nproduct layer를 도입",
			"lineHeight": 1.2,
			"baseline": 60
		},
		{
			"type": "image",
			"version": 353,
			"versionNonce": 1728504862,
			"isDeleted": false,
			"id": "vzR0V9BWtxmopwo_DR5-h",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1053.9273657726496,
			"y": 1585.0714087202832,
			"strokeColor": "transparent",
			"backgroundColor": "#e7f5ff",
			"width": 408.9726754451125,
			"height": 313.95233640919935,
			"seed": 453133635,
			"groupIds": [
				"t8cP4rjHZSArPd-nYLO_F"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "bdb9ea3364a7abdc205f780176b173ccf12a3a34",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "arrow",
			"version": 646,
			"versionNonce": 476017858,
			"isDeleted": false,
			"id": "dxTWNGQaZiwgH836sUuIL",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -542.2276646339703,
			"y": 1122.1447866310457,
			"strokeColor": "#e03131",
			"backgroundColor": "#e7f5ff",
			"width": 306.96407692101224,
			"height": 273.49542123279525,
			"seed": 1954020446,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "HoT9UGnC"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "irIGDMpyJWGyB_jajDFb6",
				"focus": 0,
				"gap": 8
			},
			"endBinding": {
				"elementId": "cSJCLxAwpDBQwaT7qtv_Q",
				"focus": 0,
				"gap": 8
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					294.1212668140354,
					267.6539548252151
				]
			]
		},
		{
			"type": "text",
			"version": 96,
			"versionNonce": 1930473566,
			"isDeleted": false,
			"id": "HoT9UGnC",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -387.6464219242227,
			"y": 1124.6793830946797,
			"strokeColor": "#e03131",
			"backgroundColor": "#e7f5ff",
			"width": 41.74799601236979,
			"height": 33.599999999999994,
			"seed": 352974878,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "단점",
			"rawText": "단점",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "dxTWNGQaZiwgH836sUuIL",
			"originalText": "단점",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "rectangle",
			"version": 3526,
			"versionNonce": 131566722,
			"isDeleted": false,
			"id": "ULjGn0ZQE-nIW6gBvQbiC",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1600.8347249746066,
			"y": 1373.89039298469,
			"strokeColor": "#1971c2",
			"backgroundColor": "#a5d8ff",
			"width": 577.6000366210938,
			"height": 572,
			"seed": 1741163010,
			"groupIds": [
				"7Ex5kT-WLLKbUSfBIke9M",
				"WcvOZtwzqtlhU5qD326uA"
			],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"id": "kGcBufpeNOALPbBQRugYX",
					"type": "arrow"
				},
				{
					"id": "eSzSzP_hi_HBn7joshpsk",
					"type": "arrow"
				},
				{
					"id": "183-VcNu2YeNEPUHgHqF9",
					"type": "arrow"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 1086,
			"versionNonce": 748090526,
			"isDeleted": false,
			"id": "99Bs0Muz",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1623.4780449283826,
			"y": 1417.9573196803278,
			"strokeColor": "#1971c2",
			"backgroundColor": "#a5d8ff",
			"width": 355.39178466796875,
			"height": 86.39999999999999,
			"seed": 469465538,
			"groupIds": [
				"7Ex5kT-WLLKbUSfBIke9M",
				"WcvOZtwzqtlhU5qD326uA"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 36,
			"fontFamily": 4,
			"text": "Wide & Deep Learning for \nRecommender Systems",
			"rawText": "Wide & Deep Learning for \nRecommender Systems",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Wide & Deep Learning for \nRecommender Systems",
			"lineHeight": 1.2,
			"baseline": 77
		},
		{
			"type": "text",
			"version": 1290,
			"versionNonce": 1140239426,
			"isDeleted": false,
			"id": "3u3MeBQi",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1628.3011759837195,
			"y": 1787.3792773082575,
			"strokeColor": "#1971c2",
			"backgroundColor": "#a5d8ff",
			"width": 543.0596923828125,
			"height": 134.4,
			"seed": 531296642,
			"groupIds": [
				"7Ex5kT-WLLKbUSfBIke9M",
				"WcvOZtwzqtlhU5qD326uA"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "183-VcNu2YeNEPUHgHqF9",
					"type": "arrow"
				},
				{
					"id": "eSzSzP_hi_HBn7joshpsk",
					"type": "arrow"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "wide linear model과 dnn을 jointly train하는 \nWide & Deep learning을 소개하며 이는 recommender \nsystem에 대한 memorization과 generalization의 이점을 \n결합하고 있다.",
			"rawText": "wide linear model과 dnn을 jointly train하는 \nWide & Deep learning을 소개하며 이는 recommender \nsystem에 대한 memorization과 generalization의 이점을 \n결합하고 있다.",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "wide linear model과 dnn을 jointly train하는 \nWide & Deep learning을 소개하며 이는 recommender \nsystem에 대한 memorization과 generalization의 이점을 \n결합하고 있다.",
			"lineHeight": 1.2,
			"baseline": 127
		},
		{
			"type": "embeddable",
			"version": 805,
			"versionNonce": 491434206,
			"isDeleted": false,
			"id": "WAvtRm6ZfDe6Ihgn9a__p",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1620.470388247965,
			"y": 1533.906927559429,
			"strokeColor": "#1971c2",
			"backgroundColor": "#a5d8ff",
			"width": 538.000030517578,
			"height": 228.99997711181618,
			"seed": 110298526,
			"groupIds": [
				"WcvOZtwzqtlhU5qD326uA"
			],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [],
			"updated": 1706194040536,
			"link": "https://dl.acm.org/doi/pdf/10.1145/2988450.2988454",
			"locked": false,
			"validated": true,
			"scale": [
				1,
				1
			]
		},
		{
			"type": "rectangle",
			"version": 3460,
			"versionNonce": 916182018,
			"isDeleted": false,
			"id": "mqBOjE9PGYMJMMXjnuqhF",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1112.1799251985913,
			"y": 2236.6008426823996,
			"strokeColor": "#1971c2",
			"backgroundColor": "#a5d8ff",
			"width": 577.6000366210938,
			"height": 572,
			"seed": 905245442,
			"groupIds": [
				"YsxHIp7GKiMXi3R8dEjLs"
			],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"id": "k-RJEMkxhROcPERLTZItb",
					"type": "arrow"
				},
				{
					"id": "hbrAYgWudQPDud6cVyiwq",
					"type": "arrow"
				},
				{
					"id": "40HrDZzFRrM4nXpOFDuo3",
					"type": "arrow"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false
		},
		{
			"type": "embeddable",
			"version": 523,
			"versionNonce": 1891427614,
			"isDeleted": false,
			"id": "oaJnKwK4UVk0nafV3-dol",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1085.9255167957142,
			"y": 2394.600853779701,
			"strokeColor": "#1971c2",
			"backgroundColor": "#a5d8ff",
			"width": 525.0907759232955,
			"height": 234.1818514737215,
			"seed": 1185104578,
			"groupIds": [
				"YsxHIp7GKiMXi3R8dEjLs"
			],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [],
			"updated": 1706194040536,
			"link": "https://arxiv.org/pdf/1601.02376.pdf",
			"locked": false,
			"validated": true,
			"scale": [
				1,
				1
			]
		},
		{
			"type": "text",
			"version": 586,
			"versionNonce": 835060674,
			"isDeleted": false,
			"id": "JAQGQX0a",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1081.015708723537,
			"y": 2283.1826275723147,
			"strokeColor": "#1971c2",
			"backgroundColor": "#a5d8ff",
			"width": 407.69976806640625,
			"height": 86.39999999999999,
			"seed": 342989442,
			"groupIds": [
				"YsxHIp7GKiMXi3R8dEjLs"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 36,
			"fontFamily": 4,
			"text": "Deep Learning over Multi-field \nCategorical Data",
			"rawText": "Deep Learning over Multi-field \nCategorical Data",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Deep Learning over Multi-field \nCategorical Data",
			"lineHeight": 1.2,
			"baseline": 77
		},
		{
			"type": "text",
			"version": 530,
			"versionNonce": 945721694,
			"isDeleted": false,
			"id": "93XYqeVL",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1090.600769279289,
			"y": 2648.595804382245,
			"strokeColor": "#1971c2",
			"backgroundColor": "#a5d8ff",
			"width": 521.0238037109375,
			"height": 134.4,
			"seed": 236911170,
			"groupIds": [
				"YsxHIp7GKiMXi3R8dEjLs"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "심층신경망(DNN)을 사용하여 범주형 특징 상호작용에서 \n효과적인 패턴을 자동으로 학습하고 사용자의 광고 클릭을 \n예측하는 새로운 모델\nFM supported Neural Network(FNN)을 제안",
			"rawText": "심층신경망(DNN)을 사용하여 범주형 특징 상호작용에서 \n효과적인 패턴을 자동으로 학습하고 사용자의 광고 클릭을 \n예측하는 새로운 모델\nFM supported Neural Network(FNN)을 제안",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "심층신경망(DNN)을 사용하여 범주형 특징 상호작용에서 \n효과적인 패턴을 자동으로 학습하고 사용자의 광고 클릭을 \n예측하는 새로운 모델\nFM supported Neural Network(FNN)을 제안",
			"lineHeight": 1.2,
			"baseline": 127
		},
		{
			"type": "rectangle",
			"version": 3381,
			"versionNonce": 1871985538,
			"isDeleted": false,
			"id": "cSJCLxAwpDBQwaT7qtv_Q",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -240.10639781993495,
			"y": 1373.890392949254,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 577.6000366210938,
			"height": 572,
			"seed": 228013086,
			"groupIds": [
				"fycqbMc6MOhxfvJ7i-gt9"
			],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"id": "hbrAYgWudQPDud6cVyiwq",
					"type": "arrow"
				},
				{
					"id": "dxTWNGQaZiwgH836sUuIL",
					"type": "arrow"
				},
				{
					"id": "lBnJAxkb-XFleQwwJnSeI",
					"type": "arrow"
				},
				{
					"id": "kGcBufpeNOALPbBQRugYX",
					"type": "arrow"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 631,
			"versionNonce": 796964254,
			"isDeleted": false,
			"id": "URbH6FLo",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -208.30629812918005,
			"y": 1446.447937264476,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 370.83184814453125,
			"height": 33.6,
			"seed": 51839070,
			"groupIds": [
				"fycqbMc6MOhxfvJ7i-gt9"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "낮은 차원의 피처 상호작용 포착하지 못함",
			"rawText": "낮은 차원의 피처 상호작용 포착하지 못함",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "낮은 차원의 피처 상호작용 포착하지 못함",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "text",
			"version": 642,
			"versionNonce": 239434562,
			"isDeleted": false,
			"id": "bo8eVoIn",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -206.29082571707113,
			"y": 1634.5145835860908,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 51.57598876953125,
			"height": 33.6,
			"seed": 2080178398,
			"groupIds": [
				"fycqbMc6MOhxfvJ7i-gt9"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "Why?",
			"rawText": "Why?",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Why?",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "text",
			"version": 881,
			"versionNonce": 2136232414,
			"isDeleted": false,
			"id": "sGWF2J8e",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -209.9973245811666,
			"y": 1684.606287371806,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"width": 512.2037353515625,
			"height": 134.4,
			"seed": 1688548638,
			"groupIds": [
				"fycqbMc6MOhxfvJ7i-gt9"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "PNN과 FNN은 주로 피처 임베딩을 사용하여 입력 피처를 \n저차원의 벡터로 매핑합니다. 피처 임베딩은 피처를 \n밀집 벡터로 표현하는데, 낮은 차원의 벡터로 표현되면서 \n피처 간의 상호작용을 제대로 포착하기 어려워집니다. ",
			"rawText": "PNN과 FNN은 주로 피처 임베딩을 사용하여 입력 피처를 \n저차원의 벡터로 매핑합니다. 피처 임베딩은 피처를 \n밀집 벡터로 표현하는데, 낮은 차원의 벡터로 표현되면서 \n피처 간의 상호작용을 제대로 포착하기 어려워집니다. ",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "PNN과 FNN은 주로 피처 임베딩을 사용하여 입력 피처를 \n저차원의 벡터로 매핑합니다. 피처 임베딩은 피처를 \n밀집 벡터로 표현하는데, 낮은 차원의 벡터로 표현되면서 \n피처 간의 상호작용을 제대로 포착하기 어려워집니다. ",
			"lineHeight": 1.2,
			"baseline": 127
		},
		{
			"type": "text",
			"version": 887,
			"versionNonce": 205046530,
			"isDeleted": false,
			"id": "XksToshA",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -205.64496347061606,
			"y": 1498.8042038308035,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"width": 494.8157653808594,
			"height": 100.80000000000001,
			"seed": 272286466,
			"groupIds": [
				"Acbn70FtjscwKpTelL5oe",
				"-vMvfIB3Gs6LE257XKZF1"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "PNN과 FNN은 다른 딥러닝 모델처럼 낮은 차원의 특징 \n상호작용을 거의 포착하지 못하는데, 이는 CTR 예측에 \n필수적인 요소이기도 합니다.",
			"rawText": "PNN과 FNN은 다른 딥러닝 모델처럼 낮은 차원의 특징 \n상호작용을 거의 포착하지 못하는데, 이는 CTR 예측에 \n필수적인 요소이기도 합니다.",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "PNN과 FNN은 다른 딥러닝 모델처럼 낮은 차원의 특징 \n상호작용을 거의 포착하지 못하는데, 이는 CTR 예측에 \n필수적인 요소이기도 합니다.",
			"lineHeight": 1.2,
			"baseline": 94
		},
		{
			"type": "arrow",
			"version": 782,
			"versionNonce": 48915998,
			"isDeleted": false,
			"id": "lBnJAxkb-XFleQwwJnSeI",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 72.69925645607748,
			"y": 1366.3996932042014,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#e7f5ff",
			"width": 1.4192788354747847,
			"height": 230.4149472874053,
			"seed": 218033054,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "IJWK1fQp"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "cSJCLxAwpDBQwaT7qtv_Q",
				"focus": 0.0763962799668659,
				"gap": 7.490699745052552
			},
			"endBinding": {
				"elementId": "gbbYd5ie",
				"focus": -0.08009410997761873,
				"gap": 31.66846836166104
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					1.4192788354747847,
					-230.4149472874053
				]
			]
		},
		{
			"type": "text",
			"version": 96,
			"versionNonce": 1139610306,
			"isDeleted": false,
			"id": "IJWK1fQp",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -103.43421504244009,
			"y": 1997.4900292017342,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#e7f5ff",
			"width": 83.91596984863281,
			"height": 33.6,
			"seed": 686339010,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "추가설명:",
			"rawText": "추가설명:",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "lBnJAxkb-XFleQwwJnSeI",
			"originalText": "추가설명:",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "rectangle",
			"version": 3537,
			"versionNonce": 187953758,
			"isDeleted": false,
			"id": "x0lRyQBcfaQBOO3UR0GME",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -236.41952209214264,
			"y": 559.5232262353055,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 577.6000366210938,
			"height": 572,
			"seed": 350742494,
			"groupIds": [
				"ZoUPup_k-pY7NWeewcNUF",
				"YhpirDlVpJ-Pca4_QF-5Y"
			],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"id": "lBnJAxkb-XFleQwwJnSeI",
					"type": "arrow"
				},
				{
					"id": "47LnubIzpnR2tGBL0OHHH",
					"type": "arrow"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 801,
			"versionNonce": 1744923266,
			"isDeleted": false,
			"id": "egBloQMm",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -204.61942240138774,
			"y": 580.0807705505275,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 106.62394714355469,
			"height": 33.6,
			"seed": 228277278,
			"groupIds": [
				"ZoUPup_k-pY7NWeewcNUF",
				"YhpirDlVpJ-Pca4_QF-5Y"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "피쳐 임베딩",
			"rawText": "피쳐 임베딩",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "피쳐 임베딩",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "text",
			"version": 978,
			"versionNonce": 587331230,
			"isDeleted": false,
			"id": "T0AtoJKo",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -207.86569393978948,
			"y": 888.1319075348409,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 156.2399444580078,
			"height": 33.6,
			"seed": 1274367134,
			"groupIds": [
				"ZoUPup_k-pY7NWeewcNUF",
				"YhpirDlVpJ-Pca4_QF-5Y"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "저차원 특성 공간:",
			"rawText": "저차원 특성 공간:",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "저차원 특성 공간:",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "text",
			"version": 1300,
			"versionNonce": 2134166082,
			"isDeleted": false,
			"id": "AtaOH2G6",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -215.3104793709524,
			"y": 625.2391053990685,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"width": 539.5318603515625,
			"height": 235.20000000000002,
			"seed": 1864239326,
			"groupIds": [
				"ZoUPup_k-pY7NWeewcNUF",
				"YhpirDlVpJ-Pca4_QF-5Y"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "범주형 피처(예: 성별, 도시, 제품 등)는 일반적으로 \n원-핫 인코딩으로 표현됩니다. 하지만 이러한 표현은 \n고차원이며 희소한 벡터로 나타납니다. 이를 해결하기 위해 \n신경망은 피처 임베딩을 사용하여 범주형 피처를 저차원의 \n밀집 벡터로 매핑합니다. 임베딩 레이어의 가중치 행렬을 \n학습함으로써, 각 범주형 값은 연속적이고 학습 가능한 \n표현으로 변환됩니다.",
			"rawText": "범주형 피처(예: 성별, 도시, 제품 등)는 일반적으로 \n원-핫 인코딩으로 표현됩니다. 하지만 이러한 표현은 \n고차원이며 희소한 벡터로 나타납니다. 이를 해결하기 위해 \n신경망은 피처 임베딩을 사용하여 범주형 피처를 저차원의 \n밀집 벡터로 매핑합니다. 임베딩 레이어의 가중치 행렬을 \n학습함으로써, 각 범주형 값은 연속적이고 학습 가능한 \n표현으로 변환됩니다.",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "범주형 피처(예: 성별, 도시, 제품 등)는 일반적으로 \n원-핫 인코딩으로 표현됩니다. 하지만 이러한 표현은 \n고차원이며 희소한 벡터로 나타납니다. 이를 해결하기 위해 \n신경망은 피처 임베딩을 사용하여 범주형 피처를 저차원의 \n밀집 벡터로 매핑합니다. 임베딩 레이어의 가중치 행렬을 \n학습함으로써, 각 범주형 값은 연속적이고 학습 가능한 \n표현으로 변환됩니다.",
			"lineHeight": 1.2,
			"baseline": 228
		},
		{
			"type": "text",
			"version": 1484,
			"versionNonce": 1392866014,
			"isDeleted": false,
			"id": "gbbYd5ie",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -223.765605891336,
			"y": 936.3162775551349,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"width": 552.831787109375,
			"height": 168,
			"seed": 1028022366,
			"groupIds": [
				"hVnyJkk-TTD6vcSNk85Ak",
				"YhpirDlVpJ-Pca4_QF-5Y"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "lBnJAxkb-XFleQwwJnSeI",
					"type": "arrow"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "임베딩을 통해 얻은 벡터는 일반적으로 저차원의 공간에 \n위치하게 됩니다. 예를 들어, 성별을 나타내는 피처를 2차원의 \n벡터로 임베딩할 경우, 남성과 여성은 각각 다른 2차원 \n벡터에 매핑됩니다. 이러한 저차원 특성 공간에서는 피처 간의\n 상호작용을 표현하기가 한계가 있습니다.",
			"rawText": "임베딩을 통해 얻은 벡터는 일반적으로 저차원의 공간에 \n위치하게 됩니다. 예를 들어, 성별을 나타내는 피처를 2차원의 \n벡터로 임베딩할 경우, 남성과 여성은 각각 다른 2차원 \n벡터에 매핑됩니다. 이러한 저차원 특성 공간에서는 피처 간의\n 상호작용을 표현하기가 한계가 있습니다.",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "임베딩을 통해 얻은 벡터는 일반적으로 저차원의 공간에 \n위치하게 됩니다. 예를 들어, 성별을 나타내는 피처를 2차원의 \n벡터로 임베딩할 경우, 남성과 여성은 각각 다른 2차원 \n벡터에 매핑됩니다. 이러한 저차원 특성 공간에서는 피처 간의\n 상호작용을 표현하기가 한계가 있습니다.",
			"lineHeight": 1.2,
			"baseline": 161
		},
		{
			"type": "arrow",
			"version": 871,
			"versionNonce": 1617310210,
			"isDeleted": false,
			"id": "47LnubIzpnR2tGBL0OHHH",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 73.14512296434904,
			"y": 547.8336925429021,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#e7f5ff",
			"width": 4.111405134105567,
			"height": 185.15744964677094,
			"seed": 1031427294,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "anwplova"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "x0lRyQBcfaQBOO3UR0GME",
				"focus": 0.04795672210151663,
				"gap": 11.689533692403472
			},
			"endBinding": {
				"elementId": "IltPCXdTc2lezOolu4J_4",
				"focus": -0.03619420213861859,
				"gap": 11.255603527444691
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					4.111405134105567,
					-185.15744964677094
				]
			]
		},
		{
			"type": "text",
			"version": 87,
			"versionNonce": 1708091166,
			"isDeleted": false,
			"id": "anwplova",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -77.84733797042941,
			"y": 2755.5441280910463,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#e7f5ff",
			"width": 44.49198913574219,
			"height": 33.6,
			"seed": 858369282,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "예시:",
			"rawText": "예시:",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "47LnubIzpnR2tGBL0OHHH",
			"originalText": "예시:",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "rectangle",
			"version": 3649,
			"versionNonce": 781492674,
			"isDeleted": false,
			"id": "IltPCXdTc2lezOolu4J_4",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -215.6256966089851,
			"y": -220.57936063131353,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 577.6000366210938,
			"height": 572,
			"seed": 2009436290,
			"groupIds": [
				"osdJy9gqLmot1UmLdeADB",
				"TIKdVKYiljN-VGMMx9yvy"
			],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"id": "47LnubIzpnR2tGBL0OHHH",
					"type": "arrow"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 938,
			"versionNonce": 735105886,
			"isDeleted": false,
			"id": "LcesrzB3",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -160.3065281121044,
			"y": -193.7534054527108,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 157.86390686035156,
			"height": 33.6,
			"seed": 260321346,
			"groupIds": [
				"osdJy9gqLmot1UmLdeADB",
				"TIKdVKYiljN-VGMMx9yvy"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "성별 \"남성\", \"여성\"",
			"rawText": "성별 \"남성\", \"여성\"",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "성별 \"남성\", \"여성\"",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "text",
			"version": 1070,
			"versionNonce": 1423907202,
			"isDeleted": false,
			"id": "WI6sRNVp",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -156.98435769377022,
			"y": 111.9087842736568,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 110.54396057128906,
			"height": 33.6,
			"seed": 1388480450,
			"groupIds": [
				"osdJy9gqLmot1UmLdeADB",
				"TIKdVKYiljN-VGMMx9yvy"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "특성 키 추가",
			"rawText": "특성 키 추가",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "특성 키 추가",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "text",
			"version": 1248,
			"versionNonce": 1062909854,
			"isDeleted": false,
			"id": "IrNZp4yi",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -180.2901304065016,
			"y": 168.53372887284388,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"width": 505.3157653808594,
			"height": 134.4,
			"seed": 1180712834,
			"groupIds": [
				"osdJy9gqLmot1UmLdeADB",
				"TIKdVKYiljN-VGMMx9yvy"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "상호작용의 예시로, 만약 \"키\"라는 추가 피처가 있다면, \n\"남성\"일 때 \"키\" 피처의 영향이 \"여성\"일 때와 다를 수 \n있습니다. 낮은 차원의 임베딩에서는 이러한 복잡한 특성 \n간의 상호작용을 잘 표현하기 어려울 것입니다. ",
			"rawText": "상호작용의 예시로, 만약 \"키\"라는 추가 피처가 있다면, \n\"남성\"일 때 \"키\" 피처의 영향이 \"여성\"일 때와 다를 수 \n있습니다. 낮은 차원의 임베딩에서는 이러한 복잡한 특성 \n간의 상호작용을 잘 표현하기 어려울 것입니다. ",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "상호작용의 예시로, 만약 \"키\"라는 추가 피처가 있다면, \n\"남성\"일 때 \"키\" 피처의 영향이 \"여성\"일 때와 다를 수 \n있습니다. 낮은 차원의 임베딩에서는 이러한 복잡한 특성 \n간의 상호작용을 잘 표현하기 어려울 것입니다. ",
			"lineHeight": 1.2,
			"baseline": 127
		},
		{
			"type": "text",
			"version": 452,
			"versionNonce": 42244418,
			"isDeleted": false,
			"id": "YW0gr6Xf",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -173.77644904159922,
			"y": -146.25167769587858,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#e7f5ff",
			"width": 478.6318054199219,
			"height": 235.20000000000002,
			"seed": 1281477314,
			"groupIds": [
				"TIKdVKYiljN-VGMMx9yvy"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "성별을 예로 들어보겠습니다. 가정하자면 성별은 \n\"남성\"과 \"여성\"이라는 두 가지 범주로 나뉠 수 있는 \n피처입니다. 각 범주를 2차원의 벡터로 임베딩한다고 \n가정하면 다음과 같을 수 있습니다:\n\n\"남성\"을 나타내는 2차원 임베딩 벡터: [0.8, -0.5]\n\"여성\"을 나타내는 2차원 임베딩 벡터: [-0.7, 0.9]",
			"rawText": "성별을 예로 들어보겠습니다. 가정하자면 성별은 \n\"남성\"과 \"여성\"이라는 두 가지 범주로 나뉠 수 있는 \n피처입니다. 각 범주를 2차원의 벡터로 임베딩한다고 \n가정하면 다음과 같을 수 있습니다:\n\n\"남성\"을 나타내는 2차원 임베딩 벡터: [0.8, -0.5]\n\"여성\"을 나타내는 2차원 임베딩 벡터: [-0.7, 0.9]",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "성별을 예로 들어보겠습니다. 가정하자면 성별은 \n\"남성\"과 \"여성\"이라는 두 가지 범주로 나뉠 수 있는 \n피처입니다. 각 범주를 2차원의 벡터로 임베딩한다고 \n가정하면 다음과 같을 수 있습니다:\n\n\"남성\"을 나타내는 2차원 임베딩 벡터: [0.8, -0.5]\n\"여성\"을 나타내는 2차원 임베딩 벡터: [-0.7, 0.9]",
			"lineHeight": 1.2,
			"baseline": 228
		},
		{
			"type": "arrow",
			"version": 867,
			"versionNonce": 1218319326,
			"isDeleted": false,
			"id": "kGcBufpeNOALPbBQRugYX",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 341.44884559896616,
			"y": 1640.4950670718604,
			"strokeColor": "#2f9e44",
			"backgroundColor": "#a5d8ff",
			"width": 1246.0548127412108,
			"height": 1.5722929382668553,
			"seed": 1548187038,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "yhQrI37Y"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "cSJCLxAwpDBQwaT7qtv_Q",
				"focus": -0.06902975282459316,
				"gap": 3.9552067978073637
			},
			"endBinding": {
				"elementId": "ULjGn0ZQE-nIW6gBvQbiC",
				"focus": 0.06090770399744581,
				"gap": 13.331066634429703
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					1246.0548127412108,
					1.5722929382668553
				]
			]
		},
		{
			"type": "text",
			"version": 105,
			"versionNonce": 652484866,
			"isDeleted": false,
			"id": "yhQrI37Y",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 447.8188941219154,
			"y": 1623.3478836414204,
			"strokeColor": "#2f9e44",
			"backgroundColor": "#a5d8ff",
			"width": 183.2598876953125,
			"height": 33.6,
			"seed": 872803038,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "linear(wide) + Deep",
			"rawText": "linear(wide) + Deep",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "kGcBufpeNOALPbBQRugYX",
			"originalText": "linear(wide) + Deep",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "rectangle",
			"version": 3641,
			"versionNonce": 1101785118,
			"isDeleted": false,
			"id": "2-kzip8ytDZ7vfQCvHz3P",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1053.4761732551312,
			"y": 2210.9487276868285,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 577.6000366210938,
			"height": 572,
			"seed": 1272310558,
			"groupIds": [
				"8-QbuspJ9109ja_q-zewP"
			],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"id": "183-VcNu2YeNEPUHgHqF9",
					"type": "arrow"
				},
				{
					"id": "WOXx1AX-uzoeCJHtu_Q8l",
					"type": "arrow"
				},
				{
					"id": "yYxUXjdoLPM5ciT4v4Vr2",
					"type": "arrow"
				},
				{
					"id": "jUvUBOKHI3PZ32Y9aYzsz",
					"type": "arrow"
				},
				{
					"id": "vGEnG3A29KDJSw3MDvw8N",
					"type": "arrow"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 888,
			"versionNonce": 1836888258,
			"isDeleted": false,
			"id": "xXND7mQQ",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1085.2762729458861,
			"y": 2235.5062720020505,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 131.93592834472656,
			"height": 33.6,
			"seed": 375838558,
			"groupIds": [
				"8-QbuspJ9109ja_q-zewP"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "Memorization",
			"rawText": "Memorization",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Memorization",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "text",
			"version": 897,
			"versionNonce": 980759646,
			"isDeleted": false,
			"id": "H40TDvkU",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1075.6096062792196,
			"y": 2284.7062720020504,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"width": 557.3677978515625,
			"height": 168,
			"seed": 1888500638,
			"groupIds": [
				"8-QbuspJ9109ja_q-zewP"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "WOXx1AX-uzoeCJHtu_Q8l",
					"type": "arrow"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "일반적인 regression은 종종 One-hot vector를 사용하여 \n학습합니다. Memorization은 기존의 특성들을 사용하여 새로운 \n특성을 만들어 학습하는 것을 의미합니다. 일반적으로 \n간단하게 Memorization은 동시출현(co-occurrence)빈도를 \n표현하는 Cross-product로 생성이 가능합니다.",
			"rawText": "일반적인 regression은 종종 One-hot vector를 사용하여 \n학습합니다. Memorization은 기존의 특성들을 사용하여 새로운 \n특성을 만들어 학습하는 것을 의미합니다. 일반적으로 \n간단하게 Memorization은 동시출현(co-occurrence)빈도를 \n표현하는 Cross-product로 생성이 가능합니다.",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "일반적인 regression은 종종 One-hot vector를 사용하여 \n학습합니다. Memorization은 기존의 특성들을 사용하여 새로운 \n특성을 만들어 학습하는 것을 의미합니다. 일반적으로 \n간단하게 Memorization은 동시출현(co-occurrence)빈도를 \n표현하는 Cross-product로 생성이 가능합니다.",
			"lineHeight": 1.2,
			"baseline": 161
		},
		{
			"type": "text",
			"version": 928,
			"versionNonce": 971851906,
			"isDeleted": false,
			"id": "BvWoYZ20",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1087.291745357995,
			"y": 2471.5729183236654,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 310.183837890625,
			"height": 33.6,
			"seed": 1082333150,
			"groupIds": [
				"8-QbuspJ9109ja_q-zewP"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "Cross-product Tranformation",
			"rawText": "Cross-product Tranformation",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Cross-product Tranformation",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "text",
			"version": 1133,
			"versionNonce": 483063966,
			"isDeleted": false,
			"id": "gzPinRvH",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1083.5852464938996,
			"y": 2521.6646221093806,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"width": 539.895751953125,
			"height": 235.20000000000002,
			"seed": 2119199774,
			"groupIds": [
				"8-QbuspJ9109ja_q-zewP"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "jUvUBOKHI3PZ32Y9aYzsz",
					"type": "arrow"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "One-hot vector 사이의 AND 연산(cross product)을 통해\n동시출현 여부를 의미하는 새로운 Binary feature를 생성할 \n수 있습니다.\n\n예를 들어, AND(User = 정구섭, Item = 맥북) 이라는 새로운 \nMemorization 특성은 One-hot 특성간의 Cross-product \ntransformation을 통해 생성이 가능합니다.",
			"rawText": "One-hot vector 사이의 AND 연산(cross product)을 통해\n동시출현 여부를 의미하는 새로운 Binary feature를 생성할 \n수 있습니다.\n\n예를 들어, AND(User = 정구섭, Item = 맥북) 이라는 새로운 \nMemorization 특성은 One-hot 특성간의 Cross-product \ntransformation을 통해 생성이 가능합니다.",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "One-hot vector 사이의 AND 연산(cross product)을 통해\n동시출현 여부를 의미하는 새로운 Binary feature를 생성할 \n수 있습니다.\n\n예를 들어, AND(User = 정구섭, Item = 맥북) 이라는 새로운 \nMemorization 특성은 One-hot 특성간의 Cross-product \ntransformation을 통해 생성이 가능합니다.",
			"lineHeight": 1.2,
			"baseline": 228
		},
		{
			"type": "arrow",
			"version": 1240,
			"versionNonce": 603252802,
			"isDeleted": false,
			"id": "183-VcNu2YeNEPUHgHqF9",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1792.795627776024,
			"y": 1954.0355716087784,
			"strokeColor": "#2f9e44",
			"backgroundColor": "#a5d8ff",
			"width": 225.40850853591894,
			"height": 251.96815747313963,
			"seed": 1383247134,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "cG8mTWhz"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "ULjGn0ZQE-nIW6gBvQbiC",
				"focus": -0.30533303188201816,
				"gap": 8.14517862408843
			},
			"endBinding": {
				"elementId": "2-kzip8ytDZ7vfQCvHz3P",
				"focus": -0.06456572235750316,
				"gap": 4.9449986049103245
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-225.40850853591894,
					251.96815747313963
				]
			]
		},
		{
			"type": "text",
			"version": 105,
			"versionNonce": 1885222110,
			"isDeleted": false,
			"id": "cG8mTWhz",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 832.5619515219036,
			"y": 2059.7038943537877,
			"strokeColor": "#2f9e44",
			"backgroundColor": "#a5d8ff",
			"width": 102.92796325683594,
			"height": 33.6,
			"seed": 911526146,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "해결방안 1:",
			"rawText": "해결방안 1:",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "183-VcNu2YeNEPUHgHqF9",
			"originalText": "해결방안 1:",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "text",
			"version": 440,
			"versionNonce": 1936887810,
			"isDeleted": false,
			"id": "CdDT6gpz",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 2067.4052292760152,
			"y": 1964.8611891370024,
			"strokeColor": "#1971c2",
			"backgroundColor": "#a5d8ff",
			"width": 107.16218566894531,
			"height": 33.6,
			"seed": 978300766,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": "https://supkoon.tistory.com/32",
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "🌐[[참고]]",
			"rawText": "[참고](https://supkoon.tistory.com/32)",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "🌐[[참고]]",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "rectangle",
			"version": 3904,
			"versionNonce": 515893534,
			"isDeleted": false,
			"id": "-WL-zDJpglwbHZAMd3MAJ",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 2164.035635973607,
			"y": 2208.99457129846,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 577.6000366210938,
			"height": 572,
			"seed": 2112096990,
			"groupIds": [
				"wdnTSdUH2KLKdLZEhy0Bp"
			],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"id": "WOXx1AX-uzoeCJHtu_Q8l",
					"type": "arrow"
				},
				{
					"id": "eSzSzP_hi_HBn7joshpsk",
					"type": "arrow"
				},
				{
					"id": "jUvUBOKHI3PZ32Y9aYzsz",
					"type": "arrow"
				},
				{
					"id": "gWHSX1w9v1q1KW0WzgI-Z",
					"type": "arrow"
				}
			],
			"updated": 1706194040536,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 1177,
			"versionNonce": 476397506,
			"isDeleted": false,
			"id": "nhs9fcHl",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 2195.835735664362,
			"y": 2233.552115613682,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 147.419921875,
			"height": 33.6,
			"seed": 1763376926,
			"groupIds": [
				"wdnTSdUH2KLKdLZEhy0Bp"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040536,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "Generalization",
			"rawText": "Generalization",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Generalization",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "text",
			"version": 1365,
			"versionNonce": 929109342,
			"isDeleted": false,
			"id": "solpdiEq",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 2182.569296862279,
			"y": 2274.0547247883624,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"width": 552.3276977539062,
			"height": 302.40000000000003,
			"seed": 1911122782,
			"groupIds": [
				"wdnTSdUH2KLKdLZEhy0Bp"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "iM_hYrewAdl9zwYNb3NTS",
					"type": "arrow"
				},
				{
					"id": "yYxUXjdoLPM5ciT4v4Vr2",
					"type": "arrow"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "새로운 특성 조합에 대한 일반화된 예측을 가능하게 하는 \n방법입니다. Matrix Factorization , Factorization \nMachines 같은 임베딩 기반 모델들은 각각의 특성들을 동일한 \n차원의 잠재 공간으로 매핑하여 Dense 벡터로 \n표현합니다. 새로 표현된 Dense 특성벡터는 서로 내적이 \n가능하며, 따라서 별도의 Cross-product transformation\n을 필요로 하지 않습니다. 무엇보다도 Generalization은 \n과거에 관측되지 않은 특성의 조합에 대한 일반화된 예측을 \n제공해 줍니다.",
			"rawText": "새로운 특성 조합에 대한 일반화된 예측을 가능하게 하는 \n방법입니다. Matrix Factorization , Factorization \nMachines 같은 임베딩 기반 모델들은 각각의 특성들을 동일한 \n차원의 잠재 공간으로 매핑하여 Dense 벡터로 \n표현합니다. 새로 표현된 Dense 특성벡터는 서로 내적이 \n가능하며, 따라서 별도의 Cross-product transformation\n을 필요로 하지 않습니다. 무엇보다도 Generalization은 \n과거에 관측되지 않은 특성의 조합에 대한 일반화된 예측을 \n제공해 줍니다.",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "새로운 특성 조합에 대한 일반화된 예측을 가능하게 하는 \n방법입니다. Matrix Factorization , Factorization \nMachines 같은 임베딩 기반 모델들은 각각의 특성들을 동일한 \n차원의 잠재 공간으로 매핑하여 Dense 벡터로 \n표현합니다. 새로 표현된 Dense 특성벡터는 서로 내적이 \n가능하며, 따라서 별도의 Cross-product transformation\n을 필요로 하지 않습니다. 무엇보다도 Generalization은 \n과거에 관측되지 않은 특성의 조합에 대한 일반화된 예측을 \n제공해 줍니다.",
			"lineHeight": 1.2,
			"baseline": 295
		},
		{
			"type": "text",
			"version": 1340,
			"versionNonce": 988542850,
			"isDeleted": false,
			"id": "yaFrOSO5",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 2197.8512080764704,
			"y": 2603.0473333638683,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 40.90797424316406,
			"height": 33.6,
			"seed": 1721782174,
			"groupIds": [
				"wdnTSdUH2KLKdLZEhy0Bp"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "효과",
			"rawText": "효과",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "효과",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "text",
			"version": 1695,
			"versionNonce": 865253790,
			"isDeleted": false,
			"id": "xQPAovzh",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 2194.1447092123753,
			"y": 2651.710465721012,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"width": 535.0237426757812,
			"height": 67.2,
			"seed": 594586590,
			"groupIds": [
				"wdnTSdUH2KLKdLZEhy0Bp"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "추천시스템에서 Generalization은 추천의 다양성을 증가\n비주류 아이템을 거의 추천하지 않는 Long-tail problem 극복",
			"rawText": "추천시스템에서 Generalization은 추천의 다양성을 증가\n비주류 아이템을 거의 추천하지 않는 Long-tail problem 극복",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "추천시스템에서 Generalization은 추천의 다양성을 증가\n비주류 아이템을 거의 추천하지 않는 Long-tail problem 극복",
			"lineHeight": 1.2,
			"baseline": 60
		},
		{
			"type": "arrow",
			"version": 1474,
			"versionNonce": 256227138,
			"isDeleted": false,
			"id": "WOXx1AX-uzoeCJHtu_Q8l",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1634.863476595102,
			"y": 2360.036106887429,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 511.9999999999999,
			"height": 60.268717030005064,
			"seed": 138182430,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "v8uVkL26"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "H40TDvkU",
				"focus": -0.35697854552690156,
				"gap": 1.8860724643197955
			},
			"endBinding": {
				"elementId": "-WL-zDJpglwbHZAMd3MAJ",
				"focus": 0.12085503735066563,
				"gap": 17.172159378505057
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					511.9999999999999,
					60.268717030005064
				]
			]
		},
		{
			"type": "text",
			"version": 284,
			"versionNonce": 981849566,
			"isDeleted": false,
			"id": "v8uVkL26",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 911.7007079212738,
			"y": 2355.96803386244,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 258.21588134765625,
			"height": 67.2,
			"seed": 1081643842,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "등장하지 않은 조합에 대한 \n설명력이 떨어짐",
			"rawText": "등장하지 않은 조합에 대한 \n설명력이 떨어짐",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "WOXx1AX-uzoeCJHtu_Q8l",
			"originalText": "등장하지 않은 조합에 대한 \n설명력이 떨어짐",
			"lineHeight": 1.2,
			"baseline": 60
		},
		{
			"type": "arrow",
			"version": 896,
			"versionNonce": 2043772674,
			"isDeleted": false,
			"id": "eSzSzP_hi_HBn7joshpsk",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1989.1574847984084,
			"y": 1958.3342834763394,
			"strokeColor": "#2f9e44",
			"backgroundColor": "#a5d8ff",
			"width": 231.38465294471166,
			"height": 246.15386962890602,
			"seed": 764516930,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "COtzUc1j"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "ULjGn0ZQE-nIW6gBvQbiC",
				"focus": 0.32460821057760203,
				"gap": 12.443890491649427
			},
			"endBinding": {
				"elementId": "-WL-zDJpglwbHZAMd3MAJ",
				"focus": 0.07313415857925212,
				"gap": 4.506418193214813
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					231.38465294471166,
					246.15386962890602
				]
			]
		},
		{
			"type": "text",
			"version": 95,
			"versionNonce": 1699441182,
			"isDeleted": false,
			"id": "COtzUc1j",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1200.642998102307,
			"y": 2062.288312290792,
			"strokeColor": "#2f9e44",
			"backgroundColor": "#a5d8ff",
			"width": 108.30397033691406,
			"height": 33.6,
			"seed": 1567462530,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "해결방안 2:",
			"rawText": "해결방안 2:",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "eSzSzP_hi_HBn7joshpsk",
			"originalText": "해결방안 2:",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "text",
			"version": 506,
			"versionNonce": 1997426370,
			"isDeleted": false,
			"id": "2bkCbej3",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 2582.238806430877,
			"y": 2737.0244764010904,
			"strokeColor": "#1971c2",
			"backgroundColor": "#a5d8ff",
			"width": 136.1505889892578,
			"height": 33.6,
			"seed": 1768959042,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040537,
			"link": "[[01_Evaluating_Recommender_Systems#Novelty]]",
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "📍[[long tail]]",
			"rawText": "[long tail](01_Evaluating_Recommender_Systems#Novelty)",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "📍[[long tail]]",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "rectangle",
			"version": 1057,
			"versionNonce": 47478366,
			"isDeleted": false,
			"id": "LLUrhDxTngrRcfH_ivYRD",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 2945.746911913592,
			"y": 2470.497372397467,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#1e1e1e",
			"width": 561.4469278933819,
			"height": 310.49719826631843,
			"seed": 291731038,
			"groupIds": [
				"8nwLIKuW3A821ORa3gc4Q"
			],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [],
			"updated": 1706194040537,
			"link": null,
			"locked": false
		},
		{
			"type": "image",
			"version": 1117,
			"versionNonce": 463152770,
			"isDeleted": false,
			"id": "xyTMQ9rrtHBXGvfDhbftt",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 2966.700866614113,
			"y": 2497.2450804308883,
			"strokeColor": "transparent",
			"backgroundColor": "#a5d8ff",
			"width": 513.5494187466128,
			"height": 262.8374455668428,
			"seed": 421479198,
			"groupIds": [
				"8nwLIKuW3A821ORa3gc4Q"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "iM_hYrewAdl9zwYNb3NTS",
					"type": "arrow"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "6df3d62f89062b41d078fce5b944b233e9d6542d",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "arrow",
			"version": 1641,
			"versionNonce": 1542584990,
			"isDeleted": false,
			"id": "iM_hYrewAdl9zwYNb3NTS",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 2745.0362237990157,
			"y": 2497.7027007031684,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#1e1e1e",
			"width": 196.26651983854163,
			"height": 66.22520888246254,
			"seed": 1718979906,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "Zd7jPvlx"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "solpdiEq",
				"focus": -0.09885161766836571,
				"gap": 10.139229182830604
			},
			"endBinding": {
				"elementId": "xyTMQ9rrtHBXGvfDhbftt",
				"focus": -0.13976023756907086,
				"gap": 25.39812297655544
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					196.26651983854163,
					66.22520888246254
				]
			]
		},
		{
			"type": "text",
			"version": 84,
			"versionNonce": 272041538,
			"isDeleted": false,
			"id": "Zd7jPvlx",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1928.1620929222254,
			"y": 2340.8865463759557,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#1e1e1e",
			"width": 146.97193908691406,
			"height": 33.6,
			"seed": 272354498,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "Dense Vector?",
			"rawText": "Dense Vector?",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "iM_hYrewAdl9zwYNb3NTS",
			"originalText": "Dense Vector?",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "arrow",
			"version": 1830,
			"versionNonce": 2002056926,
			"isDeleted": false,
			"id": "yYxUXjdoLPM5ciT4v4Vr2",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 2152.6341298348343,
			"y": 2496.785209093522,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 496.99993896484375,
			"height": 55.75880773636936,
			"seed": 1935809118,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "01xPaPQ0"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "solpdiEq",
				"focus": -0.2041298667770294,
				"gap": 29.93516702744455
			},
			"endBinding": {
				"elementId": "2-kzip8ytDZ7vfQCvHz3P",
				"focus": 0.2850218805064704,
				"gap": 24.557980993765568
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-496.99993896484375,
					55.75880773636936
				]
			]
		},
		{
			"type": "text",
			"version": 366,
			"versionNonce": 230747650,
			"isDeleted": false,
			"id": "01xPaPQ0",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 919.1333789832713,
			"y": 2489.1876824997275,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 269.89190673828125,
			"height": 67.2,
			"seed": 858463902,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "실제로 존재할 수 없는 관계를\n과도하게 일반화 가능성",
			"rawText": "실제로 존재할 수 없는 관계를\n과도하게 일반화 가능성",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "yYxUXjdoLPM5ciT4v4Vr2",
			"originalText": "실제로 존재할 수 없는 관계를\n과도하게 일반화 가능성",
			"lineHeight": 1.2,
			"baseline": 60
		},
		{
			"type": "arrow",
			"version": 874,
			"versionNonce": 1569614622,
			"isDeleted": false,
			"id": "jUvUBOKHI3PZ32Y9aYzsz",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1657.5921819702219,
			"y": 2674.115107106576,
			"strokeColor": "#2f9e44",
			"backgroundColor": "#1e1e1e",
			"width": 484.5695021969617,
			"height": 1.461898738880791,
			"seed": 2108961118,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "9U1ItVqy"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "2-kzip8ytDZ7vfQCvHz3P",
				"focus": 0.620897484170178,
				"gap": 26.51597209399688
			},
			"endBinding": {
				"elementId": "-WL-zDJpglwbHZAMd3MAJ",
				"focus": -0.6160301696118458,
				"gap": 21.87395180642352
			},
			"lastCommittedPoint": null,
			"startArrowhead": "arrow",
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					484.5695021969617,
					-1.461898738880791
				]
			]
		},
		{
			"type": "text",
			"version": 86,
			"versionNonce": 1496833474,
			"isDeleted": false,
			"id": "9U1ItVqy",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1003.6081310696793,
			"y": 2655.0273135317716,
			"strokeColor": "#2f9e44",
			"backgroundColor": "#1e1e1e",
			"width": 92.42794799804688,
			"height": 33.6,
			"seed": 186266078,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "상호보완적",
			"rawText": "상호보완적",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "jUvUBOKHI3PZ32Y9aYzsz",
			"originalText": "상호보완적",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "rectangle",
			"version": 1329,
			"versionNonce": 1561286494,
			"isDeleted": false,
			"id": "6puHaWBVZ4QDYmVGkefbl",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1215.5995084109743,
			"y": 2993.6022789726685,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#1e1e1e",
			"width": 1332.9187649150056,
			"height": 332.36079574894364,
			"seed": 951373086,
			"groupIds": [
				"A9J2NhPoDo64xgzeFYRbB",
				"wayCmIiy0RmenEVGWuOIA"
			],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"id": "M4RQ5SEjsTcIeB7i78hat",
					"type": "arrow"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false
		},
		{
			"type": "image",
			"version": 456,
			"versionNonce": 1069208962,
			"isDeleted": false,
			"id": "8JRbq-_TEzgozIzvE8Ttv",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1240.9365814928553,
			"y": 3014.822759653074,
			"strokeColor": "transparent",
			"backgroundColor": "#1e1e1e",
			"width": 1280,
			"height": 288,
			"seed": 724383582,
			"groupIds": [
				"wayCmIiy0RmenEVGWuOIA"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "vGEnG3A29KDJSw3MDvw8N",
					"type": "arrow"
				},
				{
					"id": "gWHSX1w9v1q1KW0WzgI-Z",
					"type": "arrow"
				},
				{
					"id": "ZUGsu1uttJXtd1ICHWM82",
					"type": "arrow"
				},
				{
					"id": "uHW02R3JaT2krHCxngp28",
					"type": "arrow"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "b55d921621d8d0f82b8935e205bb73902fe0c971",
			"scale": [
				1,
				1
			]
		},
		{
			"id": "vGEnG3A29KDJSw3MDvw8N",
			"type": "arrow",
			"x": 1317.9121613487077,
			"y": 2791.643452706343,
			"width": 94.5454545454545,
			"height": 196.363691850142,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#FFC47C",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": null,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"seed": 551938498,
			"version": 700,
			"versionNonce": 1311292318,
			"isDeleted": false,
			"boundElements": [
				{
					"type": "text",
					"id": "jboLMRP1"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					94.5454545454545,
					196.363691850142
				]
			],
			"lastCommittedPoint": null,
			"startBinding": {
				"elementId": "2-kzip8ytDZ7vfQCvHz3P",
				"focus": 0.3898068164395923,
				"gap": 8.694725019514408
			},
			"endBinding": {
				"elementId": "8JRbq-_TEzgozIzvE8Ttv",
				"focus": -0.5445034456146448,
				"gap": 26.815615096589227
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "jboLMRP1",
			"type": "text",
			"x": 450.4080910169429,
			"y": 2870.702392631413,
			"width": 129.44393920898438,
			"height": 33.6,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#FFC47C",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": null,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 47779714,
			"version": 95,
			"versionNonce": 310957378,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"text": "일반적인 패턴",
			"rawText": "일반적인 패턴",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "center",
			"verticalAlign": "middle",
			"baseline": 26,
			"containerId": "vGEnG3A29KDJSw3MDvw8N",
			"originalText": "일반적인 패턴",
			"lineHeight": 1.2
		},
		{
			"id": "gWHSX1w9v1q1KW0WzgI-Z",
			"type": "arrow",
			"x": 2449.5485693742767,
			"y": 2791.643452959893,
			"width": 96.00008877840924,
			"height": 196.3636363636365,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#FFC47C",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": null,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"seed": 1822858434,
			"version": 685,
			"versionNonce": 1460377566,
			"isDeleted": false,
			"boundElements": [
				{
					"type": "text",
					"id": "aXtAVXR4"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					-96.00008877840924,
					196.3636363636365
				]
			],
			"lastCommittedPoint": null,
			"startBinding": {
				"elementId": "-WL-zDJpglwbHZAMd3MAJ",
				"focus": -0.33069060629815894,
				"gap": 10.648881661432824
			},
			"endBinding": {
				"elementId": "8JRbq-_TEzgozIzvE8Ttv",
				"focus": 0.5477222732881876,
				"gap": 26.8156703295449
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "aXtAVXR4",
			"type": "text",
			"x": 1497.3557193849742,
			"y": 2870.702365141711,
			"width": 108.27595520019531,
			"height": 33.6,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#FFC47C",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": null,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 1680238238,
			"version": 87,
			"versionNonce": 587259138,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"text": "복잡한 패턴",
			"rawText": "복잡한 패턴",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "center",
			"verticalAlign": "middle",
			"baseline": 26,
			"containerId": "gWHSX1w9v1q1KW0WzgI-Z",
			"originalText": "복잡한 패턴",
			"lineHeight": 1.2
		},
		{
			"id": "ZUGsu1uttJXtd1ICHWM82",
			"type": "arrow",
			"x": 1436.9012631558326,
			"y": 3325.99258667869,
			"width": 164.05548121459208,
			"height": 223.8649328067131,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#FFC47C",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": null,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"seed": 1160303490,
			"version": 1894,
			"versionNonce": 801696798,
			"isDeleted": false,
			"boundElements": [
				{
					"type": "text",
					"id": "aRk82atg"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					-164.05548121459208,
					223.8649328067131
				]
			],
			"lastCommittedPoint": null,
			"startBinding": {
				"elementId": "8JRbq-_TEzgozIzvE8Ttv",
				"focus": 0.43127542546665815,
				"gap": 23.169827025615632
			},
			"endBinding": {
				"elementId": "_qhlWlzBN-Y5xqBFiboo2",
				"focus": -0.5678877899950251,
				"gap": 9.472074447399791
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "aRk82atg",
			"type": "text",
			"x": 382.0271078787522,
			"y": 3422.506055412354,
			"width": 242.0598907470703,
			"height": 33.6,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#FFC47C",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": null,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 350255938,
			"version": 83,
			"versionNonce": 1050799298,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"text": "Generalized linear model",
			"rawText": "Generalized linear model",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "center",
			"verticalAlign": "middle",
			"baseline": 26,
			"containerId": "ZUGsu1uttJXtd1ICHWM82",
			"originalText": "Generalized linear model",
			"lineHeight": 1.2
		},
		{
			"type": "text",
			"version": 1240,
			"versionNonce": 1716631646,
			"isDeleted": false,
			"id": "kKty8OzJ",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1020.1107066880775,
			"y": 3821.0199495415936,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 273.99627685546875,
			"height": 34.305698050849074,
			"seed": 1883097566,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"fontSize": 28.588081709040896,
			"fontFamily": 4,
			"text": "Wide는 memorization을 담당",
			"rawText": "Wide는 memorization을 담당",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Wide는 memorization을 담당",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "text",
			"version": 1619,
			"versionNonce": 722142338,
			"isDeleted": false,
			"id": "fEnRUueM",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1016.3263605316051,
			"y": 3872.163725283418,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"width": 535.16015625,
			"height": 68.61139610169815,
			"seed": 132439582,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "6fShvtqSMLHhy1wj3gACG",
					"type": "arrow"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"fontSize": 28.588081709040896,
			"fontFamily": 4,
			"text": "feature set x는 개별적인 raw 특성과 cross-product\ntransformation으로 생성된 새로운 특성을 함께 포함",
			"rawText": "feature set x는 개별적인 raw 특성과 cross-product\ntransformation으로 생성된 새로운 특성을 함께 포함",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "feature set x는 개별적인 raw 특성과 cross-product\ntransformation으로 생성된 새로운 특성을 함께 포함",
			"lineHeight": 1.2,
			"baseline": 61
		},
		{
			"type": "image",
			"version": 685,
			"versionNonce": 578223262,
			"isDeleted": false,
			"id": "PONY8AH8",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1176.8494682995936,
			"y": 3584.99790964985,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 179.32954809189056,
			"height": 33.83576379092274,
			"seed": 58629,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "YtA31vvl2k1wN7tTIwVwB",
					"type": "arrow"
				},
				{
					"id": "0RtqmwHjoCdWKEeo0J55y",
					"type": "arrow"
				},
				{
					"id": "XiFCLvYA276bjU9pTrE8M",
					"type": "arrow"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "6aa9fd2d74590eb9cbe3391d3dec3b6ea0bd1a59",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "image",
			"version": 800,
			"versionNonce": 570106946,
			"isDeleted": false,
			"id": "mKCjaDqA",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1197.9797985115208,
			"y": 3704.917733843984,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 169.00793869153594,
			"height": 19.821918735427055,
			"seed": 47,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "b51a612cdf93b53423fbf3c025058dad0b22cf32",
			"scale": [
				1,
				1
			]
		},
		{
			"id": "9uBLtgXj",
			"type": "text",
			"x": 1212.8237841122439,
			"y": 3670.8941376081275,
			"width": 153.9318389892578,
			"height": 34.305698050849074,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#FFC47C",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": null,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 1692023518,
			"version": 838,
			"versionNonce": 1776924894,
			"isDeleted": false,
			"boundElements": [
				{
					"id": "YtA31vvl2k1wN7tTIwVwB",
					"type": "arrow"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"text": "모델의 파라미터",
			"rawText": "모델의 파라미터",
			"fontSize": 28.588081709040896,
			"fontFamily": 4,
			"textAlign": "left",
			"verticalAlign": "top",
			"baseline": 26,
			"containerId": null,
			"originalText": "모델의 파라미터",
			"lineHeight": 1.2
		},
		{
			"id": "YtA31vvl2k1wN7tTIwVwB",
			"type": "arrow",
			"x": 1254.5102392364604,
			"y": 3627.733026111,
			"width": 20.44092170372261,
			"height": 41.40908863384175,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#FFC47C",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "dashed",
			"roughness": null,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"seed": 820643870,
			"version": 2383,
			"versionNonce": 1297173506,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					20.44092170372261,
					41.40908863384175
				]
			],
			"lastCommittedPoint": null,
			"startBinding": {
				"elementId": "PONY8AH8",
				"focus": 0.25249201629946094,
				"gap": 8.899352670227245
			},
			"endBinding": {
				"elementId": "9uBLtgXj",
				"focus": -0.06469159409070713,
				"gap": 1.7520228632856742
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "0RtqmwHjoCdWKEeo0J55y",
			"type": "arrow",
			"x": 1365.8185845586659,
			"y": 3606.998651159164,
			"width": 53.35316281186965,
			"height": 38.35967384887135,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#FFC47C",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "dashed",
			"roughness": null,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"seed": 82383902,
			"version": 2426,
			"versionNonce": 1681583390,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					53.35316281186965,
					38.35967384887135
				]
			],
			"lastCommittedPoint": null,
			"startBinding": {
				"elementId": "PONY8AH8",
				"focus": -0.8148287331402205,
				"gap": 9.639568167181778
			},
			"endBinding": {
				"elementId": "vNAdpXxE",
				"focus": -0.21338086096293485,
				"gap": 6.006891885091932
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "vNAdpXxE",
			"type": "text",
			"x": 1425.1786392556273,
			"y": 3639.462508068371,
			"width": 37.46836853027344,
			"height": 34.305698050849074,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#FFC47C",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "dashed",
			"roughness": null,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 1471363906,
			"version": 790,
			"versionNonce": 1124891586,
			"isDeleted": false,
			"boundElements": [
				{
					"id": "0RtqmwHjoCdWKEeo0J55y",
					"type": "arrow"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"text": "bias",
			"rawText": "bias",
			"fontSize": 28.588081709040896,
			"fontFamily": 4,
			"textAlign": "left",
			"verticalAlign": "top",
			"baseline": 26,
			"containerId": null,
			"originalText": "bias",
			"lineHeight": 1.2
		},
		{
			"id": "XiFCLvYA276bjU9pTrE8M",
			"type": "arrow",
			"x": 1176.2856889976995,
			"y": 3623.7933406828124,
			"width": 95.21814378728368,
			"height": 105.70936403228006,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#FFC47C",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "dashed",
			"roughness": null,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"seed": 58617054,
			"version": 2276,
			"versionNonce": 517708126,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					-95.21814378728368,
					105.70936403228006
				]
			],
			"lastCommittedPoint": null,
			"startBinding": {
				"elementId": "PONY8AH8",
				"focus": 0.6722576143737264,
				"gap": 4.959667242039586
			},
			"endBinding": {
				"elementId": "DozKNSsU",
				"focus": -0.6593336085907556,
				"gap": 14.266215465486312
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "DozKNSsU",
			"type": "text",
			"x": 1007.3684199181574,
			"y": 3743.768920180579,
			"width": 326.240478515625,
			"height": 34.305698050849074,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#FFC47C",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "dashed",
			"roughness": null,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 422282462,
			"version": 706,
			"versionNonce": 21738370,
			"isDeleted": false,
			"boundElements": [
				{
					"id": "XiFCLvYA276bjU9pTrE8M",
					"type": "arrow"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"text": "feature vector에 대한 예측값 ",
			"rawText": "feature vector에 대한 예측값 ",
			"fontSize": 28.588081709040896,
			"fontFamily": 4,
			"textAlign": "left",
			"verticalAlign": "top",
			"baseline": 26,
			"containerId": null,
			"originalText": "feature vector에 대한 예측값 ",
			"lineHeight": 1.2
		},
		{
			"type": "image",
			"version": 582,
			"versionNonce": 1360838046,
			"isDeleted": false,
			"id": "TkInnnVG",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1013.7645372704126,
			"y": 3772.995103527258,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 152,
			"height": 19,
			"seed": 18762,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "0e93d87ec0160be7094417aff18edee3e0a43426",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "image",
			"version": 656,
			"versionNonce": 1783493442,
			"isDeleted": false,
			"id": "jCRDL8XF",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1110.9272917092992,
			"y": 3963.016633326414,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 334.9373802662654,
			"height": 32.94466035405889,
			"seed": 11747,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "6fShvtqSMLHhy1wj3gACG",
					"type": "arrow"
				},
				{
					"id": "PgnN70_rXNETZZuIHI0WN",
					"type": "arrow"
				},
				{
					"id": "Du2GHgY1CxKXW675Z8_iz",
					"type": "arrow"
				},
				{
					"id": "sX9xz_tcEV9FAoiSZt6qv",
					"type": "arrow"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "ca39c8b8fe5df873e923654a8772e2839ebb28bd",
			"scale": [
				1,
				1
			]
		},
		{
			"id": "6fShvtqSMLHhy1wj3gACG",
			"type": "arrow",
			"x": 1044.4738152620093,
			"y": 3947.7989019013203,
			"width": 58.30555258503074,
			"height": 36.340534705276696,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#FFC47C",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "dashed",
			"roughness": null,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"seed": 765356510,
			"version": 1875,
			"versionNonce": 539974110,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0.23949115503549478,
					32.108201926836955
				],
				[
					58.30555258503074,
					36.340534705276696
				]
			],
			"lastCommittedPoint": [
				59.067184617242674,
				41.04666172357474
			],
			"startBinding": {
				"elementId": "fEnRUueM",
				"focus": 0.8951330903895393,
				"gap": 7.0237805162041695
			},
			"endBinding": {
				"elementId": "jCRDL8XF",
				"focus": -0.6084927371479345,
				"gap": 8.147923862259177
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "_qhlWlzBN-Y5xqBFiboo2",
			"type": "rectangle",
			"x": 975.3472478411329,
			"y": 3559.3295939328027,
			"width": 607.3814514873146,
			"height": 1006.2886553501385,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": null,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"seed": 1748453086,
			"version": 758,
			"versionNonce": 1081228034,
			"isDeleted": false,
			"boundElements": [
				{
					"id": "ZUGsu1uttJXtd1ICHWM82",
					"type": "arrow"
				},
				{
					"id": "NsjHvNldd5hG6CR7NPr-F",
					"type": "arrow"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false
		},
		{
			"id": "PgnN70_rXNETZZuIHI0WN",
			"type": "arrow",
			"x": 1264.327503956699,
			"y": 4001.115014590462,
			"width": 0.7028181963820543,
			"height": 50.97111173411986,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "dashed",
			"roughness": null,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"seed": 1543951582,
			"version": 1538,
			"versionNonce": 1663331870,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0.7028181963820543,
					50.97111173411986
				]
			],
			"lastCommittedPoint": null,
			"startBinding": {
				"elementId": "jCRDL8XF",
				"focus": 0.08567100830302722,
				"gap": 5.153720909989488
			},
			"endBinding": {
				"elementId": "GKlA0ihO",
				"focus": 0.03601391868322341,
				"gap": 9.22142578121884
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"type": "image",
			"version": 569,
			"versionNonce": 574065346,
			"isDeleted": false,
			"id": "GKlA0ihO",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1165.826409938423,
			"y": 4061.307552105801,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 192,
			"height": 19,
			"seed": 14825,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "PgnN70_rXNETZZuIHI0WN",
					"type": "arrow"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "e524c6521ab1fc19ece619fff3c8e36677ab71f9",
			"scale": [
				1,
				1
			]
		},
		{
			"id": "CJg5hhRg",
			"type": "text",
			"x": 1215.9774734260739,
			"y": 4072.5095168539865,
			"width": 93.26795959472656,
			"height": 33.6,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "dashed",
			"roughness": null,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 1932968606,
			"version": 561,
			"versionNonce": 1726806622,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"text": "라고 가정",
			"rawText": "라고 가정",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "left",
			"verticalAlign": "top",
			"baseline": 26,
			"containerId": null,
			"originalText": "라고 가정",
			"lineHeight": 1.2
		},
		{
			"id": "Du2GHgY1CxKXW675Z8_iz",
			"type": "arrow",
			"x": 1125.388447122427,
			"y": 4002.686032337857,
			"width": 0,
			"height": 119.27094142481565,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "dashed",
			"roughness": null,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"seed": 733394398,
			"version": 1928,
			"versionNonce": 104653442,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0,
					119.27094142481565
				]
			],
			"lastCommittedPoint": null,
			"startBinding": {
				"elementId": "jCRDL8XF",
				"focus": 0.9136486026036775,
				"gap": 6.7247386573842505
			},
			"endBinding": {
				"elementId": "klEOyw2u",
				"focus": -0.5013943844530234,
				"gap": 1
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "klEOyw2u",
			"type": "text",
			"x": 995.1607036438143,
			"y": 4122.9569737626725,
			"width": 522.3677368164062,
			"height": 67.2,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "dashed",
			"roughness": null,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 1191292318,
			"version": 669,
			"versionNonce": 844758686,
			"isDeleted": false,
			"boundElements": [
				{
					"id": "Du2GHgY1CxKXW675Z8_iz",
					"type": "arrow"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"text": "k번째 cross-product transformation\n유저(x_1)와 나이(x_3)의 cross-product를 고려하는 특성",
			"rawText": "k번째 cross-product transformation\n유저(x_1)와 나이(x_3)의 cross-product를 고려하는 특성",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "left",
			"verticalAlign": "top",
			"baseline": 60,
			"containerId": null,
			"originalText": "k번째 cross-product transformation\n유저(x_1)와 나이(x_3)의 cross-product를 고려하는 특성",
			"lineHeight": 1.2
		},
		{
			"id": "9pqqUvSZ",
			"type": "text",
			"x": 1128.67265173197,
			"y": 4244.100708743938,
			"width": 436.54779052734375,
			"height": 33.6,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "dashed",
			"roughness": null,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 1910012098,
			"version": 648,
			"versionNonce": 927023682,
			"isDeleted": false,
			"boundElements": [
				{
					"id": "sX9xz_tcEV9FAoiSZt6qv",
					"type": "arrow"
				},
				{
					"id": "0QPlNlXl4TL8vQvrkU6xH",
					"type": "arrow"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"text": "i번째 특성이 포함되면 해당 C_ki는 1로 세팅된다.",
			"rawText": "i번째 특성이 포함되면 해당 C_ki는 1로 세팅된다.",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "left",
			"verticalAlign": "top",
			"baseline": 26,
			"containerId": null,
			"originalText": "i번째 특성이 포함되면 해당 C_ki는 1로 세팅된다.",
			"lineHeight": 1.2
		},
		{
			"id": "0QPlNlXl4TL8vQvrkU6xH",
			"type": "arrow",
			"x": 1497.9363051949672,
			"y": 4289.746018987722,
			"width": 48.689982665651215,
			"height": 59.39837729942428,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 2,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"seed": 1950991070,
			"version": 2108,
			"versionNonce": 1243380446,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					48.689982665651215,
					27.910744795970125
				],
				[
					2.0752141671384834,
					59.39837729942428
				]
			],
			"lastCommittedPoint": null,
			"startBinding": {
				"elementId": "9pqqUvSZ",
				"focus": -0.40661161977474924,
				"gap": 12.045310243783206
			},
			"endBinding": {
				"elementId": "NtmNq6wo",
				"focus": 0.9006223530636683,
				"gap": 10.429872066557095
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"type": "image",
			"version": 590,
			"versionNonce": 1344514562,
			"isDeleted": false,
			"id": "NtmNq6wo",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1201.1875125269596,
			"y": 4331.265262725109,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 288.39413476858874,
			"height": 36.41340085461979,
			"seed": 55519,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "0QPlNlXl4TL8vQvrkU6xH",
					"type": "arrow"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "ce33e7389bcda96c6d9ad59d4743095f443c641a",
			"scale": [
				1,
				1
			]
		},
		{
			"id": "3j2LPRXE",
			"type": "text",
			"x": 1131.6692770536251,
			"y": 4368.861827455865,
			"width": 438.9277648925781,
			"height": 67.2,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 2,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 1358658270,
			"version": 670,
			"versionNonce": 1959096094,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"text": "이는 cross-product feature를 계산하기 위해\n선택된 개별 boolen 특성의 곱을 의미합니다.",
			"rawText": "이는 cross-product feature를 계산하기 위해\n선택된 개별 boolen 특성의 곱을 의미합니다.",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "left",
			"verticalAlign": "top",
			"baseline": 60,
			"containerId": null,
			"originalText": "이는 cross-product feature를 계산하기 위해\n선택된 개별 boolen 특성의 곱을 의미합니다.",
			"lineHeight": 1.2
		},
		{
			"id": "2ngxSaiL",
			"type": "text",
			"x": 992.6331734697258,
			"y": 4468.078488523072,
			"width": 587.7757568359375,
			"height": 67.2,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 2,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 1377651778,
			"version": 669,
			"versionNonce": 937630146,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"text": "Wide part는 새로운 특성을 기존의 raw특성에 concatenate하여\n모델을 학습합니다. 이는 linear 모델 자체에 비선형성 추가",
			"rawText": "Wide part는 새로운 특성을 기존의 raw특성에 concatenate하여\n모델을 학습합니다. 이는 linear 모델 자체에 비선형성 추가",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "left",
			"verticalAlign": "top",
			"baseline": 60,
			"containerId": null,
			"originalText": "Wide part는 새로운 특성을 기존의 raw특성에 concatenate하여\n모델을 학습합니다. 이는 linear 모델 자체에 비선형성 추가",
			"lineHeight": 1.2
		},
		{
			"id": "NsjHvNldd5hG6CR7NPr-F",
			"type": "arrow",
			"x": 1283.446107107497,
			"y": 4573.618249282942,
			"width": 0.9374440610652641,
			"height": 109.49857605692796,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"seed": 96460702,
			"version": 1867,
			"versionNonce": 2126895966,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0.9374440610652641,
					109.49857605692796
				]
			],
			"lastCommittedPoint": null,
			"startBinding": {
				"elementId": "_qhlWlzBN-Y5xqBFiboo2",
				"focus": -0.00010422804264737908,
				"gap": 8.00000000000091
			},
			"endBinding": {
				"elementId": "gkpdWh9aOgarGenzqbl7v",
				"focus": -1.325420238476847e-16,
				"gap": 8
			},
			"startArrowhead": null,
			"endArrowhead": null
		},
		{
			"type": "rectangle",
			"version": 1163,
			"versionNonce": 496931202,
			"isDeleted": false,
			"id": "5zslHoXHkQG5J8g5uXWUp",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 2057.458752451609,
			"y": 4168.171724194941,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 607.3814514873146,
			"height": 558.288614660034,
			"seed": 806459870,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"id": "uHW02R3JaT2krHCxngp28",
					"type": "arrow"
				},
				{
					"id": "eqMOIIh9koqbZnP4XSfR8",
					"type": "arrow"
				},
				{
					"id": "vmMC5EFaAMr0xaX7ouTJu",
					"type": "arrow"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false
		},
		{
			"id": "uHW02R3JaT2krHCxngp28",
			"type": "arrow",
			"x": 2324.908762946572,
			"y": 3330.0231474374523,
			"width": 42.760307708126675,
			"height": 218.53639183032146,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"seed": 1560166530,
			"version": 1052,
			"versionNonce": 2121187230,
			"isDeleted": false,
			"boundElements": [
				{
					"type": "text",
					"id": "HVMisXFr"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					42.760307708126675,
					218.53639183032146
				]
			],
			"lastCommittedPoint": [
				23.187510190961802,
				220.28188736365064
			],
			"startBinding": {
				"elementId": "8JRbq-_TEzgozIzvE8Ttv",
				"focus": -0.6143201013453774,
				"gap": 27.20038778437811
			},
			"endBinding": {
				"elementId": "cTN_Yr8exvYGwkN-gbhIf",
				"focus": 0.10852469640265197,
				"gap": 10.770054914870798
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "HVMisXFr",
			"type": "text",
			"x": 1379.7623801385187,
			"y": 3404.241185119277,
			"width": 154.92391967773438,
			"height": 67.2,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 1832195074,
			"version": 79,
			"versionNonce": 1955926338,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"text": "feed-forward\nneural network",
			"rawText": "feed-forward neural network",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "center",
			"verticalAlign": "middle",
			"baseline": 60,
			"containerId": "uHW02R3JaT2krHCxngp28",
			"originalText": "feed-forward neural network",
			"lineHeight": 1.2
		},
		{
			"type": "rectangle",
			"version": 1147,
			"versionNonce": 401677278,
			"isDeleted": false,
			"id": "cTN_Yr8exvYGwkN-gbhIf",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 2,
			"opacity": 100,
			"angle": 0,
			"x": 1893.2168558800686,
			"y": 3559.3295941826445,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#1e1e1e",
			"width": 935.865245139755,
			"height": 483.34355512386355,
			"seed": 2049151490,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"id": "uHW02R3JaT2krHCxngp28",
					"type": "arrow"
				},
				{
					"id": "eqMOIIh9koqbZnP4XSfR8",
					"type": "arrow"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false
		},
		{
			"id": "RzY95s4XYE8F5_kah1X7A",
			"type": "image",
			"x": 1923.1494778734714,
			"y": 3582.001372217115,
			"width": 876,
			"height": 438,
			"angle": 0,
			"strokeColor": "transparent",
			"backgroundColor": "#1e1e1e",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 1953729858,
			"version": 290,
			"versionNonce": 1881512194,
			"isDeleted": false,
			"boundElements": [
				{
					"id": "eqMOIIh9koqbZnP4XSfR8",
					"type": "arrow"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "74c86f88ad1fdb3e46980244e2ac71de9ca18980",
			"scale": [
				1,
				1
			]
		},
		{
			"id": "eqMOIIh9koqbZnP4XSfR8",
			"type": "arrow",
			"x": 2361.1494783516537,
			"y": 4050.673149306509,
			"width": 4.3173031372134574e-8,
			"height": 109.4985748884319,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#1e1e1e",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"seed": 209439234,
			"version": 819,
			"versionNonce": 1096675358,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					-4.3173031372134574e-8,
					109.4985748884319
				]
			],
			"lastCommittedPoint": null,
			"startBinding": {
				"elementId": "RzY95s4XYE8F5_kah1X7A",
				"focus": -1.3164890831422843e-9,
				"gap": 30.6717770893938
			},
			"endBinding": {
				"elementId": "5zslHoXHkQG5J8g5uXWUp",
				"focus": -4.314011911268524e-16,
				"gap": 8
			},
			"startArrowhead": null,
			"endArrowhead": null
		},
		{
			"id": "cuIUaY4P",
			"type": "text",
			"x": 2097.294880717468,
			"y": 4232.708586568074,
			"width": 545.6357421875,
			"height": 67.2,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#1e1e1e",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 835003486,
			"version": 284,
			"versionNonce": 2144282818,
			"isDeleted": false,
			"boundElements": [
				{
					"id": "Jgc59zlAl-Et9OdBUVNMc",
					"type": "arrow"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"text": "Categorical feature는 embedding layer을 통해 저차원의\n특성으로 변환",
			"rawText": "Categorical feature는 embedding layer을 통해 저차원의\n특성으로 변환",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "left",
			"verticalAlign": "top",
			"baseline": 60,
			"containerId": null,
			"originalText": "Categorical feature는 embedding layer을 통해 저차원의\n특성으로 변환",
			"lineHeight": 1.2
		},
		{
			"id": "Jgc59zlAl-Et9OdBUVNMc",
			"type": "arrow",
			"x": 2181.6313815560998,
			"y": 4303.470685145268,
			"width": 0,
			"height": 121.5999755859375,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#1e1e1e",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"seed": 973669534,
			"version": 1276,
			"versionNonce": 111557726,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0,
					121.5999755859375
				]
			],
			"lastCommittedPoint": null,
			"startBinding": {
				"elementId": "cuIUaY4P",
				"focus": 0.6908688551064505,
				"gap": 3.562098577195229
			},
			"endBinding": {
				"elementId": "eTWk3yAB",
				"focus": -0.6868188745617418,
				"gap": 9.407828471352786
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "eTWk3yAB",
			"type": "text",
			"x": 2097.2948813983703,
			"y": 4434.478489202559,
			"width": 538.5797119140625,
			"height": 67.2,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#1e1e1e",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 1965150850,
			"version": 335,
			"versionNonce": 1261486210,
			"isDeleted": false,
			"boundElements": [
				{
					"id": "Jgc59zlAl-Et9OdBUVNMc",
					"type": "arrow"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"text": "Continuous feature와 concatenate되어 심츰 신경망의\n입력이 됩니다.",
			"rawText": "Continuous feature와 concatenate되어 심츰 신경망의\n입력이 됩니다.",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "left",
			"verticalAlign": "top",
			"baseline": 60,
			"containerId": null,
			"originalText": "Continuous feature와 concatenate되어 심츰 신경망의\n입력이 됩니다.",
			"lineHeight": 1.2
		},
		{
			"id": "hoJyTc0SKXJ-uMdq4DUem",
			"type": "arrow",
			"x": 2414.506158065037,
			"y": 4270.404014409592,
			"width": 0,
			"height": 51.20001220703125,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#1e1e1e",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"seed": 1900614466,
			"version": 444,
			"versionNonce": 1302003870,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0,
					51.20001220703125
				]
			],
			"lastCommittedPoint": null,
			"startBinding": null,
			"endBinding": {
				"elementId": "8VmV4Khf",
				"focus": -0.0059964887632893045,
				"gap": 9.66123625260434
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "8VmV4Khf",
			"type": "text",
			"x": 2234.2516387317037,
			"y": 4331.265262869228,
			"width": 362.6838684082031,
			"height": 67.2,
			"angle": 0,
			"strokeColor": "#e03131",
			"backgroundColor": "#1e1e1e",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 1700983426,
			"version": 259,
			"versionNonce": 772366402,
			"isDeleted": false,
			"boundElements": [
				{
					"id": "hoJyTc0SKXJ-uMdq4DUem",
					"type": "arrow"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"text": "랜덤으로 초기화되며 모델 학습과정에서\n같이 학습",
			"rawText": "랜덤으로 초기화되며 모델 학습과정에서\n같이 학습",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "center",
			"verticalAlign": "top",
			"baseline": 60,
			"containerId": null,
			"originalText": "랜덤으로 초기화되며 모델 학습과정에서\n같이 학습",
			"lineHeight": 1.2
		},
		{
			"id": "A8ezqNKX",
			"type": "text",
			"x": 2097.2948813983703,
			"y": 4556.691714535894,
			"width": 495.96380615234375,
			"height": 134.4,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#1e1e1e",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 969873026,
			"version": 466,
			"versionNonce": 434978014,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"text": "각각의 hidden layer에서는 위와 같은 일반적인 신경망\n연산이 진행됩니다.\nL번째 층의 W(weight), b(bias), \na(activation function) ReLu 사용",
			"rawText": "각각의 hidden layer에서는 위와 같은 일반적인 신경망\n연산이 진행됩니다.\nL번째 층의 W(weight), b(bias), \na(activation function) ReLu 사용",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "left",
			"verticalAlign": "top",
			"baseline": 127,
			"containerId": null,
			"originalText": "각각의 hidden layer에서는 위와 같은 일반적인 신경망\n연산이 진행됩니다.\nL번째 층의 W(weight), b(bias), \na(activation function) ReLu 사용",
			"lineHeight": 1.2
		},
		{
			"type": "image",
			"version": 387,
			"versionNonce": 876087298,
			"isDeleted": false,
			"id": "BpTj1lIm",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 2255.5673339504538,
			"y": 4531.491723444097,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 229.09083510890565,
			"height": 25.19999186197962,
			"seed": 95557,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "49f769bd60e56cba873d5bdcb465f52f4c8a887c",
			"scale": [
				1,
				1
			]
		},
		{
			"id": "M4RQ5SEjsTcIeB7i78hat",
			"type": "arrow",
			"x": 1833.7280953667623,
			"y": 3336.1935438973032,
			"width": 0,
			"height": 1938.39990234375,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#1e1e1e",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"seed": 1979676162,
			"version": 1037,
			"versionNonce": 1361965342,
			"isDeleted": false,
			"boundElements": [
				{
					"type": "text",
					"id": "nXdx8qGB"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0,
					1938.39990234375
				]
			],
			"lastCommittedPoint": null,
			"startBinding": {
				"elementId": "6puHaWBVZ4QDYmVGkefbl",
				"focus": 0.07251874123746276,
				"gap": 10.230469175691042
			},
			"endBinding": {
				"elementId": "h_uB81-k0G_LqF6B0T1iz",
				"focus": 1.876287569054618e-10,
				"gap": 19.41394194532222
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "nXdx8qGB",
			"type": "text",
			"x": 893.8913078330711,
			"y": 4269.470589069178,
			"width": 179.5639190673828,
			"height": 67.2,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#1e1e1e",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 984175362,
			"version": 71,
			"versionNonce": 364623810,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"text": "Joint Training of\nWide & Deep",
			"rawText": "Joint Training of\nWide & Deep",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "center",
			"verticalAlign": "middle",
			"baseline": 60,
			"containerId": "M4RQ5SEjsTcIeB7i78hat",
			"originalText": "Joint Training of\nWide & Deep",
			"lineHeight": 1.2
		},
		{
			"type": "rectangle",
			"version": 1105,
			"versionNonce": 2127437150,
			"isDeleted": false,
			"id": "h_uB81-k0G_LqF6B0T1iz",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 2,
			"opacity": 100,
			"angle": 0,
			"x": 1365.7954727090873,
			"y": 5294.0073881863755,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#1e1e1e",
			"width": 935.865245139755,
			"height": 483.34355512386355,
			"seed": 716147678,
			"groupIds": [
				"H0jyRiTlW25K-NcGClM2g"
			],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"id": "M4RQ5SEjsTcIeB7i78hat",
					"type": "arrow"
				},
				{
					"id": "ivQoOdKUJFlRJ5P8CqEEv",
					"type": "arrow"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false
		},
		{
			"id": "n2HZ1Oi3_sKzXg1e3YoJx",
			"type": "image",
			"x": 1401.7280954218218,
			"y": 5321.679165891163,
			"width": 863.9999999999999,
			"height": 428,
			"angle": 0,
			"strokeColor": "transparent",
			"backgroundColor": "#1e1e1e",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [
				"H0jyRiTlW25K-NcGClM2g"
			],
			"frameId": null,
			"roundness": null,
			"seed": 924232350,
			"version": 220,
			"versionNonce": 850620290,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "adfd9929ab4e3487582554fca6b4b6e27845c8ad",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "rectangle",
			"version": 1360,
			"versionNonce": 404668830,
			"isDeleted": false,
			"id": "4nUkjbE_uJ8JO1PQHT_7T",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1530.037369244325,
			"y": 5915.183505556959,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 607.3814514873146,
			"height": 585.2886604364011,
			"seed": 729731742,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"id": "ivQoOdKUJFlRJ5P8CqEEv",
					"type": "arrow"
				},
				{
					"id": "HxRY02gXwbyB5mu4TZb02",
					"type": "arrow"
				},
				{
					"id": "vmMC5EFaAMr0xaX7ouTJu",
					"type": "arrow"
				},
				{
					"id": "KjxRoS6zgYfGXUY0AVq7H",
					"type": "arrow"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false
		},
		{
			"type": "arrow",
			"version": 1232,
			"versionNonce": 257830722,
			"isDeleted": false,
			"id": "ivQoOdKUJFlRJ5P8CqEEv",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1833.7280951462874,
			"y": 5785.359988466033,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#1e1e1e",
			"width": 4.226387773087481e-8,
			"height": 121.82351709092563,
			"seed": 1871105758,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "h_uB81-k0G_LqF6B0T1iz",
				"focus": 9.842451477217946e-11,
				"gap": 8.00904515579441
			},
			"endBinding": {
				"elementId": "4nUkjbE_uJ8JO1PQHT_7T",
				"focus": 3.865486146420598e-11,
				"gap": 8
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					-4.226387773087481e-8,
					121.82351709092563
				]
			]
		},
		{
			"type": "text",
			"version": 586,
			"versionNonce": 1079041502,
			"isDeleted": false,
			"id": "a7OCepMm",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1551.2306785101837,
			"y": 5944.720367930091,
			"strokeColor": "#e03131",
			"backgroundColor": "#1e1e1e",
			"width": 564.7877807617188,
			"height": 33.6,
			"seed": 566575902,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "Output layer에서 Wide part와 Deep part의 output 가중",
			"rawText": "Output layer에서 Wide part와 Deep part의 output 가중",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Output layer에서 Wide part와 Deep part의 output 가중",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "text",
			"version": 761,
			"versionNonce": 1343944450,
			"isDeleted": false,
			"id": "XOrBUFpR",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1543.830268191086,
			"y": 6016.920367564576,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#1e1e1e",
			"width": 579.795654296875,
			"height": 67.2,
			"seed": 1686737822,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "따라서 모델은 일반적인 logistic regression을 사용하여 동시에 \n학습(joint training)이 가능합니다.",
			"rawText": "따라서 모델은 일반적인 logistic regression을 사용하여 동시에 \n학습(joint training)이 가능합니다.",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "따라서 모델은 일반적인 logistic regression을 사용하여 동시에 \n학습(joint training)이 가능합니다.",
			"lineHeight": 1.2,
			"baseline": 60
		},
		{
			"type": "text",
			"version": 517,
			"versionNonce": 209023518,
			"isDeleted": false,
			"id": "6cMfCFEn",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1988.5345421103566,
			"y": 5978.320368231247,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#1e1e1e",
			"width": 127.48391723632812,
			"height": 33.6,
			"seed": 366199838,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "(weight sum)",
			"rawText": "(weight sum)",
			"textAlign": "center",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "(weight sum)",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"id": "HxRY02gXwbyB5mu4TZb02",
			"type": "arrow",
			"x": 1254.7465442294385,
			"y": 5182.460380463734,
			"width": 395.63631924715924,
			"height": 967.272727272727,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#1e1e1e",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"seed": 706959518,
			"version": 878,
			"versionNonce": 896059074,
			"isDeleted": false,
			"boundElements": [
				{
					"type": "text",
					"id": "M7NBhfGA"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					-120.34549459377115,
					945.6282858667882
				],
				[
					267.2908250148864,
					989.8276320490868
				]
			],
			"lastCommittedPoint": [
				275.2908246533881,
				983.4464454903682
			],
			"startBinding": {
				"elementId": "e0NYpWq1htVibVlxDYtmt",
				"focus": -0.0032652478160199666,
				"gap": 25.476883308677316
			},
			"endBinding": {
				"elementId": "4nUkjbE_uJ8JO1PQHT_7T",
				"focus": -3.4125093627839706e-15,
				"gap": 8
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "M7NBhfGA",
			"type": "text",
			"x": 215.5082470873275,
			"y": 6092.165760330521,
			"width": 137.6759490966797,
			"height": 67.2,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#1e1e1e",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 2132187998,
			"version": 64,
			"versionNonce": 1199406686,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"text": "Optimizer:\nFTRL 알고리즘",
			"rawText": "Optimizer:\nFTRL 알고리즘",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "center",
			"verticalAlign": "middle",
			"baseline": 60,
			"containerId": "HxRY02gXwbyB5mu4TZb02",
			"originalText": "Optimizer:\nFTRL 알고리즘",
			"lineHeight": 1.2
		},
		{
			"id": "vmMC5EFaAMr0xaX7ouTJu",
			"type": "arrow",
			"x": 2378.5273335036636,
			"y": 4734.460338854975,
			"width": 312.55848425203953,
			"height": 1444.9917822594953,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#1e1e1e",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"seed": 1309636738,
			"version": 858,
			"versionNonce": 400989826,
			"isDeleted": false,
			"boundElements": [
				{
					"type": "text",
					"id": "wkL3Advz"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					80.508132480016,
					1416.537068559709
				],
				[
					-232.05035177202353,
					1444.9917822594953
				]
			],
			"lastCommittedPoint": [
				-233.67377448021148,
				1415.082545299766
			],
			"startBinding": {
				"elementId": "5zslHoXHkQG5J8g5uXWUp",
				"focus": -0.0033113502694958486,
				"gap": 8
			},
			"endBinding": {
				"elementId": "4nUkjbE_uJ8JO1PQHT_7T",
				"focus": 0.00030076613825186856,
				"gap": 9.058161000000382
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "wkL3Advz",
			"type": "text",
			"x": 1561.058671430945,
			"y": 6115.074501414683,
			"width": 95.84393310546875,
			"height": 67.2,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#1e1e1e",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 1551055874,
			"version": 59,
			"versionNonce": 909771422,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"text": "Optimizer:\nAdaGrad",
			"rawText": "Optimizer:\nAdaGrad",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "center",
			"verticalAlign": "middle",
			"baseline": 60,
			"containerId": "vmMC5EFaAMr0xaX7ouTJu",
			"originalText": "Optimizer:\nAdaGrad",
			"lineHeight": 1.2
		},
		{
			"type": "rectangle",
			"version": 1529,
			"versionNonce": 1683193410,
			"isDeleted": false,
			"id": "CAp5xE71EVMWCd74iwbmV",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 2,
			"opacity": 100,
			"angle": 0,
			"x": 779.4486347263014,
			"y": 6212.9791558271845,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#1e1e1e",
			"width": 572.2288815033914,
			"height": 483.34355512386355,
			"seed": 711093890,
			"groupIds": [
				"GIiq5x-z8-ScGju3aeXmE",
				"x5zOlX_ZvGgAOkkZA9TRv"
			],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [],
			"updated": 1706194040537,
			"link": null,
			"locked": false
		},
		{
			"id": "l-zt4_e3xGJ7DdTu7KRGm",
			"type": "embeddable",
			"x": 797.1994271015767,
			"y": 6229.779155519796,
			"width": 536.727294921875,
			"height": 443.63636363636397,
			"angle": 0,
			"strokeColor": "#e03131",
			"backgroundColor": "#1e1e1e",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [
				"x5zOlX_ZvGgAOkkZA9TRv"
			],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"seed": 969984606,
			"version": 361,
			"versionNonce": 1532755678,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040537,
			"link": "https://dos-tacos.github.io/paper%20review/FTRL/#ftrl",
			"locked": false,
			"validated": true,
			"scale": [
				1,
				1
			]
		},
		{
			"type": "rectangle",
			"version": 1624,
			"versionNonce": 395208194,
			"isDeleted": false,
			"id": "fdp0JkuQN-b4YqMHmjsU_",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 2,
			"opacity": 100,
			"angle": 0,
			"x": 2326.4583325561625,
			"y": 6258.800388105517,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#1e1e1e",
			"width": 572.2288815033914,
			"height": 483.34355512386355,
			"seed": 1895384514,
			"groupIds": [
				"pF2_CjOeVgQVZWLaCuweY",
				"5TVqF0KMECNu0pYQMyg_K"
			],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [],
			"updated": 1706194040537,
			"link": null,
			"locked": false
		},
		{
			"id": "4If8ODapLX3FNg00uD876",
			"type": "embeddable",
			"x": 2346.5728136646285,
			"y": 6276.47215117331,
			"width": 531.999918619792,
			"height": 448.00003051757903,
			"angle": 0,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [
				"5TVqF0KMECNu0pYQMyg_K"
			],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"seed": 1390192514,
			"version": 348,
			"versionNonce": 997487390,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040537,
			"link": "https://heytech.tistory.com/383",
			"locked": false,
			"validated": true,
			"scale": [
				1,
				1
			]
		},
		{
			"type": "image",
			"version": 454,
			"versionNonce": 982930882,
			"isDeleted": false,
			"id": "eC9EtXRV",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1672.1442616387967,
			"y": 6150.731121357653,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 377,
			"height": 25,
			"seed": 78186,
			"groupIds": [
				"sdpqIaRMczPR5jWlLm72B"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "QhvpyBdPPFSuMk2jYWvXm",
					"type": "arrow"
				},
				{
					"id": "Fl6XlwykEb8fe6eYoLX5U",
					"type": "arrow"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "940883eb07e659eee04927b1dcdec78ad0bb723c",
			"scale": [
				1,
				1
			]
		},
		{
			"id": "QhvpyBdPPFSuMk2jYWvXm",
			"type": "arrow",
			"x": 1889.2356314618905,
			"y": 6179.135887955418,
			"width": 35.79704024695229,
			"height": 50.57581973029755,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"fillStyle": "cross-hatch",
			"strokeWidth": 2,
			"strokeStyle": "dashed",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [
				"sdpqIaRMczPR5jWlLm72B"
			],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"seed": 2125515906,
			"version": 1319,
			"versionNonce": 552886110,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					35.79704024695229,
					50.57581973029755
				]
			],
			"lastCommittedPoint": null,
			"startBinding": {
				"elementId": "yZUkBL9U",
				"focus": -0.12488583764208513,
				"gap": 1.3194088948143872
			},
			"endBinding": {
				"elementId": "0YbMcYKn",
				"focus": 0.1561868722219885,
				"gap": 1.4907648798971422
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "0YbMcYKn",
			"type": "text",
			"x": 1797.6774428055141,
			"y": 6231.202472565613,
			"width": 239.48385620117188,
			"height": 33.6,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"fillStyle": "cross-hatch",
			"strokeWidth": 2,
			"strokeStyle": "dashed",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [
				"sdpqIaRMczPR5jWlLm72B"
			],
			"frameId": null,
			"roundness": null,
			"seed": 958316254,
			"version": 413,
			"versionNonce": 1586122114,
			"isDeleted": false,
			"boundElements": [
				{
					"id": "QhvpyBdPPFSuMk2jYWvXm",
					"type": "arrow"
				},
				{
					"id": "tOC-Yh5VGgS0tI8J7-Qdk",
					"type": "arrow"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"text": "cross-product feature",
			"rawText": "cross-product feature",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "left",
			"verticalAlign": "top",
			"baseline": 26,
			"containerId": null,
			"originalText": "cross-product feature",
			"lineHeight": 1.2
		},
		{
			"id": "AgjzFRCn",
			"type": "text",
			"x": 1688.9074664882337,
			"y": 6264.802473032113,
			"width": 138.09591674804688,
			"height": 33.6,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"fillStyle": "cross-hatch",
			"strokeWidth": 2,
			"strokeStyle": "dashed",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [
				"sdpqIaRMczPR5jWlLm72B"
			],
			"frameId": null,
			"roundness": null,
			"seed": 1553508674,
			"version": 413,
			"versionNonce": 1613546398,
			"isDeleted": false,
			"boundElements": [
				{
					"id": "yZ2oMOWvW9SbgkMwJutCV",
					"type": "arrow"
				},
				{
					"id": "tOC-Yh5VGgS0tI8J7-Qdk",
					"type": "arrow"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"text": "raw feature",
			"rawText": "raw feature",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "left",
			"verticalAlign": "top",
			"baseline": 26,
			"containerId": null,
			"originalText": "raw feature",
			"lineHeight": 1.2
		},
		{
			"type": "arrow",
			"version": 1165,
			"versionNonce": 413748546,
			"isDeleted": false,
			"id": "yZ2oMOWvW9SbgkMwJutCV",
			"fillStyle": "cross-hatch",
			"strokeWidth": 2,
			"strokeStyle": "dashed",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1856.2343489942382,
			"y": 6175.27033794368,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"width": 104.99078880598165,
			"height": 85.15102000290335,
			"seed": 185562718,
			"groupIds": [
				"sdpqIaRMczPR5jWlLm72B"
			],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": {
				"elementId": "AgjzFRCn",
				"focus": -0.3657224052739319,
				"gap": 4.3811150855299275
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-104.99078880598165,
					85.15102000290335
				]
			]
		},
		{
			"id": "yZUkBL9U",
			"type": "text",
			"x": 1550.3775288256325,
			"y": 6110.616479060604,
			"width": 553.251708984375,
			"height": 67.2,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"fillStyle": "cross-hatch",
			"strokeWidth": 2,
			"strokeStyle": "dashed",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 1570423838,
			"version": 335,
			"versionNonce": 458137566,
			"isDeleted": false,
			"boundElements": [
				{
					"id": "QhvpyBdPPFSuMk2jYWvXm",
					"type": "arrow"
				},
				{
					"id": "u_dayHi53CJq8vWDH_SaN",
					"type": "arrow"
				},
				{
					"id": "Fl6XlwykEb8fe6eYoLX5U",
					"type": "arrow"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"text": "일반적인 binary classification의 경우 모델의 예측은 다음과\n같습니다:",
			"rawText": "일반적인 binary classification의 경우 모델의 예측은 다음과\n같습니다:",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "left",
			"verticalAlign": "top",
			"baseline": 60,
			"containerId": null,
			"originalText": "일반적인 binary classification의 경우 모델의 예측은 다음과\n같습니다:",
			"lineHeight": 1.2
		},
		{
			"id": "u_dayHi53CJq8vWDH_SaN",
			"type": "arrow",
			"x": 1985.8061700086682,
			"y": 6179.4736393563635,
			"width": 9.14289202008922,
			"height": 23.99998256138406,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"fillStyle": "cross-hatch",
			"strokeWidth": 2,
			"strokeStyle": "dashed",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"seed": 1953749314,
			"version": 521,
			"versionNonce": 2119324930,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					9.14289202008922,
					23.99998256138406
				]
			],
			"lastCommittedPoint": null,
			"startBinding": {
				"elementId": "yZUkBL9U",
				"focus": -0.5022750907768896,
				"gap": 1.6571602957596951
			},
			"endBinding": null,
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "nKWZEin9",
			"type": "text",
			"x": 1952.2465628256323,
			"y": 6196.179156203461,
			"width": 163.7718963623047,
			"height": 33.6,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"fillStyle": "cross-hatch",
			"strokeWidth": 2,
			"strokeStyle": "dashed",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 1734869122,
			"version": 258,
			"versionNonce": 107672606,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"text": "final activation",
			"rawText": "final activation",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "left",
			"verticalAlign": "top",
			"baseline": 26,
			"containerId": null,
			"originalText": "final activation",
			"lineHeight": 1.2
		},
		{
			"id": "tOC-Yh5VGgS0tI8J7-Qdk",
			"type": "arrow",
			"x": 1837.2346542441592,
			"y": 6286.902184627011,
			"width": 96.00001743861594,
			"height": 16.00001743861594,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"fillStyle": "cross-hatch",
			"strokeWidth": 2,
			"strokeStyle": "dashed",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"seed": 660660418,
			"version": 893,
			"versionNonce": 553936066,
			"isDeleted": false,
			"boundElements": [],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					94.857177734375,
					1.14288330078125
				],
				[
					96.00001743861594,
					-14.857134137834692
				]
			],
			"lastCommittedPoint": [
				96.00001743861594,
				-14.857134137834692
			],
			"startBinding": {
				"elementId": "AgjzFRCn",
				"focus": 0.24640074310270646,
				"gap": 10.231271007878604
			},
			"endBinding": {
				"elementId": "nBOw0KRU",
				"focus": 1.1830658536079108,
				"gap": 6.649100857142912
			},
			"startArrowhead": null,
			"endArrowhead": null
		},
		{
			"id": "nBOw0KRU",
			"type": "text",
			"x": 1939.883772539918,
			"y": 6272.022369346319,
			"width": 70.22396850585938,
			"height": 33.6,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"fillStyle": "cross-hatch",
			"strokeWidth": 2,
			"strokeStyle": "dashed",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 2119500766,
			"version": 262,
			"versionNonce": 728940638,
			"isDeleted": false,
			"boundElements": [
				{
					"id": "tOC-Yh5VGgS0tI8J7-Qdk",
					"type": "arrow"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"text": "concat",
			"rawText": "concat",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "left",
			"verticalAlign": "top",
			"baseline": 26,
			"containerId": null,
			"originalText": "concat",
			"lineHeight": 1.2
		},
		{
			"id": "Fl6XlwykEb8fe6eYoLX5U",
			"type": "arrow",
			"x": 1784.6632431113467,
			"y": 6177.187916351341,
			"width": 172.57141113281227,
			"height": 139.42858014787907,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"fillStyle": "cross-hatch",
			"strokeWidth": 2,
			"strokeStyle": "dashed",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"seed": 1149057218,
			"version": 694,
			"versionNonce": 173964418,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					-172.57141113281227,
					139.42858014787907
				]
			],
			"lastCommittedPoint": [
				-181.71430315290172,
				137.14285714285688
			],
			"startBinding": {
				"elementId": "eC9EtXRV",
				"focus": 0.2878180654595818,
				"gap": 1.4567949936881632
			},
			"endBinding": {
				"elementId": "xfnXVjWM",
				"focus": -0.7668336816125327,
				"gap": 6.8571254185271755
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "xfnXVjWM",
			"type": "text",
			"x": 1544.6632431113467,
			"y": 6323.473621917748,
			"width": 463.98779296875,
			"height": 33.6,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"fillStyle": "cross-hatch",
			"strokeWidth": 2,
			"strokeStyle": "dashed",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 626751006,
			"version": 302,
			"versionNonce": 775357598,
			"isDeleted": false,
			"boundElements": [
				{
					"id": "Fl6XlwykEb8fe6eYoLX5U",
					"type": "arrow"
				}
			],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"text": "마지막으로 sigmoid 함수를 통해 예측을 진행합니다.",
			"rawText": "마지막으로 sigmoid 함수를 통해 예측을 진행합니다.",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "left",
			"verticalAlign": "top",
			"baseline": 26,
			"containerId": null,
			"originalText": "마지막으로 sigmoid 함수를 통해 예측을 진행합니다.",
			"lineHeight": 1.2
		},
		{
			"type": "text",
			"version": 701,
			"versionNonce": 941595714,
			"isDeleted": false,
			"id": "BdzMPsdJ",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1551.3342043019159,
			"y": 6383.66433377489,
			"strokeColor": "#e03131",
			"backgroundColor": "#1e1e1e",
			"width": 181.075927734375,
			"height": 33.6,
			"seed": 1403695710,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040537,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "그냥 앙상블 아니야?",
			"rawText": "그냥 앙상블 아니야?",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "그냥 앙상블 아니야?",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"id": "HKrrBEhC",
			"type": "text",
			"x": 1550.3775288256325,
			"y": 6426.902193346319,
			"width": 570.1637573242188,
			"height": 33.6,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"fillStyle": "cross-hatch",
			"strokeWidth": 2,
			"strokeStyle": "dashed",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 996766046,
			"version": 265,
			"versionNonce": 275300574,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040538,
			"link": null,
			"locked": false,
			"text": "wide & deep은 output layer를 통하여 동시에 역전파가 진행",
			"rawText": "wide & deep은 output layer를 통하여 동시에 역전파가 진행",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "left",
			"verticalAlign": "top",
			"baseline": 26,
			"containerId": null,
			"originalText": "wide & deep은 output layer를 통하여 동시에 역전파가 진행",
			"lineHeight": 1.2
		},
		{
			"id": "KjxRoS6zgYfGXUY0AVq7H",
			"type": "arrow",
			"x": 1826.007073240401,
			"y": 6505.468029015467,
			"width": 322.6305756756358,
			"height": 379.92756938236926,
			"angle": 0,
			"strokeColor": "#1971c2",
			"backgroundColor": "transparent",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 2,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"seed": 1609289858,
			"version": 186,
			"versionNonce": 405193730,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040538,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					-322.6305756756358,
					379.92756938236926
				]
			],
			"lastCommittedPoint": null,
			"startBinding": {
				"elementId": "4nUkjbE_uJ8JO1PQHT_7T",
				"focus": -0.4436731140800353,
				"gap": 4.995863022107187
			},
			"endBinding": {
				"elementId": "hZKeykYKXKho_FYDXAImR",
				"focus": -0.299692688682741,
				"gap": 16.67318702870125
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"type": "rectangle",
			"version": 3255,
			"versionNonce": 1972958494,
			"isDeleted": false,
			"id": "hZKeykYKXKho_FYDXAImR",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1116.8866221466792,
			"y": 6902.068785426538,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 577.6000366210938,
			"height": 572,
			"seed": 500805790,
			"groupIds": [
				"8L0q7TPeeETzXqTWdRoZA"
			],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"id": "KjxRoS6zgYfGXUY0AVq7H",
					"type": "arrow"
				}
			],
			"updated": 1706194040538,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 584,
			"versionNonce": 74642370,
			"isDeleted": false,
			"id": "AjeJ0VM3",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1140.501087249543,
			"y": 7134.692976063375,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 248.4718475341797,
			"height": 33.6,
			"seed": 894094686,
			"groupIds": [
				"8L0q7TPeeETzXqTWdRoZA"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040538,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "App acquisition gain 평가",
			"rawText": "App acquisition gain 평가",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "App acquisition gain 평가",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "text",
			"version": 819,
			"versionNonce": 1731764574,
			"isDeleted": false,
			"id": "CwjCPxSv",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1142.9907173854476,
			"y": 7175.18464284909,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"width": 467.2637939453125,
			"height": 67.2,
			"seed": 998601118,
			"groupIds": [
				"8L0q7TPeeETzXqTWdRoZA"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194040538,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "추천시스템 사용에 따른 어플 다운로드의 증감을 분석\n실험은 3주간 A/B test로 진행",
			"rawText": "추천시스템 사용에 따른 어플 다운로드의 증감을 분석\n실험은 3주간 A/B test로 진행",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "추천시스템 사용에 따른 어플 다운로드의 증감을 분석\n실험은 3주간 A/B test로 진행",
			"lineHeight": 1.2,
			"baseline": 60
		},
		{
			"id": "Dak-74hgfHfWnqkVWPOI8",
			"type": "image",
			"x": 1144.4917930935899,
			"y": 6928.46875733563,
			"width": 522.3896934212034,
			"height": 192.00003051757835,
			"angle": 0,
			"strokeColor": "transparent",
			"backgroundColor": "transparent",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 2,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 803686686,
			"version": 126,
			"versionNonce": 1059269506,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706194040538,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "c923556ebfb6e09f445ea261fc8ff4c303e11eda",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "text",
			"version": 702,
			"versionNonce": 733437698,
			"isDeleted": false,
			"id": "skuhiHBE",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1144.4917932564545,
			"y": 7253.008515606798,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 174.97189331054688,
			"height": 33.6,
			"seed": 1634902878,
			"groupIds": [
				"6Pnnm-O2EVuafwC3nRKGQ"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194059677,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "Offline vs. Online",
			"rawText": "Offline vs. Online",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Offline vs. Online",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "text",
			"version": 915,
			"versionNonce": 1361913118,
			"isDeleted": false,
			"id": "Q0Cowx5V",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1144.4917930508884,
			"y": 7299.208546606797,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"width": 467.2637939453125,
			"height": 67.2,
			"seed": 1655772894,
			"groupIds": [
				"RdIsEpGEiNPo9WVXCpf03"
			],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706194064899,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "추천시스템 사용에 따른 어플 다운로드의 증감을 분석\n실험은 3주간 A/B test로 진행",
			"rawText": "추천시스템 사용에 따른 어플 다운로드의 증감을 분석\n실험은 3주간 A/B test로 진행",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "추천시스템 사용에 따른 어플 다운로드의 증감을 분석\n실험은 3주간 A/B test로 진행",
			"lineHeight": 1.2,
			"baseline": 60
		}
	],
	"appState": {
		"theme": "dark",
		"viewBackgroundColor": "#ffffff",
		"currentItemStrokeColor": "#2f9e44",
		"currentItemBackgroundColor": "transparent",
		"currentItemFillStyle": "cross-hatch",
		"currentItemStrokeWidth": 4,
		"currentItemStrokeStyle": "solid",
		"currentItemRoughness": 2,
		"currentItemOpacity": 100,
		"currentItemFontFamily": 4,
		"currentItemFontSize": 28,
		"currentItemTextAlign": "left",
		"currentItemStartArrowhead": null,
		"currentItemEndArrowhead": "arrow",
		"scrollX": -569.070273023545,
		"scrollY": -6779.708533080919,
		"zoom": {
			"value": 1.0000000000000002
		},
		"currentItemRoundness": "round",
		"gridSize": null,
		"gridColor": {
			"Bold": "#C9C9C9FF",
			"Regular": "#EDEDEDFF"
		},
		"currentStrokeOptions": {
			"highlighter": true,
			"constantPressure": true,
			"hasOutline": true,
			"outlineWidth": 4,
			"options": {
				"thinning": 1,
				"smoothing": 0.5,
				"streamline": 0.5,
				"easing": "linear",
				"start": {
					"taper": 0,
					"cap": true,
					"easing": "linear"
				},
				"end": {
					"taper": 0,
					"cap": true,
					"easing": "linear"
				}
			}
		},
		"previousGridSize": null,
		"frameRendering": {
			"enabled": true,
			"clip": true,
			"name": true,
			"outline": true
		}
	},
	"files": {}
}
```
%%