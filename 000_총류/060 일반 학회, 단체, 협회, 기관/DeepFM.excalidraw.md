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

CNN 기반 모델은 인접한 피쳐를 학습하는 편향성 ^jDOGxzzJ

이미지 처리에 특화된 구조로 이미지 데이터 내에서
근접한 픽셀 간의 패턴 및 공간적인 관계를 학습하는데 강점 ^JR6MwGl0

RNN 기반 모델은 연속성이 있어 클릭 데이터에 적합 ^HMRK9ozB

순차적인 데이터를 처리하는데 강점
이전 시간 단계의 출력이 현재 시간의 입력으로 사용되기에
시퀸스 데이터의 연속성을 잘 학습할 수 있다. ^4ZQdGjPn

DNN과 같이 ^8tniQCKt

Deep Learning over Multi-field 
Categorical Data ^wGKWzQwR

심층신경망(DNN)을 사용하여 범주형 특징 상호작용에서 
효과적인 패턴을 자동으로 학습하고 
사용자의 광고 클릭을 예측하는 두 가지 새로운 모델을 제안 ^VbrkBKVs

DNN이 효율적으로 작동하도록 하기 위해  
세가지 특징 변환 방법, 

인수분해 머신(FM), 
제한 볼츠만 머신(RBM), 
노이즈 제거 자동 인코더(DAE)를 활용 ^DReQyQrX

단점 ^uPBL2LQM


# Embedded files
1acd85ab268aa15908884e70b2120d6f3eafdc60: $$\times
$$
13c9ee52728b723a0340730c28d19618c8be616b: [[Pasted Image 20240118210956_301.png]]
238684eaf896cacd041c8ce3215c3c8f7b330ced: [[Pasted Image 20240122001632_748.png]]

