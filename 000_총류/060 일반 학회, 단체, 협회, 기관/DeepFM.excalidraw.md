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

문제 정의: ^gtDauUeq

일반적인 접근법 ^ARPfDggG

Related Studies ^q1MjBx4p

2010년에 발표된 FM(Factorization Machine)은 Latent
space로 각각의 특성들을 매핑하여 내적을 통해 Interaction
을 계산할 수 있는 방법입니다.
 ^vuHjbpWn

위의 식을 통해 order-2에서부터 order-n까지의 
Interaction을 내적을 통해 모두 모델링 할 수 있습니다.   ^jdj2uvvr

장점 ^zWORx80X

FM이 Linear complexity를 가지고 있다고 하지만
실제로는 높은 복잡도로 인하여 High-order가 아닌
order-2 모델링이 주로 사용됩니다. ^moCIA2oh

기저귀를 구매하는 사람은 맥주를 함께 구매한다(order-2)
와 같은 대부분의 Interaction들은 데이터 속에 숨겨짐.

(아버지들이 기저귀를 기저귀를 자주 구매하는 듯 한다)
위와 같은 Interaction들은 전문가조차 찾기 힘들다.
 ^ebK8nqVk

발전 ^xWE7M7SM

Bid? ^TTl5qHkx

유저가 아이템을 클릭할 때마다 받는 보상값 ^Ub2G9d7i

즉, 피쳐들간의 상호작용을 모델링하는 것이 목적 ^WmOy8sKw

대부분의 피쳐 상호작용은 데이터 속에 숨겨져 있고
이를 선험적(prior)으로 알기 어렵다. ^TJHlTldr


# Embedded files
1acd85ab268aa15908884e70b2120d6f3eafdc60: $$\times
$$
13c9ee52728b723a0340730c28d19618c8be616b: [[Pasted Image 20240118210956_301.png]]

