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

Wide component ^jboLMRP1

Deep component ^aXtAVXR4

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


# Embedded files
1acd85ab268aa15908884e70b2120d6f3eafdc60: $$\times
$$
6aa9fd2d74590eb9cbe3391d3dec3b6ea0bd1a59: $$\color{blue}y=W^{T}x+b$$
b51a612cdf93b53423fbf3c025058dad0b22cf32: $$\color{blue}w = [w_1, w_2, \cdots, w_d]$$
0e93d87ec0160be7094417aff18edee3e0a43426: $$\color{blue}x=[x_1, x_2, \cdots, x_d]$$
ca39c8b8fe5df873e923654a8772e2839ebb28bd: $$\color{blue}\phi_k(x)=\Pi^{d}_{i=1}{x_{i}^{C_{ki}}}, \; C_{ki} \in \{0,1\}$$
e524c6521ab1fc19ece619fff3c8e36677ab71f9: $$\color{blue}x=[유저, 아이템, 나이]$$
ce33e7389bcda96c6d9ad59d4743095f443c641a: $$\color{blue}\phi_k(x)=x_{유저}^{1}x_{아이템}^{0}x_{나이}^{1}$$
13c9ee52728b723a0340730c28d19618c8be616b: [[Pasted Image 20240118210956_301.png]]
238684eaf896cacd041c8ce3215c3c8f7b330ced: [[Pasted Image 20240122001632_748.png]]
bdb9ea3364a7abdc205f780176b173ccf12a3a34: [[Pasted Image 20240122020009_943.png]]
6df3d62f89062b41d078fce5b944b233e9d6542d: [[Pasted Image 20240125204524_697.png]]
b55d921621d8d0f82b8935e205bb73902fe0c971: [[Pasted Image 20240125205539_651.png]]
972b5e540823051b0ba3f9ac4102f48db34dc098: [[Pasted Image 20240125215542_172.png]]