%%
# Drawing
```json
{
	"type": "excalidraw",
	"version": 2,
	"source": "https://github.com/zsviczian/obsidian-excalidraw-plugin/releases/tag/2.0.17",
	"elements": [
		{
			"id": "JU4jNdfb82S-nHV0dyrI1",
			"type": "rectangle",
			"x": -2250.0964621011235,
			"y": 2236.0319649859503,
			"width": 817.0666503906242,
			"height": 426.6667683919268,
			"angle": 0,
			"strokeColor": "#e03131",
			"backgroundColor": "#ffc9c9",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": "0D2toMuhV6qy2w5Blvi6C",
			"roundness": {
				"type": 3
			},
			"seed": 654097347,
			"version": 430,
			"versionNonce": 1553378893,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1705850244109,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 580,
			"versionNonce": 1659514477,
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
			"updated": 1705850297495,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 341,
			"versionNonce": 376551597,
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
			"updated": 1705850297496,
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
			"version": 992,
			"versionNonce": 711990029,
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
			"updated": 1705850297496,
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
			"version": 2191,
			"versionNonce": 576813155,
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
			"updated": 1705850298266,
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
			"version": 78,
			"versionNonce": 1407179843,
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
			"updated": 1705850060568,
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
			"version": 1225,
			"versionNonce": 1228091757,
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
			"updated": 1705850297496,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 627,
			"versionNonce": 1460120717,
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
			"updated": 1705850297496,
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
			"version": 884,
			"versionNonce": 1876726509,
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
			"updated": 1705850297496,
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
			"version": 287,
			"versionNonce": 1040559437,
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
			"updated": 1705850297496,
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
			"version": 392,
			"versionNonce": 1893497773,
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
			"updated": 1705850297496,
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
			"version": 792,
			"versionNonce": 2140157389,
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
			"updated": 1705850297495,
			"link": null,
			"locked": false,
			"customData": {
				"frameColor": {
					"stroke": "#D4D4D4",
					"fill": "#ADADAD",
					"nameColor": "#949494"
				}
			},
			"name": null
		},
		{
			"type": "text",
			"version": 404,
			"versionNonce": 277511693,
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
			"updated": 1705850297496,
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
			"version": 1396,
			"versionNonce": 1678324845,
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
			"updated": 1705850297496,
			"link": null,
			"locked": false
		},
		{
			"type": "arrow",
			"version": 1778,
			"versionNonce": 2117270435,
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
			"updated": 1705850298266,
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
			"version": 49,
			"versionNonce": 989778531,
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
			"updated": 1705850060568,
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
			"version": 505,
			"versionNonce": 544128301,
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
			"updated": 1705850297496,
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
			"version": 890,
			"versionNonce": 1733857165,
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
			"updated": 1705850297496,
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
			"version": 548,
			"versionNonce": 2121066125,
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
			"updated": 1705850297495,
			"link": null,
			"locked": false,
			"customData": {
				"frameColor": {
					"stroke": "#D4D4D4",
					"fill": "#ADADAD",
					"nameColor": "#949494"
				}
			},
			"name": null
		},
		{
			"type": "arrow",
			"version": 1826,
			"versionNonce": 1248053645,
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
			"updated": 1705850297495,
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
			"version": 54,
			"versionNonce": 1730808333,
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
			"updated": 1705850060568,
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
			"version": 1261,
			"versionNonce": 2145200451,
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
			"strokeColor": "#000000",
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
			"updated": 1705850060568,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 482,
			"versionNonce": 1456947309,
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
			"updated": 1705850060568,
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
			"version": 652,
			"versionNonce": 361564387,
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
			"updated": 1705850060568,
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
			"version": 501,
			"versionNonce": 474917581,
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
			"updated": 1705850060568,
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
			"version": 624,
			"versionNonce": 358610051,
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
			"updated": 1705850060568,
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
			"version": 581,
			"versionNonce": 1747568941,
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
			"width": 629.8182262073861,
			"height": 637.0909534801135,
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
			"updated": 1705850060568,
			"link": null,
			"locked": false,
			"customData": {
				"frameColor": {
					"stroke": "#D4D4D4",
					"fill": "#ADADAD",
					"nameColor": "#949494"
				}
			},
			"name": null
		},
		{
			"type": "rectangle",
			"version": 2046,
			"versionNonce": 706287085,
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
			"updated": 1705850297496,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 2429,
			"versionNonce": 466754445,
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
			"updated": 1705850060568,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 1389,
			"versionNonce": 1452863427,
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
			"updated": 1705850060568,
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
			"version": 2388,
			"versionNonce": 796991981,
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
			"updated": 1705850060568,
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
			"version": 19,
			"versionNonce": 1577844579,
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
			"updated": 1705850060568,
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
			"version": 1330,
			"versionNonce": 1480612941,
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
			"height": 649.3333435058595,
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
			"updated": 1705850060568,
			"link": null,
			"locked": false,
			"customData": {
				"frameColor": {
					"stroke": "#D4D4D4",
					"fill": "#ADADAD",
					"nameColor": "#949494"
				}
			},
			"name": null
		},
		{
			"type": "arrow",
			"version": 3653,
			"versionNonce": 263985923,
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
			"updated": 1705850060568,
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
			"version": 62,
			"versionNonce": 1844005549,
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
			"updated": 1705850060568,
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
			"version": 597,
			"versionNonce": 1913929389,
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
			"updated": 1705850297496,
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
			"version": 308,
			"versionNonce": 1003610381,
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
			"updated": 1705850297496,
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
			"version": 409,
			"versionNonce": 376190829,
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
			"updated": 1705850297496,
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
			"version": 339,
			"versionNonce": 741130701,
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
			"updated": 1705850297496,
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
			"version": 519,
			"versionNonce": 618948429,
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
			"updated": 1705850297495,
			"link": null,
			"locked": false,
			"customData": {
				"frameColor": {
					"stroke": "#D4D4D4",
					"fill": "#ADADAD",
					"nameColor": "#949494"
				}
			},
			"name": null
		},
		{
			"type": "arrow",
			"version": 1577,
			"versionNonce": 1533849315,
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
			"updated": 1705850298266,
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
			"version": 44,
			"versionNonce": 1771110787,
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
			"updated": 1705850060568,
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
			"version": 390,
			"versionNonce": 1182971917,
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
			"updated": 1705850297495,
			"link": null,
			"locked": false,
			"customData": {
				"frameColor": {
					"stroke": "#D4D4D4",
					"fill": "#ADADAD",
					"nameColor": "#949494"
				}
			},
			"name": null
		},
		{
			"type": "arrow",
			"version": 973,
			"versionNonce": 348031565,
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
			"strokeColor": "#1971c2",
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
			"updated": 1705850297496,
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
			"version": 36,
			"versionNonce": 2005139085,
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
			"strokeColor": "#1971c2",
			"backgroundColor": "transparent",
			"width": 41.4119873046875,
			"height": 33.6,
			"seed": 429070176,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1705850060568,
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
			"version": 255,
			"versionNonce": 573374509,
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
			"updated": 1705850297496,
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
			"version": 702,
			"versionNonce": 553559277,
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
			"updated": 1705850060568,
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
			"version": 22,
			"versionNonce": 1868311651,
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
			"updated": 1705850060568,
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
			"version": 1476,
			"versionNonce": 1695907661,
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
			"updated": 1705850060568,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 332,
			"versionNonce": 1082042371,
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
			"updated": 1705850060568,
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
			"version": 483,
			"versionNonce": 170003885,
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
			"updated": 1705850060568,
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
			"version": 10,
			"versionNonce": 722513827,
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
			"updated": 1705850060568,
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
			"version": 548,
			"versionNonce": 1330499597,
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
			"updated": 1705850060568,
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
			"version": 330,
			"versionNonce": 1900069699,
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
			"updated": 1705850060568,
			"link": null,
			"locked": false,
			"customData": {
				"frameColor": {
					"stroke": "#D4D4D4",
					"fill": "#ADADAD",
					"nameColor": "#949494"
				}
			},
			"name": null
		},
		{
			"type": "rectangle",
			"version": 2840,
			"versionNonce": 638672995,
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
			"updated": 1705850108459,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 279,
			"versionNonce": 191718115,
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
			"updated": 1705850060568,
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
			"version": 193,
			"versionNonce": 918089933,
			"isDeleted": false,
			"id": "5kGwZHFLTUbDIfTVehCVt",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2548.6178841672286,
			"y": 831.1452839821695,
			"strokeColor": "#2f9e44",
			"backgroundColor": "#a5d8ff",
			"width": 486.3032670454545,
			"height": 1.4545232599431301,
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
			"updated": 1705850060568,
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
					486.3032670454545,
					1.4545232599431301
				]
			]
		},
		{
			"type": "text",
			"version": 23,
			"versionNonce": 1646595715,
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
			"updated": 1705850060569,
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
			"version": 926,
			"versionNonce": 156978989,
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
			"updated": 1705850060569,
			"link": null,
			"locked": false,
			"customData": {
				"frameColor": {
					"stroke": "#D4D4D4",
					"fill": "#ADADAD",
					"nameColor": "#949494"
				}
			},
			"name": null
		},
		{
			"type": "rectangle",
			"version": 2525,
			"versionNonce": 1210467875,
			"isDeleted": false,
			"id": "b_W4ATtroabrMqZ_ztwCr",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2049.9989257316847,
			"y": 549.3073396795626,
			"strokeColor": "#000000",
			"backgroundColor": "#a5d8ff",
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
			"updated": 1705850060569,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 87,
			"versionNonce": 1759699341,
			"isDeleted": false,
			"id": "9jzL3QPr",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2026.8656147779093,
			"y": 591.840703530474,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 478.9077453613281,
			"height": 43.199999999999996,
			"seed": 1634490509,
			"groupIds": [],
			"frameId": "C5GCRCbtj5DsP8OwngzmS",
			"roundness": null,
			"boundElements": [],
			"updated": 1705850060569,
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
			"version": 85,
			"versionNonce": 878676419,
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
			"updated": 1705850060569,
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
			"version": 34,
			"versionNonce": 1787373549,
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
			"updated": 1705850060569,
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
			"version": 172,
			"versionNonce": 1005541731,
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
			"updated": 1705850060569,
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
			"version": 11,
			"versionNonce": 1079485005,
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
			"updated": 1705850060569,
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
			"version": 67,
			"versionNonce": 1277441283,
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
			"updated": 1705850060569,
			"link": null,
			"locked": false,
			"customData": {
				"frameColor": {
					"stroke": "#D4D4D4",
					"fill": "#ADADAD",
					"nameColor": "#949494"
				}
			},
			"name": null
		},
		{
			"type": "rectangle",
			"version": 2965,
			"versionNonce": 522703021,
			"isDeleted": false,
			"id": "LNXFX37bWu96gSDqzmJKj",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2045.9992410799937,
			"y": 1343.550008987387,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 577.6000366210938,
			"height": 572,
			"seed": 445282851,
			"groupIds": [],
			"frameId": "sMKjJw5gg2PYgNSfBg2J5",
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"id": "kEgk5WAtvWtPBPIjFJXDp",
					"type": "arrow"
				},
				{
					"id": "k-RJEMkxhROcPERLTZItb",
					"type": "arrow"
				}
			],
			"updated": 1705850060569,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 169,
			"versionNonce": 612146339,
			"isDeleted": false,
			"id": "jDOGxzzJ",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2014.1991413892388,
			"y": 1416.107553302609,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 440.63580322265625,
			"height": 33.6,
			"seed": 1754963853,
			"groupIds": [],
			"frameId": "sMKjJw5gg2PYgNSfBg2J5",
			"roundness": null,
			"boundElements": [],
			"updated": 1705850060569,
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
			"version": 158,
			"versionNonce": 1688417037,
			"isDeleted": false,
			"id": "JR6MwGl0",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2010.8658080559053,
			"y": 1476.307553302609,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"width": 541.2398071289062,
			"height": 67.2,
			"seed": 470619437,
			"groupIds": [],
			"frameId": "sMKjJw5gg2PYgNSfBg2J5",
			"roundness": null,
			"boundElements": [],
			"updated": 1705850060569,
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
			"version": 227,
			"versionNonce": 279384131,
			"isDeleted": false,
			"id": "HMRK9ozB",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2012.1836689771299,
			"y": 1604.1741996242238,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 463.7358093261719,
			"height": 33.6,
			"seed": 1182171587,
			"groupIds": [],
			"frameId": "sMKjJw5gg2PYgNSfBg2J5",
			"roundness": null,
			"boundElements": [],
			"updated": 1705850060569,
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
			"version": 463,
			"versionNonce": 2101561709,
			"isDeleted": false,
			"id": "4ZQdGjPn",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -2015.8901678412253,
			"y": 1654.265903409939,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"width": 525.391845703125,
			"height": 100.80000000000001,
			"seed": 1665807309,
			"groupIds": [],
			"frameId": "sMKjJw5gg2PYgNSfBg2J5",
			"roundness": null,
			"boundElements": [],
			"updated": 1705850060569,
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
			"version": 426,
			"versionNonce": 1652690915,
			"isDeleted": false,
			"id": "k-RJEMkxhROcPERLTZItb",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1466.7320677504988,
			"y": 1617.2831372254968,
			"strokeColor": "#2f9e44",
			"backgroundColor": "#a5d8ff",
			"width": 391.75792347301103,
			"height": 1.4576321493327669,
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
			"updated": 1705850060569,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "LNXFX37bWu96gSDqzmJKj",
				"focus": -0.046496699103968434,
				"gap": 1.6671367084011308
			},
			"endBinding": {
				"elementId": "1U7X_641_ArMRhIPnkT8X",
				"focus": 0.07598079826303146,
				"gap": 5.502849232066637
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
					391.75792347301103,
					1.4576321493327669
				]
			]
		},
		{
			"type": "text",
			"version": 31,
			"versionNonce": 173118413,
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
			"updated": 1705850060569,
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
			"id": "sMKjJw5gg2PYgNSfBg2J5",
			"type": "frame",
			"x": -2061.398704824363,
			"y": 1331.8297787972458,
			"width": 608.0000443892047,
			"height": 602.1818403764205,
			"angle": 0,
			"strokeColor": "#bbb",
			"backgroundColor": "transparent",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 2053976237,
			"version": 122,
			"versionNonce": 740039555,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1705850060569,
			"link": null,
			"locked": false,
			"customData": {
				"frameColor": {
					"stroke": "#D4D4D4",
					"fill": "#ADADAD",
					"nameColor": "#949494"
				}
			},
			"name": null
		},
		{
			"type": "rectangle",
			"version": 3067,
			"versionNonce": 1206358573,
			"isDeleted": false,
			"id": "1U7X_641_ArMRhIPnkT8X",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1069.4712950454211,
			"y": 1355.6479495181268,
			"strokeColor": "#000000",
			"backgroundColor": "#a5d8ff",
			"width": 577.6000366210938,
			"height": 572,
			"seed": 1677047331,
			"groupIds": [],
			"frameId": "Fbrkk4-wvBR1HnRrBO1Vo",
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"id": "k-RJEMkxhROcPERLTZItb",
					"type": "arrow"
				},
				{
					"id": "40HrDZzFRrM4nXpOFDuo3",
					"type": "arrow"
				}
			],
			"updated": 1705850060569,
			"link": null,
			"locked": false
		},
		{
			"id": "n8zKXpYkFYC9k5W1WaIbU",
			"type": "embeddable",
			"x": -1043.216886642544,
			"y": 1513.647960615427,
			"width": 525.0907759232955,
			"height": 234.1818514737215,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": "Fbrkk4-wvBR1HnRrBO1Vo",
			"roundness": {
				"type": 3
			},
			"seed": 1545798147,
			"version": 129,
			"versionNonce": 968078115,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1705850060569,
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
			"version": 199,
			"versionNonce": 854508685,
			"isDeleted": false,
			"id": "wGKWzQwR",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1038.307078570367,
			"y": 1402.2297344080407,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"width": 407.69976806640625,
			"height": 86.39999999999999,
			"seed": 1756384109,
			"groupIds": [],
			"frameId": "Fbrkk4-wvBR1HnRrBO1Vo",
			"roundness": null,
			"boundElements": [],
			"updated": 1705850060569,
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
			"id": "VbrkBKVs",
			"type": "text",
			"x": -1040.3078401226578,
			"y": 1772.1934096122309,
			"width": 525.44775390625,
			"height": 100.80000000000001,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"fillStyle": "solid",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": "Fbrkk4-wvBR1HnRrBO1Vo",
			"roundness": null,
			"seed": 1493713965,
			"version": 69,
			"versionNonce": 1270306499,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1705850060569,
			"link": null,
			"locked": false,
			"text": "심층신경망(DNN)을 사용하여 범주형 특징 상호작용에서 \n효과적인 패턴을 자동으로 학습하고 \n사용자의 광고 클릭을 예측하는 두 가지 새로운 모델을 제안",
			"rawText": "심층신경망(DNN)을 사용하여 범주형 특징 상호작용에서 \n효과적인 패턴을 자동으로 학습하고 \n사용자의 광고 클릭을 예측하는 두 가지 새로운 모델을 제안",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "left",
			"verticalAlign": "top",
			"baseline": 94,
			"containerId": null,
			"originalText": "심층신경망(DNN)을 사용하여 범주형 특징 상호작용에서 \n효과적인 패턴을 자동으로 학습하고 \n사용자의 광고 클릭을 예측하는 두 가지 새로운 모델을 제안",
			"lineHeight": 1.2
		},
		{
			"id": "40HrDZzFRrM4nXpOFDuo3",
			"type": "arrow",
			"x": -787.3856670266474,
			"y": 1928.0072932347011,
			"width": 0.999908447265625,
			"height": 205,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"seed": 581881997,
			"version": 162,
			"versionNonce": 1864411885,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1705850060569,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					-0.999908447265625,
					205
				]
			],
			"lastCommittedPoint": null,
			"startBinding": {
				"elementId": "1U7X_641_ArMRhIPnkT8X",
				"focus": 0.01832437878805454,
				"gap": 1
			},
			"endBinding": null,
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"type": "rectangle",
			"version": 3091,
			"versionNonce": 1645286157,
			"isDeleted": false,
			"id": "9zQwxKuHoos68YXPBKpUH",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1072.3220489735581,
			"y": 2172.173975160157,
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
				}
			],
			"updated": 1705850130254,
			"link": null,
			"locked": false
		},
		{
			"id": "DReQyQrX",
			"type": "text",
			"x": -1051.022106956957,
			"y": 2205.6738988662114,
			"width": 372.371826171875,
			"height": 201.60000000000002,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": "nMSmPjcQW0NJVApyAAqTo",
			"roundness": null,
			"seed": 711431725,
			"version": 293,
			"versionNonce": 1341821869,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1705850060569,
			"link": null,
			"locked": false,
			"text": "DNN이 효율적으로 작동하도록 하기 위해  \n세가지 특징 변환 방법, \n\n인수분해 머신(FM), \n제한 볼츠만 머신(RBM), \n노이즈 제거 자동 인코더(DAE)를 활용",
			"rawText": "DNN이 효율적으로 작동하도록 하기 위해  \n세가지 특징 변환 방법, \n\n인수분해 머신(FM), \n제한 볼츠만 머신(RBM), \n노이즈 제거 자동 인코더(DAE)를 활용",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "left",
			"verticalAlign": "top",
			"baseline": 194,
			"containerId": null,
			"originalText": "DNN이 효율적으로 작동하도록 하기 위해  \n세가지 특징 변환 방법, \n\n인수분해 머신(FM), \n제한 볼츠만 머신(RBM), \n노이즈 제거 자동 인코더(DAE)를 활용",
			"lineHeight": 1.2
		},
		{
			"id": "nMSmPjcQW0NJVApyAAqTo",
			"type": "frame",
			"x": -1091.0551030864647,
			"y": 2156.7732255682904,
			"width": 619.6364524147727,
			"height": 610.909146395597,
			"angle": 0,
			"strokeColor": "#bbb",
			"backgroundColor": "transparent",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 236496845,
			"version": 98,
			"versionNonce": 829131171,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1705850060569,
			"link": null,
			"locked": false,
			"customData": {
				"frameColor": {
					"stroke": "#D4D4D4",
					"fill": "#ADADAD",
					"nameColor": "#949494"
				}
			},
			"name": null
		},
		{
			"id": "Fbrkk4-wvBR1HnRrBO1Vo",
			"type": "frame",
			"x": -1086.691422333624,
			"y": 1338.2278043147394,
			"width": 616.7271839488637,
			"height": 605.090886896307,
			"angle": 0,
			"strokeColor": "#bbb",
			"backgroundColor": "transparent",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 1134266883,
			"version": 91,
			"versionNonce": 338007565,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1705850060569,
			"link": null,
			"locked": false,
			"customData": {
				"frameColor": {
					"stroke": "#D4D4D4",
					"fill": "#ADADAD",
					"nameColor": "#949494"
				}
			},
			"name": null
		},
		{
			"id": "iXGTn-gR3FBR-dx6GrPq5",
			"type": "arrow",
			"x": -1075.1451952046343,
			"y": 2458.519369222271,
			"width": 1781.7142159598218,
			"height": 1321.1429704938614,
			"angle": 0,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"seed": 925056973,
			"version": 959,
			"versionNonce": 1179620611,
			"isDeleted": false,
			"boundElements": [
				{
					"type": "text",
					"id": "uPBL2LQM"
				}
			],
			"updated": 1705850160598,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					-1565.7142421177462,
					-140.85730416434126
				],
				[
					-1781.7142159598218,
					-1321.1429704938614
				]
			],
			"lastCommittedPoint": [
				-1727.9999651227681,
				-1323.4286499023438
			],
			"startBinding": {
				"elementId": "9zQwxKuHoos68YXPBKpUH",
				"focus": -0.08520013894419866,
				"gap": 2.82314623107618
			},
			"endBinding": {
				"elementId": "_NKlakUeYwbodt-tAHv0C",
				"focus": 0.21503930710013355,
				"gap": 11.515522548922945
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "uPBL2LQM",
			"type": "text",
			"x": -2931.6973737237477,
			"y": 2430.0621566106643,
			"width": 53.675994873046875,
			"height": 43.199999999999996,
			"angle": 0,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 1808203875,
			"version": 14,
			"versionNonce": 403266979,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1705850149960,
			"link": null,
			"locked": false,
			"text": "단점",
			"rawText": "단점",
			"fontSize": 36,
			"fontFamily": 4,
			"textAlign": "center",
			"verticalAlign": "middle",
			"baseline": 34,
			"containerId": "iXGTn-gR3FBR-dx6GrPq5",
			"originalText": "단점",
			"lineHeight": 1.2
		},
		{
			"id": "mguVuSrYmxjKTH4fsVyJO",
			"type": "image",
			"x": -2224.5632894937025,
			"y": 2248.365186421497,
			"width": 758,
			"height": 400,
			"angle": 0,
			"strokeColor": "transparent",
			"backgroundColor": "#a5d8ff",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": "0D2toMuhV6qy2w5Blvi6C",
			"roundness": null,
			"seed": 535392227,
			"version": 451,
			"versionNonce": 2007325869,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1705850244109,
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
			"id": "0D2toMuhV6qy2w5Blvi6C",
			"type": "frame",
			"x": -2273.1379272548957,
			"y": 2220.335192486262,
			"width": 852.2666015625,
			"height": 455.4666748046875,
			"angle": 0,
			"strokeColor": "#bbb",
			"backgroundColor": "transparent",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 379161827,
			"version": 418,
			"versionNonce": 79279085,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1705850244109,
			"link": null,
			"locked": false,
			"customData": {
				"frameColor": {
					"stroke": "#D4D4D4",
					"fill": "#ADADAD",
					"nameColor": "#949494"
				}
			},
			"name": null
		},
		{
			"id": "bvbIIENH",
			"type": "text",
			"x": -976.0220306630115,
			"y": 2293.6739293837895,
			"width": 8.399993896484375,
			"height": 33.6,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": "nMSmPjcQW0NJVApyAAqTo",
			"roundness": null,
			"seed": 181621773,
			"version": 5,
			"versionNonce": 1829160269,
			"isDeleted": true,
			"boundElements": null,
			"updated": 1705850060569,
			"link": null,
			"locked": false,
			"text": "",
			"rawText": "",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "left",
			"verticalAlign": "top",
			"baseline": 26,
			"containerId": null,
			"originalText": "",
			"lineHeight": 1.2
		},
		{
			"id": "iePHoBli",
			"type": "text",
			"x": -1038.5220306630115,
			"y": 2231.1739293837895,
			"width": 8.399993896484375,
			"height": 33.6,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": "nMSmPjcQW0NJVApyAAqTo",
			"roundness": null,
			"seed": 261390883,
			"version": 9,
			"versionNonce": 1605157379,
			"isDeleted": true,
			"boundElements": null,
			"updated": 1705850060569,
			"link": null,
			"locked": false,
			"text": "",
			"rawText": "",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "left",
			"verticalAlign": "top",
			"baseline": 26,
			"containerId": null,
			"originalText": "",
			"lineHeight": 1.2
		},
		{
			"id": "UOt5EU_bcC-K-15wO8TxP",
			"type": "arrow",
			"x": -1083.1449859412405,
			"y": 2453.947836019146,
			"width": 756.5715680803571,
			"height": 96.00010463169656,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": "nMSmPjcQW0NJVApyAAqTo",
			"roundness": {
				"type": 2
			},
			"seed": 282539725,
			"version": 263,
			"versionNonce": 662482797,
			"isDeleted": true,
			"boundElements": null,
			"updated": 1705850077020,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					-756.5715680803571,
					18.28578404017844
				],
				[
					-400,
					0
				],
				[
					-41.142926897321104,
					96.00010463169656
				]
			],
			"lastCommittedPoint": [
				-41.142926897321104,
				96.00010463169656
			],
			"startBinding": {
				"elementId": "9zQwxKuHoos68YXPBKpUH",
				"focus": 0.03914193624053362,
				"gap": 10.82293696768238
			},
			"endBinding": null,
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "pz2pmypUIxkpgKQl5KtON",
			"type": "arrow",
			"x": -1080.8593065327595,
			"y": 2463.0907280392357,
			"width": 681.1429268973216,
			"height": 68.57142857142844,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": "nMSmPjcQW0NJVApyAAqTo",
			"roundness": {
				"type": 2
			},
			"seed": 603590435,
			"version": 188,
			"versionNonce": 61857549,
			"isDeleted": true,
			"boundElements": null,
			"updated": 1705850099847,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					-681.1429268973216,
					11.428571428571104
				],
				[
					-333.7144252232142,
					-57.14285714285734
				]
			],
			"lastCommittedPoint": [
				-333.7144252232142,
				-57.14285714285734
			],
			"startBinding": {
				"elementId": "9zQwxKuHoos68YXPBKpUH",
				"focus": 0.0002479909215054793,
				"gap": 8.537257559201407
			},
			"endBinding": null,
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "059FJgQzfzcs1DC8FDvt9",
			"type": "image",
			"x": -1125.9824083658204,
			"y": 2402.2490593455163,
			"width": 766,
			"height": 405,
			"angle": 0,
			"strokeColor": "transparent",
			"backgroundColor": "#a5d8ff",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": "nMSmPjcQW0NJVApyAAqTo",
			"roundness": null,
			"seed": 1686348003,
			"version": 53,
			"versionNonce": 1529896259,
			"isDeleted": true,
			"boundElements": null,
			"updated": 1705850060569,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "64d0217ad7de5fdcbc482854d1705281564bf685",
			"scale": [
				1,
				1
			]
		},
		{
			"id": "Z-DRJB1xlIfwziD64B1g6",
			"type": "arrow",
			"x": -1250.0021985528474,
			"y": 2469.9479406508426,
			"width": 1124.571533203125,
			"height": 16.00010463169656,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "#a5d8ff",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"seed": 327120941,
			"version": 336,
			"versionNonce": 385742723,
			"isDeleted": true,
			"boundElements": null,
			"updated": 1705850087713,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					-1124.571533203125,
					-16.00010463169656
				]
			],
			"lastCommittedPoint": [
				-1124.571533203125,
				-16.00010463169656
			],
			"startBinding": null,
			"endBinding": null,
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "nxXQSkU2",
			"type": "text",
			"x": -2909.0593732354664,
			"y": 2434.862156610664,
			"width": 8.399993896484375,
			"height": 33.6,
			"angle": 0,
			"strokeColor": "#e03131",
			"backgroundColor": "#a5d8ff",
			"fillStyle": "cross-hatch",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 1304100045,
			"version": 3,
			"versionNonce": 201380003,
			"isDeleted": true,
			"boundElements": null,
			"updated": 1705850119038,
			"link": null,
			"locked": false,
			"text": "",
			"rawText": "",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "center",
			"verticalAlign": "middle",
			"baseline": 26,
			"containerId": "iXGTn-gR3FBR-dx6GrPq5",
			"originalText": "",
			"lineHeight": 1.2
		}
	],
	"appState": {
		"theme": "light",
		"viewBackgroundColor": "#ffffff",
		"currentItemStrokeColor": "#e03131",
		"currentItemBackgroundColor": "#ffc9c9",
		"currentItemFillStyle": "cross-hatch",
		"currentItemStrokeWidth": 4,
		"currentItemStrokeStyle": "solid",
		"currentItemRoughness": 0,
		"currentItemOpacity": 100,
		"currentItemFontFamily": 4,
		"currentItemFontSize": 36,
		"currentItemTextAlign": "left",
		"currentItemStartArrowhead": null,
		"currentItemEndArrowhead": "arrow",
		"scrollX": 5405.129964971018,
		"scrollY": 2986.5858461356647,
		"zoom": {
			"value": 0.15000000000000002
		},
		"currentItemRoundness": "round",
		"gridSize": null,
		"gridColor": {
			"Bold": "#C9C9C9FF",
			"Regular": "#EDEDEDFF"
		},
		"currentStrokeOptions": {
			"highlighter": false,
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