%%
# Drawing
```json
{
	"type": "excalidraw",
	"version": 2,
	"source": "https://github.com/zsviczian/obsidian-excalidraw-plugin/releases/tag/2.0.17",
	"elements": [
		{
			"type": "rectangle",
			"version": 347,
			"versionNonce": 1151079565,
			"isDeleted": false,
			"id": "I0ZLWxhbtCMX1qgMrQ5_a",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -164.53326416015625,
			"y": -167.6721318562826,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
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
			"updated": 1705844897806,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 118,
			"versionNonce": 1917257411,
			"isDeleted": false,
			"id": "q4HgIucT",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -141.39990234375,
			"y": -148.31663665771484,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 102.5279541015625,
			"height": 43.199999999999996,
			"seed": 516418646,
			"groupIds": [],
			"frameId": "xypwCSRmvveY3TFu7EULd",
			"roundness": null,
			"boundElements": [],
			"updated": 1705844897806,
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
			"version": 767,
			"versionNonce": 2124675821,
			"isDeleted": false,
			"id": "tR4AqLuUuRqxb5eVH3get",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -140.16471556390132,
			"y": -91.23504911503827,
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
			"updated": 1705844897806,
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
			"version": 1524,
			"versionNonce": 702494307,
			"isDeleted": false,
			"id": "ZBnbuoHoKJLjN2pLtabZh",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 122.72600327511182,
			"y": -184.56341455686368,
			"strokeColor": "#000000",
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
			"updated": 1705844897806,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "I0ZLWxhbtCMX1qgMrQ5_a",
				"focus": 0.014997662160467589,
				"gap": 16.891282700581087
			},
			"endBinding": {
				"elementId": "MAy6wUQl",
				"focus": 0.09419951504218285,
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
			"version": 63,
			"versionNonce": 1335891277,
			"isDeleted": false,
			"id": "gtDauUeq",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 13.474795209595037,
			"y": -319.3891239754552,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 90.38395690917969,
			"height": 33.6,
			"seed": 897572704,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1705844897806,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "문제 정의:",
			"rawText": "문제 정의:",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "ZBnbuoHoKJLjN2pLtabZh",
			"originalText": "문제 정의:",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "rectangle",
			"version": 1002,
			"versionNonce": 168849923,
			"isDeleted": false,
			"id": "MAy6wUQl",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -148.87184912360442,
			"y": -1006.1512537184774,
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
			"updated": 1705844897806,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 404,
			"versionNonce": 854188973,
			"isDeleted": false,
			"id": "GK3BKitr",
			"fillStyle": "hachure",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -116.51626169413419,
			"y": -968.4178281542415,
			"strokeColor": "#e03131",
			"backgroundColor": "transparent",
			"width": 56.37599182128906,
			"height": 43.199999999999996,
			"seed": 257762976,
			"groupIds": [],
			"frameId": "DZh1jPdZmLUojklmLsu6x",
			"roundness": null,
			"boundElements": [],
			"updated": 1705844897806,
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
			"version": 661,
			"versionNonce": 869874083,
			"isDeleted": false,
			"id": "woPkp4sQ",
			"fillStyle": "hachure",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -111.1827384736481,
			"y": -880.6845734884434,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 466.78778076171875,
			"height": 201.60000000000002,
			"seed": 1065861792,
			"groupIds": [],
			"frameId": "DZh1jPdZmLUojklmLsu6x",
			"roundness": null,
			"boundElements": [],
			"updated": 1705844897807,
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
			"id": "TTl5qHkx",
			"type": "text",
			"x": -110.03113523981426,
			"y": -668.7065559540721,
			"width": 32.89997863769531,
			"height": 33.6,
			"angle": 0,
			"strokeColor": "#e03131",
			"backgroundColor": "transparent",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": "DZh1jPdZmLUojklmLsu6x",
			"roundness": null,
			"seed": 19892877,
			"version": 64,
			"versionNonce": 1071422573,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1705844897807,
			"link": null,
			"locked": false,
			"text": "Bid?",
			"rawText": "Bid?",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "left",
			"verticalAlign": "top",
			"baseline": 26,
			"containerId": null,
			"originalText": "Bid?",
			"lineHeight": 1.2
		},
		{
			"id": "Ub2G9d7i",
			"type": "text",
			"x": -107.36446857314752,
			"y": -615.1065071259471,
			"width": 292.119873046875,
			"height": 24,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": "DZh1jPdZmLUojklmLsu6x",
			"roundness": null,
			"seed": 1807805741,
			"version": 169,
			"versionNonce": 790326499,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1705844897807,
			"link": null,
			"locked": false,
			"text": "유저가 아이템을 클릭할 때마다 받는 보상값",
			"rawText": "유저가 아이템을 클릭할 때마다 받는 보상값",
			"fontSize": 20,
			"fontFamily": 4,
			"textAlign": "left",
			"verticalAlign": "top",
			"baseline": 18,
			"containerId": null,
			"originalText": "유저가 아이템을 클릭할 때마다 받는 보상값",
			"lineHeight": 1.2
		},
		{
			"type": "frame",
			"version": 569,
			"versionNonce": 1950910157,
			"isDeleted": false,
			"id": "DZh1jPdZmLUojklmLsu6x",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -180.16926196414602,
			"y": -1049.8117731503357,
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
			"updated": 1705844897807,
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
			"version": 181,
			"versionNonce": 931256451,
			"isDeleted": false,
			"id": "oSXzoabA",
			"fillStyle": "hachure",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -135.5023918469584,
			"y": 232.45497082752877,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 455.4197692871094,
			"height": 67.2,
			"seed": 1210613408,
			"groupIds": [],
			"frameId": "xypwCSRmvveY3TFu7EULd",
			"roundness": null,
			"boundElements": [],
			"updated": 1705844897807,
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
			"version": 1173,
			"versionNonce": 1552426285,
			"isDeleted": false,
			"id": "NSo4GmfTI0HwEEMwN-uQl",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -165.52666441886913,
			"y": -1884.017841709462,
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
			"updated": 1705844897807,
			"link": null,
			"locked": false
		},
		{
			"type": "arrow",
			"version": 1113,
			"versionNonce": 727306275,
			"isDeleted": false,
			"id": "I-9PL8fW6hvKsli_bTsN-",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 128.5497425985784,
			"y": -1024.5510787596834,
			"strokeColor": "#000000",
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
			"updated": 1705844897807,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "MAy6wUQl",
				"focus": -0.026113704030584484,
				"gap": 18.399825041205986
			},
			"endBinding": {
				"elementId": "NSo4GmfTI0HwEEMwN-uQl",
				"focus": 0.006084929340291797,
				"gap": 9.308979381214385
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
			"version": 42,
			"versionNonce": 738523021,
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
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 105.4439697265625,
			"height": 43.199999999999996,
			"seed": 804024160,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1705844897807,
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
			"version": 282,
			"versionNonce": 1016189891,
			"isDeleted": false,
			"id": "GUTZRWIU",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -137.12667052238476,
			"y": -1843.6176463969618,
			"strokeColor": "#e03131",
			"backgroundColor": "transparent",
			"width": 215.8918914794922,
			"height": 43.199999999999996,
			"seed": 2120939360,
			"groupIds": [],
			"frameId": "WzpDNumaP0gcIe9j0-SQy",
			"roundness": null,
			"boundElements": [],
			"updated": 1705844897807,
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
			"version": 667,
			"versionNonce": 1828224493,
			"isDeleted": false,
			"id": "phjZ7ZH6",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -136.32662169425976,
			"y": -1754.4174266703994,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 502.7397766113281,
			"height": 336,
			"seed": 1613364896,
			"groupIds": [],
			"frameId": "WzpDNumaP0gcIe9j0-SQy",
			"roundness": null,
			"boundElements": [],
			"updated": 1705844897807,
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
			"version": 325,
			"versionNonce": 644626509,
			"isDeleted": false,
			"id": "WzpDNumaP0gcIe9j0-SQy",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -191.12667052238476,
			"y": -1910.4176525004775,
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
			"updated": 1705844897807,
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
			"version": 1113,
			"versionNonce": 1875640067,
			"isDeleted": false,
			"id": "N1Ri-QHvsohZgJLD2LkZf",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -167.05137489208295,
			"y": 54.49553429820948,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 398.454717589769,
			"height": 27.78296609838236,
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
			"updated": 1705844897807,
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
					-398.454717589769,
					27.78296609838236
				]
			]
		},
		{
			"type": "text",
			"version": 49,
			"versionNonce": 1111074477,
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
			"updated": 1705844897807,
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
			"version": 1113,
			"versionNonce": 1419454115,
			"isDeleted": false,
			"id": "o5lVJX8glv51z8dSGrXDp",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1154.3061107923986,
			"y": -151.04695677612267,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
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
				}
			],
			"updated": 1705844897807,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 341,
			"versionNonce": 856312077,
			"isDeleted": false,
			"id": "q1MjBx4p",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1121.869728845488,
			"y": -97.11968404884988,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 208.97988891601562,
			"height": 43.199999999999996,
			"seed": 1069977440,
			"groupIds": [],
			"frameId": "HEJ25XmHBNYjcTvpBbY1J",
			"roundness": null,
			"boundElements": [],
			"updated": 1705844897807,
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
			"version": 512,
			"versionNonce": 275012163,
			"isDeleted": false,
			"id": "vuHjbpWn",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1125.1425448966245,
			"y": -16.683309315185284,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 539.1677856445312,
			"height": 134.4,
			"seed": 108176224,
			"groupIds": [],
			"frameId": "HEJ25XmHBNYjcTvpBbY1J",
			"roundness": null,
			"boundElements": [],
			"updated": 1705844897807,
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
			"version": 360,
			"versionNonce": 1515691885,
			"isDeleted": false,
			"id": "IlfqHsXtKMtMaJJpFPVpd",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1124.5062034548632,
			"y": 104.40753319191708,
			"strokeColor": "transparent",
			"backgroundColor": "transparent",
			"width": 518,
			"height": 112,
			"seed": 929116000,
			"groupIds": [],
			"frameId": "HEJ25XmHBNYjcTvpBbY1J",
			"roundness": null,
			"boundElements": [],
			"updated": 1705844897807,
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
			"version": 484,
			"versionNonce": 1342577123,
			"isDeleted": false,
			"id": "jdj2uvvr",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1129.8697732346923,
			"y": 252.7711473609511,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 513.4078369140625,
			"height": 67.2,
			"seed": 2008453984,
			"groupIds": [],
			"frameId": "HEJ25XmHBNYjcTvpBbY1J",
			"roundness": null,
			"boundElements": [],
			"updated": 1705844897807,
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
			"version": 440,
			"versionNonce": 778774989,
			"isDeleted": false,
			"id": "HEJ25XmHBNYjcTvpBbY1J",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1177.14250050742,
			"y": -171.2287638606398,
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
				}
			],
			"updated": 1705844897807,
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
			"version": 1823,
			"versionNonce": 546235779,
			"isDeleted": false,
			"id": "7eeGwcY2N4JxWeYg35SW9",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -173.45815676481948,
			"y": -2709.228944885364,
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
			"updated": 1705844897807,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 1791,
			"versionNonce": 543057965,
			"isDeleted": false,
			"id": "qi0dYaEIknVYnd1rP-eWZ",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1145.021429090613,
			"y": 751.8251106318584,
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
			"boundElements": [],
			"updated": 1705844897807,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 694,
			"versionNonce": 1765621027,
			"isDeleted": false,
			"id": "moCIA2oh",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1118.008954743735,
			"y": 808.5385109843486,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 463.4837646484375,
			"height": 100.80000000000001,
			"seed": 203196256,
			"groupIds": [],
			"frameId": "RS4ehBEVEp216OCwhPj18",
			"roundness": null,
			"boundElements": [],
			"updated": 1705844897807,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "FM이 Linear complexity를 가지고 있다고 하지만\n실제로는 높은 복잡도로 인하여 High-order가 아닌\norder-2 모델링이 주로 사용됩니다.",
			"rawText": "FM이 Linear complexity를 가지고 있다고 하지만\n실제로는 높은 복잡도로 인하여 High-order가 아닌\norder-2 모델링이 주로 사용됩니다.",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "FM이 Linear complexity를 가지고 있다고 하지만\n실제로는 높은 복잡도로 인하여 High-order가 아닌\norder-2 모델링이 주로 사용됩니다.",
			"lineHeight": 1.2,
			"baseline": 94
		},
		{
			"type": "frame",
			"version": 700,
			"versionNonce": 1109056141,
			"isDeleted": false,
			"id": "RS4ehBEVEp216OCwhPj18",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -1178.0089547437344,
			"y": 727.2054777405359,
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
			"updated": 1705844897807,
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
			"version": 1779,
			"versionNonce": 629121219,
			"isDeleted": false,
			"id": "-FkThbfgCU29iAl7HPxrv",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -855.2422751561862,
			"y": 481.84458274348157,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 2.301583797649755,
			"height": 232.02756166372097,
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
			"updated": 1705844897807,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "HEJ25XmHBNYjcTvpBbY1J",
				"gap": 15.982393124007729,
				"focus": -0.010378460790382417
			},
			"endBinding": {
				"elementId": "RS4ehBEVEp216OCwhPj18",
				"gap": 13.333333333333485,
				"focus": 0.030608593073469265
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
					2.301583797649755,
					232.02756166372097
				]
			]
		},
		{
			"type": "text",
			"version": 42,
			"versionNonce": 744095981,
			"isDeleted": false,
			"id": "zWORx80X",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 1526.31931267163,
			"y": 686.0718420472365,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 43.343994140625,
			"height": 33.6,
			"seed": 31626912,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1705844897807,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "장점",
			"rawText": "장점",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "-FkThbfgCU29iAl7HPxrv",
			"originalText": "장점",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "text",
			"version": 374,
			"versionNonce": 1593086051,
			"isDeleted": false,
			"id": "ebK8nqVk",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -143.55053796978893,
			"y": -2666.071486200023,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 526.2317504882812,
			"height": 201.60000000000002,
			"seed": 1078522720,
			"groupIds": [],
			"frameId": "45xFR6gTILwISZ2FOkroU",
			"roundness": null,
			"boundElements": [],
			"updated": 1705844897807,
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
			"version": 85,
			"versionNonce": 614816589,
			"isDeleted": false,
			"id": "PH0Mu60CGHYivYu0S6MVs",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 91.87819040632746,
			"y": -2564.0716693054933,
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
			"updated": 1705844897807,
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
			"id": "WmOy8sKw",
			"type": "text",
			"x": -134.29732990127195,
			"y": -1394.8396858368885,
			"width": 417.39581298828125,
			"height": 33.6,
			"angle": 0,
			"strokeColor": "#e03131",
			"backgroundColor": "transparent",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": "WzpDNumaP0gcIe9j0-SQy",
			"roundness": null,
			"seed": 851176077,
			"version": 186,
			"versionNonce": 1735035907,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1705844897807,
			"link": null,
			"locked": false,
			"text": "즉, 피쳐들간의 상호작용을 모델링하는 것이 목적",
			"rawText": "즉, 피쳐들간의 상호작용을 모델링하는 것이 목적",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "left",
			"verticalAlign": "top",
			"baseline": 26,
			"containerId": null,
			"originalText": "즉, 피쳐들간의 상호작용을 모델링하는 것이 목적",
			"lineHeight": 1.2
		},
		{
			"id": "TJHlTldr",
			"type": "text",
			"x": -143.09729734918852,
			"y": -2449.773043584283,
			"width": 441.58782958984375,
			"height": 67.2,
			"angle": 0,
			"strokeColor": "#e03131",
			"backgroundColor": "transparent",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": "45xFR6gTILwISZ2FOkroU",
			"roundness": null,
			"seed": 629761315,
			"version": 116,
			"versionNonce": 55994797,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1705844897807,
			"link": null,
			"locked": false,
			"text": "대부분의 피쳐 상호작용은 데이터 속에 숨겨져 있고\n이를 선험적(prior)으로 알기 어렵다.",
			"rawText": "대부분의 피쳐 상호작용은 데이터 속에 숨겨져 있고\n이를 선험적(prior)으로 알기 어렵다.",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "left",
			"verticalAlign": "top",
			"baseline": 60,
			"containerId": null,
			"originalText": "대부분의 피쳐 상호작용은 데이터 속에 숨겨져 있고\n이를 선험적(prior)으로 알기 어렵다.",
			"lineHeight": 1.2
		},
		{
			"type": "frame",
			"version": 296,
			"versionNonce": 1390416803,
			"isDeleted": false,
			"id": "45xFR6gTILwISZ2FOkroU",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -202.4940122277551,
			"y": -2731.582462313693,
			"strokeColor": "#bbb",
			"backgroundColor": "transparent",
			"width": 633.3333333333335,
			"height": 626.6667175292969,
			"seed": 1434321568,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1705844897807,
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
			"version": 910,
			"versionNonce": 1503046669,
			"isDeleted": false,
			"id": "-2j90jjP8ljRqBCwnqMQD",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": 118.8545044692716,
			"y": -1918.4442316935451,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 1.0796819866448288,
			"height": 216.4155243955497,
			"seed": 2116281184,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1705844897807,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "WzpDNumaP0gcIe9j0-SQy",
				"focus": -0.03053705795282291,
				"gap": 8.026579193067391
			},
			"endBinding": {
				"elementId": "7eeGwcY2N4JxWeYg35SW9",
				"focus": -0.0034259653060493217,
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
			"type": "frame",
			"version": 167,
			"versionNonce": 830711619,
			"isDeleted": false,
			"id": "xypwCSRmvveY3TFu7EULd",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -183.79747317705142,
			"y": -187.0923495224929,
			"strokeColor": "#bbb",
			"backgroundColor": "transparent",
			"width": 629.333292643229,
			"height": 640,
			"seed": 1100530336,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1705844897807,
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
			"version": 235,
			"versionNonce": 1465885293,
			"isDeleted": false,
			"id": "aXSV0EcqZGTyMsoC8MfDd",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -567.3556026425285,
			"y": 182.7811774022531,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 392.72727272727275,
			"height": 49.45456764914775,
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
			"updated": 1705844897807,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "o5lVJX8glv51z8dSGrXDp",
				"focus": 0.03189913123947394,
				"gap": 9.350471528776325
			},
			"endBinding": {
				"elementId": "I0ZLWxhbtCMX1qgMrQ5_a",
				"focus": -0.4701049851076974,
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
					392.72727272727275,
					49.45456764914775
				]
			]
		},
		{
			"type": "text",
			"version": 18,
			"versionNonce": 162776803,
			"isDeleted": false,
			"id": "xWE7M7SM",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"angle": 0,
			"x": -391.0259628609234,
			"y": 190.70846122682696,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 40.0679931640625,
			"height": 33.6,
			"seed": 429070176,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1705844897807,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "발전",
			"rawText": "발전",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "aXSV0EcqZGTyMsoC8MfDd",
			"originalText": "발전",
			"lineHeight": 1.2,
			"baseline": 26
		},
		{
			"type": "image",
			"version": 32,
			"versionNonce": 1903873229,
			"isDeleted": false,
			"id": "hsfrpMP9",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 132.33548259872748,
			"y": -697.1398343557648,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 23,
			"height": 9,
			"seed": 3470,
			"groupIds": [],
			"frameId": "DZh1jPdZmLUojklmLsu6x",
			"roundness": null,
			"boundElements": [],
			"updated": 1705844897807,
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
			"id": "Vwibv2NH",
			"type": "text",
			"x": 143.83548259872737,
			"y": -693.2398404592805,
			"width": 8.399993896484375,
			"height": 33.6,
			"angle": 0,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": "DZh1jPdZmLUojklmLsu6x",
			"roundness": null,
			"seed": 73767171,
			"version": 8,
			"versionNonce": 2091574797,
			"isDeleted": true,
			"boundElements": null,
			"updated": 1705844897807,
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
			"id": "oiZYK3DJ",
			"type": "text",
			"x": -98.83118406793926,
			"y": -573.2398404592805,
			"width": 8.399993896484375,
			"height": 33.6,
			"angle": 0,
			"strokeColor": "#e03131",
			"backgroundColor": "transparent",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": "DZh1jPdZmLUojklmLsu6x",
			"roundness": null,
			"seed": 839000099,
			"version": 6,
			"versionNonce": 610798915,
			"isDeleted": true,
			"boundElements": null,
			"updated": 1705844897807,
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
			"id": "7I9jdLwj",
			"type": "text",
			"x": -18.83118406793926,
			"y": -1769.23984045928,
			"width": 6,
			"height": 24,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": "WzpDNumaP0gcIe9j0-SQy",
			"roundness": null,
			"seed": 948436291,
			"version": 6,
			"versionNonce": 1531470691,
			"isDeleted": true,
			"boundElements": null,
			"updated": 1705844897807,
			"link": null,
			"locked": false,
			"text": "",
			"rawText": "",
			"fontSize": 20,
			"fontFamily": 4,
			"textAlign": "left",
			"verticalAlign": "top",
			"baseline": 18,
			"containerId": null,
			"originalText": "",
			"lineHeight": 1.2
		}
	],
	"appState": {
		"theme": "light",
		"viewBackgroundColor": "#ffffff",
		"currentItemStrokeColor": "#e03131",
		"currentItemBackgroundColor": "transparent",
		"currentItemFillStyle": "hachure",
		"currentItemStrokeWidth": 4,
		"currentItemStrokeStyle": "solid",
		"currentItemRoughness": 0,
		"currentItemOpacity": 100,
		"currentItemFontFamily": 4,
		"currentItemFontSize": 28,
		"currentItemTextAlign": "left",
		"currentItemStartArrowhead": null,
		"currentItemEndArrowhead": "arrow",
		"scrollX": 2768.430630682522,
		"scrollY": 2696.039716354466,
		"zoom": {
			"value": 0.25
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