%%
# Drawing
```json
{
	"type": "excalidraw",
	"version": 2,
	"source": "https://github.com/zsviczian/obsidian-excalidraw-plugin/releases/tag/2.0.17",
	"elements": [
		{
			"id": "sX9xz_tcEV9FAoiSZt6qv",
			"type": "arrow",
			"x": 578.1098740118646,
			"y": 3999.3255588349502,
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
			"version": 1053,
			"versionNonce": 1606475870,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706187680767,
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
				"focus": -0.8735159180967942,
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
			"version": 809,
			"versionNonce": 562191490,
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
			"updated": 1706187680768,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 640,
			"versionNonce": 1942037662,
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
			"updated": 1706187680768,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 401,
			"versionNonce": 2143779906,
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
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 102.5279541015625,
			"height": 43.199999999999996,
			"seed": 516418646,
			"groupIds": [],
			"frameId": "xypwCSRmvveY3TFu7EULd",
			"roundness": null,
			"boundElements": [],
			"updated": 1706187680768,
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
			"version": 1058,
			"versionNonce": 1605296350,
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
			"updated": 1706187680768,
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
			"version": 2251,
			"versionNonce": 1607640066,
			"isDeleted": false,
			"id": "ZBnbuoHoKJLjN2pLtabZh",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 928.0598655797993,
			"y": -968.5634043843373,
			"strokeColor": "#e03131",
			"backgroundColor": "transparent",
			"width": 4.668223294235432,
			"height": 237.3846301002037,
			"seed": 148269728,
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
			"updated": 1706187680768,
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
			"version": 138,
			"versionNonce": 924521758,
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
			"updated": 1706187680768,
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
			"version": 1285,
			"versionNonce": 732091330,
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
			"updated": 1706187680768,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 687,
			"versionNonce": 1937162590,
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
			"updated": 1706187680768,
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
			"version": 944,
			"versionNonce": 894897026,
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
			"updated": 1706187680768,
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
			"version": 347,
			"versionNonce": 940762526,
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
			"updated": 1706187680768,
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
			"version": 452,
			"versionNonce": 858671938,
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
			"updated": 1706187680768,
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
			"version": 863,
			"versionNonce": 371229150,
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
			"updated": 1706187680768,
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
			"version": 464,
			"versionNonce": 998740738,
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
			"updated": 1706187680768,
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
			"version": 1456,
			"versionNonce": 1353750046,
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
			"updated": 1706187680768,
			"link": null,
			"locked": false
		},
		{
			"type": "arrow",
			"version": 1838,
			"versionNonce": 1088545474,
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
			"updated": 1706187680768,
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
			"version": 109,
			"versionNonce": 548676190,
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
			"updated": 1706187680768,
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
			"version": 565,
			"versionNonce": 232536706,
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
			"updated": 1706187680768,
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
			"version": 950,
			"versionNonce": 2029790878,
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
			"updated": 1706187680768,
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
			"version": 619,
			"versionNonce": 1094031938,
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
			"updated": 1706187680768,
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
			"version": 1886,
			"versionNonce": 1245291230,
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
			"updated": 1706187680768,
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
			"version": 114,
			"versionNonce": 1238172162,
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
			"updated": 1706187680768,
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
			"version": 1328,
			"versionNonce": 1191024414,
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
			"backgroundColor": "#b2f2bb",
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
			"updated": 1706187680768,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 546,
			"versionNonce": 1654747586,
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
			"updated": 1706187680768,
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
			"version": 716,
			"versionNonce": 666436446,
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
			"updated": 1706187680768,
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
			"version": 565,
			"versionNonce": 248637826,
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
			"updated": 1706187680768,
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
			"version": 688,
			"versionNonce": 1857873822,
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
			"updated": 1706187680769,
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
			"version": 668,
			"versionNonce": 362637634,
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
			"updated": 1706187680769,
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
			"version": 2106,
			"versionNonce": 742015966,
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
			"updated": 1706187680769,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 2491,
			"versionNonce": 2120413442,
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
			"updated": 1706187680769,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 1451,
			"versionNonce": 1111627806,
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
			"updated": 1706187680769,
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
			"version": 2448,
			"versionNonce": 211910850,
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
			"updated": 1706187680769,
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
			"version": 79,
			"versionNonce": 684024926,
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
			"updated": 1706187680769,
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
			"version": 1442,
			"versionNonce": 1006114946,
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
			"updated": 1706187680769,
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
			"version": 3713,
			"versionNonce": 831858846,
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
			"updated": 1706187680769,
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
			"version": 122,
			"versionNonce": 1009104962,
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
			"updated": 1706187680769,
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
			"version": 657,
			"versionNonce": 1281516766,
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
			"updated": 1706187680769,
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
			"version": 368,
			"versionNonce": 1829330946,
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
			"updated": 1706187680769,
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
			"version": 469,
			"versionNonce": 1253972254,
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
			"updated": 1706187680769,
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
			"version": 399,
			"versionNonce": 1520570306,
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
			"updated": 1706187680769,
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
			"version": 590,
			"versionNonce": 605635934,
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
			"updated": 1706187680769,
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
			"version": 1637,
			"versionNonce": 957269890,
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
			"updated": 1706187680769,
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
			"version": 104,
			"versionNonce": 969206174,
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
			"updated": 1706187680769,
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
			"version": 461,
			"versionNonce": 1619953474,
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
			"updated": 1706187680769,
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
			"version": 1034,
			"versionNonce": 452068830,
			"isDeleted": false,
			"id": "aXSV0EcqZGTyMsoC8MfDd",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2534.212422885274,
			"y": -665.3239563854373,
			"strokeColor": "#2f9e44",
			"backgroundColor": "transparent",
			"width": 3164.9179552747055,
			"height": 128.43940384266102,
			"seed": 660233888,
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
			"updated": 1706187680769,
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
			"version": 97,
			"versionNonce": 1233145602,
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
			"updated": 1706187680769,
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
			"version": 315,
			"versionNonce": 1219598878,
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
			"updated": 1706187680769,
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
			"version": 762,
			"versionNonce": 140713666,
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
			"updated": 1706187680769,
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
			"version": 82,
			"versionNonce": 2046076510,
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
			"updated": 1706187680769,
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
			"version": 1536,
			"versionNonce": 1238759042,
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
			"updated": 1706187680769,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 392,
			"versionNonce": 1603021470,
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
			"updated": 1706187680769,
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
			"version": 543,
			"versionNonce": 1318573634,
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
			"updated": 1706187680770,
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
			"version": 70,
			"versionNonce": 1747527390,
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
			"updated": 1706187680770,
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
			"version": 608,
			"versionNonce": 1736949250,
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
			"updated": 1706187680770,
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
			"version": 401,
			"versionNonce": 73177886,
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
			"updated": 1706187680770,
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
			"version": 2900,
			"versionNonce": 1906617794,
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
			"updated": 1706187680770,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 339,
			"versionNonce": 1788315486,
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
			"updated": 1706187680770,
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
			"version": 257,
			"versionNonce": 1376626050,
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
			"updated": 1706187680770,
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
			"version": 83,
			"versionNonce": 1529539486,
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
			"updated": 1706187680770,
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
			"version": 997,
			"versionNonce": 1912710466,
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
			"updated": 1706187680770,
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
			"version": 2590,
			"versionNonce": 1682425822,
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
			"updated": 1706187680770,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 148,
			"versionNonce": 987737346,
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
			"updated": 1706187680770,
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
			"version": 151,
			"versionNonce": 637475870,
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
			"updated": 1706187680770,
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
			"version": 94,
			"versionNonce": 304528578,
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
			"updated": 1706187680770,
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
			"version": 236,
			"versionNonce": 373418078,
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
			"updated": 1706187680770,
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
			"version": 71,
			"versionNonce": 1433785474,
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
			"updated": 1706187680770,
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
			"version": 138,
			"versionNonce": 1155607710,
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
			"updated": 1706187680770,
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
			"version": 899,
			"versionNonce": 1452012610,
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
			"updated": 1706187680770,
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
			"version": 91,
			"versionNonce": 529393886,
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
			"updated": 1706187680770,
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
			"version": 939,
			"versionNonce": 1464343554,
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
			"updated": 1706187680770,
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
			"version": 78,
			"versionNonce": 903421214,
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
			"updated": 1706187680770,
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
			"version": 877,
			"versionNonce": 94981058,
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
			"updated": 1706187680770,
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
			"version": 80,
			"versionNonce": 2100545886,
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
			"updated": 1706187680770,
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
			"version": 3359,
			"versionNonce": 2010022786,
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
			"updated": 1706187680770,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 561,
			"versionNonce": 351202718,
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
			"updated": 1706187680770,
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
			"version": 376,
			"versionNonce": 670483266,
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
			"updated": 1706187680770,
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
			"version": 516,
			"versionNonce": 171674078,
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
			"updated": 1706187680770,
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
			"version": 59,
			"versionNonce": 1887505154,
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
			"updated": 1706187680771,
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
			"version": 1321,
			"versionNonce": 472555038,
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
			"updated": 1706187680771,
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
			"version": 74,
			"versionNonce": 132930242,
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
			"updated": 1706187680771,
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
			"version": 811,
			"versionNonce": 2142055006,
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
			"updated": 1706187680771,
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
			"version": 811,
			"versionNonce": 2094510722,
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
			"updated": 1706187680771,
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
			"version": 463,
			"versionNonce": 596913822,
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
			"updated": 1706187680771,
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
			"version": 2973,
			"versionNonce": 838996546,
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
			"strokeColor": "#000000",
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
			"updated": 1706187680771,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 539,
			"versionNonce": 1955637982,
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
			"strokeColor": "#e03131",
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
			"updated": 1706187680771,
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
			"version": 515,
			"versionNonce": 1514830338,
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
			"strokeColor": "#1e1e1e",
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
			"updated": 1706187680771,
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
			"version": 393,
			"versionNonce": 557031198,
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
			"updated": 1706187680771,
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
			"version": 3158,
			"versionNonce": 1957685698,
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
			"updated": 1706187680771,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 355,
			"versionNonce": 1575881566,
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
			"updated": 1706187680771,
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
			"version": 346,
			"versionNonce": 1213292930,
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
			"updated": 1706187680771,
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
			"version": 413,
			"versionNonce": 688975774,
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
			"updated": 1706187680771,
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
			"version": 649,
			"versionNonce": 1617813826,
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
			"updated": 1706187680771,
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
			"version": 725,
			"versionNonce": 248335326,
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
			"strokeColor": "#1971c2",
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
			"updated": 1706187680771,
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
			"version": 64,
			"versionNonce": 140798210,
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
			"strokeColor": "#1971c2",
			"backgroundColor": "#e7f5ff",
			"width": 87.89198303222656,
			"height": 33.6,
			"seed": 841873965,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706187680771,
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
			"version": 3591,
			"versionNonce": 1832132638,
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
			"updated": 1706187680771,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 854,
			"versionNonce": 1202976962,
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
			"updated": 1706187680771,
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
			"version": 861,
			"versionNonce": 943090782,
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
			"updated": 1706187680771,
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
			"version": 313,
			"versionNonce": 1576767618,
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
			"updated": 1706187680771,
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
			"version": 588,
			"versionNonce": 1034236062,
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
			"updated": 1706187680771,
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
			"version": 55,
			"versionNonce": 1056583746,
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
			"updated": 1706187680771,
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
			"version": 3323,
			"versionNonce": 1764846814,
			"isDeleted": false,
			"id": "ULjGn0ZQE-nIW6gBvQbiC",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 750.7798969746068,
			"y": 1371.5674869846898,
			"strokeColor": "#000000",
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
			"updated": 1706187680771,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 883,
			"versionNonce": 244242434,
			"isDeleted": false,
			"id": "99Bs0Muz",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 773.4232169283828,
			"y": 1415.6344136803277,
			"strokeColor": "#e03131",
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
			"updated": 1706187680771,
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
			"version": 1087,
			"versionNonce": 141304094,
			"isDeleted": false,
			"id": "3u3MeBQi",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 778.2463479837197,
			"y": 1785.0563713082574,
			"strokeColor": "#1e1e1e",
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
			"updated": 1706187680772,
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
			"version": 601,
			"versionNonce": 481855426,
			"isDeleted": false,
			"id": "WAvtRm6ZfDe6Ihgn9a__p",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 770.4155602479651,
			"y": 1531.584021559429,
			"strokeColor": "#e03131",
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
			"updated": 1706187680772,
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
			"version": 3419,
			"versionNonce": 247876958,
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
			"strokeColor": "#000000",
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
			"updated": 1706187680772,
			"link": null,
			"locked": false
		},
		{
			"type": "embeddable",
			"version": 482,
			"versionNonce": 1637236610,
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
			"strokeColor": "#1e1e1e",
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
			"updated": 1706187680772,
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
			"version": 545,
			"versionNonce": 1502671262,
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
			"strokeColor": "#e03131",
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
			"updated": 1706187680772,
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
			"version": 489,
			"versionNonce": 2036793154,
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
			"strokeColor": "#1e1e1e",
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
			"updated": 1706187680772,
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
			"version": 3333,
			"versionNonce": 1945963998,
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
			"updated": 1706187680772,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 583,
			"versionNonce": 545900290,
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
			"updated": 1706187680772,
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
			"version": 594,
			"versionNonce": 1528537630,
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
			"updated": 1706187680772,
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
			"version": 833,
			"versionNonce": 796759746,
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
			"updated": 1706187680772,
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
			"version": 847,
			"versionNonce": 1105047134,
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
			"updated": 1706187680772,
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
			"version": 718,
			"versionNonce": 383872642,
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
			"updated": 1706187680772,
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
			"version": 56,
			"versionNonce": 1427387038,
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
			"updated": 1706187680772,
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
			"version": 3494,
			"versionNonce": 1534348866,
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
			"updated": 1706187680772,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 758,
			"versionNonce": 2138058462,
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
			"updated": 1706187680772,
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
			"version": 935,
			"versionNonce": 303379970,
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
			"updated": 1706187680772,
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
			"version": 1257,
			"versionNonce": 763536158,
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
			"updated": 1706187680772,
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
			"version": 1441,
			"versionNonce": 1539515842,
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
			"updated": 1706187680772,
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
			"version": 825,
			"versionNonce": 297570142,
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
			"updated": 1706187680772,
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
			"version": 47,
			"versionNonce": 1637686658,
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
			"updated": 1706187680772,
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
			"version": 3609,
			"versionNonce": 1752101790,
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
			"updated": 1706187680772,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 898,
			"versionNonce": 1356995906,
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
			"updated": 1706187680772,
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
			"version": 1030,
			"versionNonce": 1003147230,
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
			"updated": 1706187680772,
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
			"version": 1208,
			"versionNonce": 1458644226,
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
			"updated": 1706187680772,
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
			"version": 412,
			"versionNonce": 669066270,
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
			"updated": 1706187680772,
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
			"version": 403,
			"versionNonce": 491336898,
			"isDeleted": false,
			"id": "kGcBufpeNOALPbBQRugYX",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 341.44884559896616,
			"y": 1640.1478836414203,
			"strokeColor": "#2f9e44",
			"backgroundColor": "#a5d8ff",
			"width": 395.99998474121094,
			"height": 0,
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
			"updated": 1706187680772,
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
					395.99998474121094,
					0
				]
			]
		},
		{
			"type": "text",
			"version": 65,
			"versionNonce": 513994846,
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
			"updated": 1706187680772,
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
			"version": 3454,
			"versionNonce": 1166625922,
			"isDeleted": false,
			"id": "2-kzip8ytDZ7vfQCvHz3P",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 203.42134525513143,
			"y": 2208.625821686828,
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
			"updated": 1706187680772,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 706,
			"versionNonce": 736179358,
			"isDeleted": false,
			"id": "xXND7mQQ",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 235.22144494588633,
			"y": 2233.18336600205,
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
			"updated": 1706187680772,
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
			"version": 714,
			"versionNonce": 1701866562,
			"isDeleted": false,
			"id": "H40TDvkU",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 225.55477827921982,
			"y": 2282.3833660020505,
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
			"boundElements": [],
			"updated": 1706187680772,
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
			"version": 746,
			"versionNonce": 961343710,
			"isDeleted": false,
			"id": "BvWoYZ20",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 237.23691735799525,
			"y": 2469.250012323665,
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
			"updated": 1706187680772,
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
			"version": 950,
			"versionNonce": 48075778,
			"isDeleted": false,
			"id": "gzPinRvH",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 233.5304184938998,
			"y": 2519.3417161093803,
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
			"updated": 1706187680772,
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
			"version": 642,
			"versionNonce": 1383539998,
			"isDeleted": false,
			"id": "183-VcNu2YeNEPUHgHqF9",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 942.7407997760241,
			"y": 1951.7126656087783,
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
			"updated": 1706187680772,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "ULjGn0ZQE-nIW6gBvQbiC",
				"focus": -0.3044878233129547,
				"gap": 8.14517862408843
			},
			"endBinding": {
				"elementId": "2-kzip8ytDZ7vfQCvHz3P",
				"focus": -0.06456572235750482,
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
			"version": 65,
			"versionNonce": 265274306,
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
			"updated": 1706187680772,
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
			"version": 238,
			"versionNonce": 1758515550,
			"isDeleted": false,
			"id": "CdDT6gpz",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1217.3504012760154,
			"y": 1962.5382831370023,
			"strokeColor": "#1971c2",
			"backgroundColor": "#a5d8ff",
			"width": 107.16218566894531,
			"height": 33.6,
			"seed": 978300766,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706187680772,
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
			"version": 3730,
			"versionNonce": 1717959554,
			"isDeleted": false,
			"id": "-WL-zDJpglwbHZAMd3MAJ",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1313.9808079736065,
			"y": 2206.67166529846,
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
			"updated": 1706187680772,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 1004,
			"versionNonce": 397079966,
			"isDeleted": false,
			"id": "nhs9fcHl",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1345.7809076643614,
			"y": 2231.229209613682,
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
			"updated": 1706187680772,
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
			"version": 1192,
			"versionNonce": 1155480386,
			"isDeleted": false,
			"id": "solpdiEq",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1332.5144688622784,
			"y": 2271.731818788362,
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
			"updated": 1706187680772,
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
			"version": 1167,
			"versionNonce": 1748406750,
			"isDeleted": false,
			"id": "yaFrOSO5",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1347.7963800764703,
			"y": 2600.7244273638685,
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
			"updated": 1706187680772,
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
			"version": 1522,
			"versionNonce": 1234862850,
			"isDeleted": false,
			"id": "xQPAovzh",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1344.0898812123748,
			"y": 2649.387559721012,
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
			"updated": 1706187680772,
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
			"version": 891,
			"versionNonce": 361014814,
			"isDeleted": false,
			"id": "WOXx1AX-uzoeCJHtu_Q8l",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 784.808648595102,
			"y": 2357.7132008874287,
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
			"updated": 1706187680772,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "2-kzip8ytDZ7vfQCvHz3P",
				"focus": -0.5358344611579563,
				"gap": 3.787266718876822
			},
			"endBinding": {
				"elementId": "-WL-zDJpglwbHZAMd3MAJ",
				"focus": 0.1208550373506666,
				"gap": 17.172159378504603
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
			"version": 244,
			"versionNonce": 1863766722,
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
			"updated": 1706187680772,
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
			"version": 292,
			"versionNonce": 1350971998,
			"isDeleted": false,
			"id": "eSzSzP_hi_HBn7joshpsk",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1139.1026567984084,
			"y": 1956.0113774763392,
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
			"updated": 1706187680772,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "ULjGn0ZQE-nIW6gBvQbiC",
				"focus": 0.32460821057760203,
				"gap": 12.443890491649427
			},
			"endBinding": {
				"elementId": "-WL-zDJpglwbHZAMd3MAJ",
				"focus": 0.07313415857925158,
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
			"version": 55,
			"versionNonce": 133376642,
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
			"updated": 1706187680772,
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
			"version": 322,
			"versionNonce": 67909278,
			"isDeleted": false,
			"id": "2bkCbej3",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1732.1839784308772,
			"y": 2734.70157040109,
			"strokeColor": "#1971c2",
			"backgroundColor": "#a5d8ff",
			"width": 136.1505889892578,
			"height": 33.6,
			"seed": 1768959042,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706187680772,
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
			"version": 673,
			"versionNonce": 988711490,
			"isDeleted": false,
			"id": "LLUrhDxTngrRcfH_ivYRD",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 2217.2921819135922,
			"y": 2050.1197153974667,
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
			"updated": 1706187680772,
			"link": null,
			"locked": false
		},
		{
			"type": "image",
			"version": 733,
			"versionNonce": 415740638,
			"isDeleted": false,
			"id": "xyTMQ9rrtHBXGvfDhbftt",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 2238.246136614113,
			"y": 2076.8674234308883,
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
			"updated": 1706187680772,
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
			"version": 567,
			"versionNonce": 2129129986,
			"isDeleted": false,
			"id": "iM_hYrewAdl9zwYNb3NTS",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1894.981395799016,
			"y": 2348.169669407328,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#1e1e1e",
			"width": 317.8666178385415,
			"height": 60.73975546664633,
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
			"updated": 1706187680772,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "solpdiEq",
				"focus": -0.09895537602204246,
				"gap": 10.139229182831286
			},
			"endBinding": {
				"elementId": "xyTMQ9rrtHBXGvfDhbftt",
				"focus": -0.13976023756907247,
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
					317.8666178385415,
					-60.73975546664633
				]
			]
		},
		{
			"type": "text",
			"version": 44,
			"versionNonce": 961128222,
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
			"updated": 1706187680773,
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
			"version": 1250,
			"versionNonce": 383672770,
			"isDeleted": false,
			"id": "yYxUXjdoLPM5ciT4v4Vr2",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1302.5793018348338,
			"y": 2494.462303093522,
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
			"updated": 1706187680773,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "solpdiEq",
				"focus": -0.20056886890837936,
				"gap": 29.93516702744455
			},
			"endBinding": {
				"elementId": "2-kzip8ytDZ7vfQCvHz3P",
				"focus": 0.28502188050647304,
				"gap": 24.557980993764886
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
			"version": 326,
			"versionNonce": 369300318,
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
			"updated": 1706187680773,
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
			"version": 279,
			"versionNonce": 233888130,
			"isDeleted": false,
			"id": "jUvUBOKHI3PZ32Y9aYzsz",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 807.537353970222,
			"y": 2671.7922011065757,
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
			"updated": 1706187680773,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "2-kzip8ytDZ7vfQCvHz3P",
				"focus": 0.6203959228023812,
				"gap": 26.515972093996766
			},
			"endBinding": {
				"elementId": "-WL-zDJpglwbHZAMd3MAJ",
				"focus": -0.6160301696118448,
				"gap": 21.873951806422838
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
			"version": 46,
			"versionNonce": 692385694,
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
			"updated": 1706187680773,
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
			"version": 1146,
			"versionNonce": 861821250,
			"isDeleted": false,
			"id": "6puHaWBVZ4QDYmVGkefbl",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 365.54468041097425,
			"y": 2991.279372972668,
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
			"boundElements": [],
			"updated": 1706187680773,
			"link": null,
			"locked": false
		},
		{
			"type": "image",
			"version": 274,
			"versionNonce": 1064185438,
			"isDeleted": false,
			"id": "8JRbq-_TEzgozIzvE8Ttv",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 390.8817534928553,
			"y": 3012.4998536530743,
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
			"updated": 1706187912281,
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
			"x": 467.8573333487078,
			"y": 2790.775125706343,
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
			"version": 131,
			"versionNonce": 377872642,
			"isDeleted": false,
			"boundElements": [
				{
					"type": "text",
					"id": "jboLMRP1"
				}
			],
			"updated": 1706187680773,
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
				"focus": 0.3914488952344516,
				"gap": 10.149304019514602
			},
			"endBinding": {
				"elementId": "8JRbq-_TEzgozIzvE8Ttv",
				"focus": -0.5454907849097057,
				"gap": 25.361036096589487
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "jboLMRP1",
			"type": "text",
			"x": 434.4760918103999,
			"y": 2872.1569716314134,
			"width": 161.3079376220703,
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
			"version": 32,
			"versionNonce": 1711679518,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706187680773,
			"link": null,
			"locked": false,
			"text": "Wide component",
			"rawText": "Wide component",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "center",
			"verticalAlign": "middle",
			"baseline": 26,
			"containerId": "vGEnG3A29KDJSw3MDvw8N",
			"originalText": "Wide component",
			"lineHeight": 1.2
		},
		{
			"id": "gWHSX1w9v1q1KW0WzgI-Z",
			"type": "arrow",
			"x": 1599.4937413742764,
			"y": 2789.320546959893,
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
			"version": 99,
			"versionNonce": 48656578,
			"isDeleted": false,
			"boundElements": [
				{
					"type": "text",
					"id": "aXtAVXR4"
				}
			],
			"updated": 1706187680773,
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
				"focus": -0.33069060629816005,
				"gap": 10.648881661432824
			},
			"endBinding": {
				"elementId": "8JRbq-_TEzgozIzvE8Ttv",
				"focus": 0.547722273288186,
				"gap": 26.8156703295449
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "aXtAVXR4",
			"type": "text",
			"x": 1473.499731836146,
			"y": 2870.702365141711,
			"width": 155.98793029785156,
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
			"version": 30,
			"versionNonce": 1502049374,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706187680773,
			"link": null,
			"locked": false,
			"text": "Deep component",
			"rawText": "Deep component",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "center",
			"verticalAlign": "middle",
			"baseline": 26,
			"containerId": "gWHSX1w9v1q1KW0WzgI-Z",
			"originalText": "Deep component",
			"lineHeight": 1.2
		},
		{
			"id": "ZUGsu1uttJXtd1ICHWM82",
			"type": "arrow",
			"x": 586.8464351558326,
			"y": 3323.6696806786895,
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
			"version": 1115,
			"versionNonce": 2082408578,
			"isDeleted": false,
			"boundElements": [
				{
					"type": "text",
					"id": "aRk82atg"
				}
			],
			"updated": 1706187680773,
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
				"gap": 23.169827025615177,
				"focus": 0.4315118266948873
			},
			"endBinding": {
				"elementId": "_qhlWlzBN-Y5xqBFiboo2",
				"focus": -0.5678877899950258,
				"gap": 9.472074447400018
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
			"version": 42,
			"versionNonce": 529873054,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706187680773,
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
			"version": 951,
			"versionNonce": 971941954,
			"isDeleted": false,
			"id": "kKty8OzJ",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 170.05587868807763,
			"y": 3818.6970435415933,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 273.99627685546875,
			"height": 34.305698050849074,
			"seed": 1883097566,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706187680773,
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
			"version": 1330,
			"versionNonce": 534803678,
			"isDeleted": false,
			"id": "fEnRUueM",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 166.27153253160517,
			"y": 3869.840819283418,
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
			"updated": 1706187680773,
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
			"version": 398,
			"versionNonce": 607408130,
			"isDeleted": false,
			"id": "PONY8AH8",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 326.79464029959365,
			"y": 3582.67500364985,
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
			"updated": 1706187680773,
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
			"version": 512,
			"versionNonce": 603597086,
			"isDeleted": false,
			"id": "mKCjaDqA",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 347.92497051152077,
			"y": 3702.5948278439837,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 169.00793869153594,
			"height": 19.821918735427055,
			"seed": 47,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706187680773,
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
			"x": 362.7689561122439,
			"y": 3668.571231608127,
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
			"version": 551,
			"versionNonce": 1324285890,
			"isDeleted": false,
			"boundElements": [
				{
					"id": "YtA31vvl2k1wN7tTIwVwB",
					"type": "arrow"
				}
			],
			"updated": 1706187680773,
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
			"x": 404.45541123646046,
			"y": 3625.4101201109997,
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
			"version": 1482,
			"versionNonce": 458446174,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706187680773,
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
				"gap": 8.899352670227017,
				"focus": 0.25266865505878167
			},
			"endBinding": {
				"elementId": "9uBLtgXj",
				"gap": 1.7520228632859016,
				"focus": -0.06469159409070332
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "0RtqmwHjoCdWKEeo0J55y",
			"type": "arrow",
			"x": 515.763756558666,
			"y": 3604.675745159164,
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
			"version": 1526,
			"versionNonce": 1983756162,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706187680773,
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
				"gap": 9.639568167181892,
				"focus": -0.8146637953346889
			},
			"endBinding": {
				"elementId": "vNAdpXxE",
				"gap": 6.006891885091818,
				"focus": -0.21338086096293526
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "vNAdpXxE",
			"type": "text",
			"x": 575.1238112556275,
			"y": 3637.1396020683706,
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
			"version": 504,
			"versionNonce": 1597831582,
			"isDeleted": false,
			"boundElements": [
				{
					"id": "0RtqmwHjoCdWKEeo0J55y",
					"type": "arrow"
				}
			],
			"updated": 1706187680773,
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
			"x": 326.23086099769944,
			"y": 3621.470434682812,
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
			"version": 1374,
			"versionNonce": 2053076802,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706187680773,
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
				"gap": 4.991607582032373,
				"focus": 0.6723008674349367
			},
			"endBinding": {
				"elementId": "DozKNSsU",
				"gap": 14.266215465486084,
				"focus": -0.659333608590756
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "DozKNSsU",
			"type": "text",
			"x": 157.31359191815747,
			"y": 3741.4460141805785,
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
			"version": 417,
			"versionNonce": 1994921438,
			"isDeleted": false,
			"boundElements": [
				{
					"id": "XiFCLvYA276bjU9pTrE8M",
					"type": "arrow"
				}
			],
			"updated": 1706187680773,
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
			"version": 293,
			"versionNonce": 1538473730,
			"isDeleted": false,
			"id": "TkInnnVG",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 163.70970927041253,
			"y": 3770.672197527258,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 152,
			"height": 19,
			"seed": 18762,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1706187680773,
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
			"version": 367,
			"versionNonce": 1533389342,
			"isDeleted": false,
			"id": "jCRDL8XF",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 260.87246370929927,
			"y": 3960.693727326414,
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
			"updated": 1706187680773,
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
			"x": 194.41898726200944,
			"y": 3945.4759959013204,
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
			"version": 972,
			"versionNonce": 918032066,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706187680773,
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
				"gap": 7.0237805162041695,
				"focus": 0.8951330903895394
			},
			"endBinding": {
				"elementId": "jCRDL8XF",
				"focus": -0.6084927371479456,
				"gap": 8.14792386225912
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "_qhlWlzBN-Y5xqBFiboo2",
			"type": "rectangle",
			"x": 125.29241984113298,
			"y": 3557.006687932803,
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
			"version": 469,
			"versionNonce": 1000781406,
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
			"updated": 1706187680773,
			"link": null,
			"locked": false
		},
		{
			"id": "PgnN70_rXNETZZuIHI0WN",
			"type": "arrow",
			"x": 414.2726759566991,
			"y": 3998.7921085904622,
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
			"version": 637,
			"versionNonce": 1074587266,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706187680773,
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
				"focus": 0.08566665628390994,
				"gap": 5.153720909989943
			},
			"endBinding": {
				"elementId": "GKlA0ihO",
				"focus": 0.03601391868321992,
				"gap": 9.221425781219295
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"type": "image",
			"version": 285,
			"versionNonce": 1081883294,
			"isDeleted": false,
			"id": "GKlA0ihO",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 315.7715819384232,
			"y": 4058.984646105801,
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
			"updated": 1706187680773,
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
			"x": 365.92264542607404,
			"y": 4070.1866108539866,
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
			"version": 280,
			"versionNonce": 1081132610,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706187680773,
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
			"x": 275.33361912242697,
			"y": 4000.3631263378566,
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
			"version": 1027,
			"versionNonce": 1352087262,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706187680773,
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
				"focus": 0.9136486026036779,
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
			"x": 145.10587564381433,
			"y": 4120.634067762672,
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
			"version": 382,
			"versionNonce": 281193986,
			"isDeleted": false,
			"boundElements": [
				{
					"id": "Du2GHgY1CxKXW675Z8_iz",
					"type": "arrow"
				}
			],
			"updated": 1706187680773,
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
			"x": 278.61782373197025,
			"y": 4241.777802743938,
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
			"version": 364,
			"versionNonce": 1418242846,
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
			"updated": 1706187680773,
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
			"x": 647.8814771949674,
			"y": 4287.423112987722,
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
			"version": 1199,
			"versionNonce": 369204674,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706187680773,
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
				"focus": -0.4066116197747498,
				"gap": 12.045310243783206
			},
			"endBinding": {
				"elementId": "NtmNq6wo",
				"focus": 0.9006223530636696,
				"gap": 10.429872066557465
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"type": "image",
			"version": 317,
			"versionNonce": 2059507550,
			"isDeleted": false,
			"id": "NtmNq6wo",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 351.1326845269596,
			"y": 4328.942356725109,
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
			"updated": 1706187680773,
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
			"x": 281.61444905362526,
			"y": 4366.5389214558645,
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
			"version": 381,
			"versionNonce": 1028429186,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706187680773,
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
			"x": 142.57834546972578,
			"y": 4465.755582523072,
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
			"version": 395,
			"versionNonce": 2073230238,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706187680773,
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
			"id": "e0NYpWq1htVibVlxDYtmt",
			"type": "image",
			"x": -18.918636035926056,
			"y": 4785.023060155057,
			"width": 876,
			"height": 438,
			"angle": 0,
			"strokeColor": "transparent",
			"backgroundColor": "transparent",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 2,
			"opacity": 100,
			"groupIds": [
				"zY4V_IginpELB56Lnvxj8"
			],
			"frameId": null,
			"roundness": null,
			"seed": 886148958,
			"version": 1018,
			"versionNonce": 2011338050,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706187680773,
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
			"id": "gkpdWh9aOgarGenzqbl7v",
			"type": "rectangle",
			"x": -46.66894531664934,
			"y": 4757.15638833987,
			"width": 935.865245139755,
			"height": 483.34355512386355,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 2,
			"opacity": 100,
			"groupIds": [
				"zY4V_IginpELB56Lnvxj8"
			],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"seed": 1071326850,
			"version": 584,
			"versionNonce": 1563285470,
			"isDeleted": false,
			"boundElements": [
				{
					"id": "NsjHvNldd5hG6CR7NPr-F",
					"type": "arrow"
				}
			],
			"updated": 1706187680773,
			"link": null,
			"locked": false
		},
		{
			"id": "NsjHvNldd5hG6CR7NPr-F",
			"type": "arrow",
			"x": 428.26865631299415,
			"y": 4571.174172925579,
			"width": 4.2029233033611035,
			"height": 184.93145786657624,
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
			"version": 619,
			"versionNonce": 933440542,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706187680773,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					4.2029233033611035,
					184.93145786657624
				]
			],
			"lastCommittedPoint": null,
			"startBinding": {
				"elementId": "_qhlWlzBN-Y5xqBFiboo2",
				"focus": 0.03912240748962037,
				"gap": 7.878829642637584
			},
			"endBinding": {
				"elementId": "gkpdWh9aOgarGenzqbl7v",
				"focus": 0.0353260523582346,
				"gap": 1.0507575477149658
			},
			"startArrowhead": null,
			"endArrowhead": null
		},
		{
			"type": "rectangle",
			"version": 725,
			"versionNonce": 853585630,
			"isDeleted": false,
			"id": "5zslHoXHkQG5J8g5uXWUp",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1192.877821451609,
			"y": 3563.8085341949404,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 607.3814514873146,
			"height": 1006.2886553501385,
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
				}
			],
			"updated": 1706187912281,
			"link": null,
			"locked": false
		},
		{
			"id": "uHW02R3JaT2krHCxngp28",
			"type": "arrow",
			"x": 1479.2445680362018,
			"y": 3327.7002414374515,
			"width": 23.187510190961802,
			"height": 220.28188736365064,
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
			"version": 205,
			"versionNonce": 1464810206,
			"isDeleted": false,
			"boundElements": [
				{
					"type": "text",
					"id": "HVMisXFr"
				}
			],
			"updated": 1706187934344,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					23.187510190961802,
					220.28188736365064
				]
			],
			"lastCommittedPoint": [
				23.187510190961802,
				220.28188736365064
			],
			"startBinding": {
				"elementId": "8JRbq-_TEzgozIzvE8Ttv",
				"focus": -0.6568520248380585,
				"gap": 27.2003877843772
			},
			"endBinding": {
				"elementId": "5zslHoXHkQG5J8g5uXWUp",
				"focus": 0.1696098690833779,
				"gap": 15.826405393838513
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "HVMisXFr",
			"type": "text",
			"x": 1379.7623801385187,
			"y": 3404.241185119277,
			"width": 222.15188598632812,
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
			"version": 37,
			"versionNonce": 518307486,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1706187933326,
			"link": null,
			"locked": false,
			"text": "feed-forward neural\nnetwork",
			"rawText": "feed-forward neural network",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "center",
			"verticalAlign": "middle",
			"baseline": 60,
			"containerId": "uHW02R3JaT2krHCxngp28",
			"originalText": "feed-forward neural network",
			"lineHeight": 1.2
		}
	],
	"appState": {
		"theme": "dark",
		"viewBackgroundColor": "#ffffff",
		"currentItemStrokeColor": "#1e1e1e",
		"currentItemBackgroundColor": "transparent",
		"currentItemFillStyle": "solid",
		"currentItemStrokeWidth": 4,
		"currentItemStrokeStyle": "solid",
		"currentItemRoughness": 1,
		"currentItemOpacity": 100,
		"currentItemFontFamily": 4,
		"currentItemFontSize": 28,
		"currentItemTextAlign": "left",
		"currentItemStartArrowhead": null,
		"currentItemEndArrowhead": "arrow",
		"scrollX": -188.79189505519707,
		"scrollY": -2974.2508242480744,
		"zoom": {
			"value": 0.6210224064729098
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