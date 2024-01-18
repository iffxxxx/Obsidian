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

추천시스템에 있어 CTR은 매우 중요한 요소 중 하나 ^woPkp4sQ

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


# Embedded files
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
			"version": 341,
			"versionNonce": 1231955616,
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
			"updated": 1705601317467,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 112,
			"versionNonce": 1759843168,
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
			"updated": 1705601317467,
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
			"version": 760,
			"versionNonce": 1378898592,
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
			"updated": 1705601317467,
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
			"version": 1518,
			"versionNonce": 1705748320,
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
			"updated": 1705601317467,
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
			"version": 57,
			"versionNonce": 1506606752,
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
			"updated": 1705601317467,
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
			"version": 995,
			"versionNonce": 880786272,
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
			"updated": 1705601317467,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 395,
			"versionNonce": 552872608,
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
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 56.37599182128906,
			"height": 43.199999999999996,
			"seed": 257762976,
			"groupIds": [],
			"frameId": "DZh1jPdZmLUojklmLsu6x",
			"roundness": null,
			"boundElements": [],
			"updated": 1705601317467,
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
			"version": 571,
			"versionNonce": 934367072,
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
			"height": 134.4,
			"seed": 1065861792,
			"groupIds": [],
			"frameId": "DZh1jPdZmLUojklmLsu6x",
			"roundness": null,
			"boundElements": [],
			"updated": 1705601317467,
			"link": null,
			"locked": false,
			"fontSize": 28,
			"fontFamily": 4,
			"text": "CTR이란 (Clikc-through rate)로 추천된 아이템을\n유저가 클릭할 확률\n\n추천시스템에 있어 CTR은 매우 중요한 요소 중 하나",
			"rawText": "CTR이란 (Clikc-through rate)로 추천된 아이템을\n유저가 클릭할 확률\n\n추천시스템에 있어 CTR은 매우 중요한 요소 중 하나",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "CTR이란 (Clikc-through rate)로 추천된 아이템을\n유저가 클릭할 확률\n\n추천시스템에 있어 CTR은 매우 중요한 요소 중 하나",
			"lineHeight": 1.2,
			"baseline": 127
		},
		{
			"type": "frame",
			"version": 563,
			"versionNonce": 1381357216,
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
			"updated": 1705601317467,
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
			"version": 175,
			"versionNonce": 126903136,
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
			"updated": 1705601317467,
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
			"version": 1167,
			"versionNonce": 1117913760,
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
			"updated": 1705601317467,
			"link": null,
			"locked": false
		},
		{
			"type": "arrow",
			"version": 1107,
			"versionNonce": 846002016,
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
			"updated": 1705601317467,
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
			"version": 36,
			"versionNonce": 814263968,
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
			"updated": 1705601317467,
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
			"version": 275,
			"versionNonce": 2090273632,
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
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"width": 215.8918914794922,
			"height": 43.199999999999996,
			"seed": 2120939360,
			"groupIds": [],
			"frameId": "WzpDNumaP0gcIe9j0-SQy",
			"roundness": null,
			"boundElements": [],
			"updated": 1705601317467,
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
			"version": 661,
			"versionNonce": 79288992,
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
			"updated": 1705601317467,
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
			"version": 319,
			"versionNonce": 236172128,
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
			"updated": 1705601317467,
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
			"version": 874,
			"versionNonce": 1421587104,
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
			"updated": 1705601317467,
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
			"version": 43,
			"versionNonce": 738608992,
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
			"updated": 1705601317467,
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
			"version": 1107,
			"versionNonce": 871128736,
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
			"updated": 1705601317468,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 335,
			"versionNonce": 377903968,
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
			"updated": 1705601317468,
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
			"version": 504,
			"versionNonce": 1076333216,
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
			"updated": 1705601317468,
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
			"version": 354,
			"versionNonce": 1608773472,
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
			"updated": 1705601317468,
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
			"version": 478,
			"versionNonce": 1948071584,
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
			"updated": 1705601317468,
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
			"version": 434,
			"versionNonce": 1349452640,
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
			"updated": 1705601317468,
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
			"version": 1817,
			"versionNonce": 1954374304,
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
			"updated": 1705601317468,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 1785,
			"versionNonce": 645371744,
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
			"updated": 1705601317468,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 688,
			"versionNonce": 1341656736,
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
			"updated": 1705601317468,
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
			"version": 694,
			"versionNonce": 1447930720,
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
			"updated": 1705601317468,
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
			"version": 1773,
			"versionNonce": 1060977312,
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
			"updated": 1705601317468,
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
			"version": 36,
			"versionNonce": 1245790048,
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
			"updated": 1705601317468,
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
			"id": "ebK8nqVk",
			"type": "text",
			"x": -143.55053796978893,
			"y": -2666.071486200023,
			"width": 526.2317504882812,
			"height": 201.60000000000002,
			"angle": 0,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": "45xFR6gTILwISZ2FOkroU",
			"roundness": null,
			"seed": 1078522720,
			"version": 368,
			"versionNonce": 1694295712,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1705601317468,
			"link": null,
			"locked": false,
			"text": "기저귀를 구매하는 사람은 맥주를 함께 구매한다(order-2)\n와 같은 대부분의 Interaction들은 데이터 속에 숨겨짐.\n\n(아버지들이 기저귀를 기저귀를 자주 구매하는 듯 한다)\n위와 같은 Interaction들은 전문가조차 찾기 힘들다.\n",
			"rawText": "기저귀를 구매하는 사람은 맥주를 함께 구매한다(order-2)\n와 같은 대부분의 Interaction들은 데이터 속에 숨겨짐.\n\n(아버지들이 기저귀를 기저귀를 자주 구매하는 듯 한다)\n위와 같은 Interaction들은 전문가조차 찾기 힘들다.\n",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "left",
			"verticalAlign": "top",
			"baseline": 194,
			"containerId": null,
			"originalText": "기저귀를 구매하는 사람은 맥주를 함께 구매한다(order-2)\n와 같은 대부분의 Interaction들은 데이터 속에 숨겨짐.\n\n(아버지들이 기저귀를 기저귀를 자주 구매하는 듯 한다)\n위와 같은 Interaction들은 전문가조차 찾기 힘들다.\n",
			"lineHeight": 1.2
		},
		{
			"id": "PH0Mu60CGHYivYu0S6MVs",
			"type": "arrow",
			"x": 91.87819040632746,
			"y": -2564.0716693054933,
			"width": 0,
			"height": 25.142909458705162,
			"angle": 0,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": "45xFR6gTILwISZ2FOkroU",
			"roundness": {
				"type": 2
			},
			"seed": 1238132576,
			"version": 79,
			"versionNonce": 581063520,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1705601317468,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0,
					-25.142909458705162
				]
			],
			"lastCommittedPoint": null,
			"startBinding": null,
			"endBinding": null,
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"type": "frame",
			"version": 290,
			"versionNonce": 233247392,
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
			"updated": 1705601317468,
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
			"version": 904,
			"versionNonce": 1975576416,
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
			"updated": 1705601317468,
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
			"id": "xypwCSRmvveY3TFu7EULd",
			"type": "frame",
			"x": -183.79747317705142,
			"y": -187.0923495224929,
			"width": 629.333292643229,
			"height": 640,
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
			"seed": 1100530336,
			"version": 161,
			"versionNonce": 1890303648,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1705601317468,
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
			"id": "aXSV0EcqZGTyMsoC8MfDd",
			"type": "arrow",
			"x": -567.3556026425285,
			"y": 182.7811774022531,
			"width": 392.72727272727275,
			"height": 49.45456764914775,
			"angle": 0,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"seed": 660233888,
			"version": 229,
			"versionNonce": 1845160608,
			"isDeleted": false,
			"boundElements": [
				{
					"type": "text",
					"id": "xWE7M7SM"
				}
			],
			"updated": 1705601317468,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					392.72727272727275,
					49.45456764914775
				]
			],
			"lastCommittedPoint": null,
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
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "xWE7M7SM",
			"type": "text",
			"x": -391.0259628609234,
			"y": 190.70846122682696,
			"width": 40.0679931640625,
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
			"frameId": null,
			"roundness": null,
			"seed": 429070176,
			"version": 12,
			"versionNonce": 863407968,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1705601317468,
			"link": null,
			"locked": false,
			"text": "발전",
			"rawText": "발전",
			"fontSize": 28,
			"fontFamily": 4,
			"textAlign": "center",
			"verticalAlign": "middle",
			"baseline": 26,
			"containerId": "aXSV0EcqZGTyMsoC8MfDd",
			"originalText": "발전",
			"lineHeight": 1.2
		},
		{
			"id": "he3drCvW",
			"type": "text",
			"x": 90.55283180496826,
			"y": -1785.4741026265556,
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
			"frameId": "WzpDNumaP0gcIe9j0-SQy",
			"roundness": null,
			"seed": 1127200608,
			"version": 8,
			"versionNonce": 543072096,
			"isDeleted": true,
			"boundElements": null,
			"updated": 1705601317467,
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
			"id": "Jg0YdGmR",
			"type": "text",
			"x": 60.552831804968264,
			"y": -1782.616959769413,
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
			"frameId": "WzpDNumaP0gcIe9j0-SQy",
			"roundness": null,
			"seed": 1701381984,
			"version": 16,
			"versionNonce": 300254880,
			"isDeleted": true,
			"boundElements": null,
			"updated": 1705601317467,
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
			"id": "FZOVEHwnp5m2Mas5N5p8_",
			"type": "arrow",
			"x": -557.1738288499148,
			"y": 162.41751884401447,
			"width": 362.1818403764205,
			"height": 7.272727272727252,
			"angle": 0,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"fillStyle": "hachure",
			"strokeWidth": 4,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": "HEJ25XmHBNYjcTvpBbY1J",
			"roundness": {
				"type": 2
			},
			"seed": 609411936,
			"version": 86,
			"versionNonce": 267189088,
			"isDeleted": true,
			"boundElements": null,
			"updated": 1705601317468,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					362.1818403764205,
					7.272727272727252
				]
			],
			"lastCommittedPoint": null,
			"startBinding": {
				"elementId": "o5lVJX8glv51z8dSGrXDp",
				"focus": 0.07290309677536565,
				"gap": 19.532245321390064
			},
			"endBinding": {
				"elementId": "xypwCSRmvveY3TFu7EULd",
				"focus": -0.1327720550794567,
				"gap": 11.194515296442887
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "ct1PYQzTUAWhxQ1y34FSm",
			"type": "freedraw",
			"x": -55.4598546527252,
			"y": 242.43812283312127,
			"width": 251.99991861979152,
			"height": 3.9999898274739962,
			"angle": 0,
			"strokeColor": "#FFC47C",
			"backgroundColor": "#FFC47C",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": null,
			"opacity": 100,
			"groupIds": [],
			"frameId": "xypwCSRmvveY3TFu7EULd",
			"roundness": null,
			"seed": 1806280352,
			"version": 34,
			"versionNonce": 1764868768,
			"isDeleted": true,
			"boundElements": null,
			"updated": 1705601309949,
			"link": null,
			"locked": false,
			"customData": {
				"strokeOptions": {
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
				}
			},
			"points": [
				[
					0,
					0
				],
				[
					1.3332112630207575,
					0
				],
				[
					6.666666666666515,
					1.33331298828125
				],
				[
					10.666707356770758,
					1.33331298828125
				],
				[
					15.999959309895758,
					2.6666768391927462
				],
				[
					22.6666259765625,
					3.9999898274739962
				],
				[
					34.666544596354015,
					3.9999898274739962
				],
				[
					37.3333740234375,
					3.9999898274739962
				],
				[
					44.000040690104015,
					3.9999898274739962
				],
				[
					53.33333333333326,
					3.9999898274739962
				],
				[
					62.6666259765625,
					3.9999898274739962
				],
				[
					64.00004069010402,
					3.9999898274739962
				],
				[
					107.9998779296875,
					2.6666768391927462
				],
				[
					118.66658528645826,
					2.6666768391927462
				],
				[
					131.99991861979152,
					2.6666768391927462
				],
				[
					137.3333740234375,
					2.6666768391927462
				],
				[
					169.33329264322902,
					1.33331298828125
				],
				[
					191.99991861979152,
					1.33331298828125
				],
				[
					200,
					1.33331298828125
				],
				[
					220,
					1.33331298828125
				],
				[
					237.3333740234375,
					1.33331298828125
				],
				[
					242.6666259765625,
					1.33331298828125
				],
				[
					244.00004069010402,
					1.33331298828125
				],
				[
					245.333251953125,
					1.33331298828125
				],
				[
					246.66666666666652,
					1.33331298828125
				],
				[
					247.9998779296875,
					1.33331298828125
				],
				[
					249.33329264322902,
					1.33331298828125
				],
				[
					249.33329264322902,
					2.6666768391927462
				],
				[
					250.66670735677076,
					2.6666768391927462
				],
				[
					250.66670735677076,
					3.9999898274739962
				],
				[
					251.99991861979152,
					3.9999898274739962
				],
				[
					251.99991861979152,
					3.9999898274739962
				]
			],
			"pressures": [
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				0
			],
			"simulatePressure": false,
			"lastCommittedPoint": [
				251.99991861979152,
				3.9999898274739962
			]
		},
		{
			"id": "rVJZaoSAEBdnpfoYOXD72",
			"type": "freedraw",
			"x": -491.45991568788156,
			"y": 546.4381126605953,
			"width": 338.66668701171886,
			"height": 5.333251953125,
			"angle": 0,
			"strokeColor": "#FFC47C",
			"backgroundColor": "#FFC47C",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": null,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 1320184480,
			"version": 17,
			"versionNonce": 1931713184,
			"isDeleted": true,
			"boundElements": null,
			"updated": 1705601305088,
			"link": null,
			"locked": false,
			"customData": {
				"strokeOptions": {
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
				}
			},
			"points": [
				[
					0,
					0
				],
				[
					1.33331298828125,
					0
				],
				[
					4.000040690104129,
					0
				],
				[
					7.999979654947879,
					-1.33331298828125
				],
				[
					21.33331298828125,
					-2.6666259765625
				],
				[
					45.33335367838538,
					-3.99993896484375
				],
				[
					81.33331298828136,
					-3.99993896484375
				],
				[
					92.00002034505212,
					-3.99993896484375
				],
				[
					126.66666666666663,
					-3.99993896484375
				],
				[
					165.33335367838538,
					-1.33331298828125
				],
				[
					205.33335367838538,
					0
				],
				[
					314.6666463216146,
					1.33331298828125
				],
				[
					337.3332722981771,
					0
				],
				[
					338.66668701171886,
					0
				],
				[
					338.66668701171886,
					0
				]
			],
			"pressures": [
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				0
			],
			"simulatePressure": false,
			"lastCommittedPoint": [
				338.66668701171886,
				0
			]
		},
		{
			"id": "7kB-thnlFeoI4UirAKrdr",
			"type": "freedraw",
			"x": -395.4599563779857,
			"y": 522.4381736957515,
			"width": 258.66668701171875,
			"height": 78.66658528645837,
			"angle": 0,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"fillStyle": "hachure",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 219629216,
			"version": 52,
			"versionNonce": 1283586720,
			"isDeleted": true,
			"boundElements": null,
			"updated": 1705601307425,
			"link": null,
			"locked": false,
			"customData": {
				"strokeOptions": {
					"highlighter": false,
					"constantPressure": false,
					"hasOutline": false,
					"outlineWidth": 0,
					"options": {
						"thinning": 0.6,
						"smoothing": 0.5,
						"streamline": 0.5,
						"easing": "easeOutSine",
						"start": {
							"cap": true,
							"taper": 0,
							"easing": "linear"
						},
						"end": {
							"cap": true,
							"taper": 0,
							"easing": "linear"
						}
					}
				}
			},
			"points": [
				[
					0,
					0
				],
				[
					-5.333251953125,
					5.333251953125
				],
				[
					-6.6666666666667425,
					6.666666666666629
				],
				[
					-9.333292643229242,
					7.999979654947879
				],
				[
					-14.666646321614508,
					15.999959309895871
				],
				[
					-17.333272298177008,
					18.66658528645837
				],
				[
					-18.666585286458258,
					21.33331298828125
				],
				[
					-23.99993896484375,
					27.99997965494788
				],
				[
					-23.99993896484375,
					29.33329264322913
				],
				[
					-26.666666666666742,
					34.66664632161462
				],
				[
					-26.666666666666742,
					37.33327229817712
				],
				[
					-26.666666666666742,
					40
				],
				[
					-25.333251953125,
					41.33331298828125
				],
				[
					-17.333272298177008,
					42.6666259765625
				],
				[
					-2.6666259765625,
					42.6666259765625
				],
				[
					25.333353678385492,
					42.6666259765625
				],
				[
					49.33339436848951,
					38.66658528645837
				],
				[
					84.00014241536451,
					27.99997965494788
				],
				[
					82.66672770182299,
					27.99997965494788
				],
				[
					80.00010172526049,
					30.66660563151038
				],
				[
					76.00006103515625,
					33.33333333333337
				],
				[
					73.33343505859375,
					37.33327229817712
				],
				[
					69.33339436848951,
					41.33331298828125
				],
				[
					69.33339436848951,
					42.6666259765625
				],
				[
					66.66676839192701,
					46.66666666666663
				],
				[
					65.33335367838549,
					49.33329264322913
				],
				[
					66.66676839192701,
					53.33333333333337
				],
				[
					69.33339436848951,
					55.99995930989587
				],
				[
					74.66664632161451,
					57.33327229817712
				],
				[
					96.00006103515625,
					57.33327229817712
				],
				[
					121.33331298828125,
					55.99995930989587
				],
				[
					152.000020345052,
					43.99993896484375
				],
				[
					154.6666463216145,
					41.33331298828125
				],
				[
					157.333475748698,
					35.99995930989587
				],
				[
					154.6666463216145,
					40
				],
				[
					152.000020345052,
					43.99993896484375
				],
				[
					146.666768391927,
					51.99991861979163
				],
				[
					142.666727701823,
					65.333251953125
				],
				[
					142.666727701823,
					69.33329264322913
				],
				[
					144.0001424153645,
					73.33333333333337
				],
				[
					174.6666463216145,
					78.66658528645837
				],
				[
					185.3333536783855,
					78.66658528645837
				],
				[
					190.66680908203125,
					77.33327229817712
				],
				[
					196.00006103515625,
					73.33333333333337
				],
				[
					198.66668701171875,
					70.66660563151038
				],
				[
					198.66668701171875,
					67.99997965494788
				],
				[
					218.66668701171875,
					63.99993896484375
				],
				[
					230.66680908203125,
					62.6666259765625
				],
				[
					232.000020345052,
					61.33331298828125
				],
				[
					232.000020345052,
					61.33331298828125
				]
			],
			"pressures": [],
			"simulatePressure": true,
			"lastCommittedPoint": [
				232.000020345052,
				61.33331298828125
			]
		},
		{
			"id": "8skkgSzlFzumNvwgMr60J",
			"type": "freedraw",
			"x": -280.7933100563712,
			"y": 571.7714663389806,
			"width": 488.0000813802085,
			"height": 440,
			"angle": 0,
			"strokeColor": "#000000",
			"backgroundColor": "transparent",
			"fillStyle": "hachure",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 1864396448,
			"version": 201,
			"versionNonce": 83050144,
			"isDeleted": true,
			"boundElements": null,
			"updated": 1705601314540,
			"link": null,
			"locked": false,
			"customData": {
				"strokeOptions": {
					"highlighter": false,
					"constantPressure": false,
					"hasOutline": false,
					"outlineWidth": 1,
					"options": {
						"smoothing": 0.2,
						"thinning": 0.6,
						"streamline": 0.2,
						"easing": "easeInOutSine",
						"start": {
							"taper": 150,
							"cap": true,
							"easing": "linear"
						},
						"end": {
							"taper": 1,
							"cap": true,
							"easing": "linear"
						}
					}
				}
			},
			"points": [
				[
					0,
					0
				],
				[
					-1.3332112630207575,
					1.33331298828125
				],
				[
					-5.333251953125,
					4.0000406901042425
				],
				[
					-10.66650390625,
					10.666707356770871
				],
				[
					-18.666585286458258,
					22.6666259765625
				],
				[
					-20,
					25.333353678385492
				],
				[
					-22.6666259765625,
					30.66670735677087
				],
				[
					-26.666666666666515,
					41.33331298828125
				],
				[
					-27.9998779296875,
					45.33335367838549
				],
				[
					-27.9998779296875,
					54.66664632161462
				],
				[
					-27.9998779296875,
					61.33331298828125
				],
				[
					-20,
					70.66670735677087
				],
				[
					-13.333333333333258,
					75.99995930989587
				],
				[
					-6.666666666666515,
					78.66668701171875
				],
				[
					6.6666666666667425,
					85.33335367838549
				],
				[
					36.00016276041674,
					89.33329264322924
				],
				[
					69.33349609375,
					89.33329264322924
				],
				[
					77.3333740234375,
					87.99997965494799
				],
				[
					102.66682942708348,
					78.66668701171875
				],
				[
					108.00008138020848,
					75.99995930989587
				],
				[
					112.0001220703125,
					73.33333333333337
				],
				[
					122.66682942708348,
					62.6666259765625
				],
				[
					128.00008138020848,
					38.66668701171875
				],
				[
					126.66666666666674,
					34.66664632161462
				],
				[
					125.33345540364598,
					32.00002034505212
				],
				[
					120,
					26.666666666666742
				],
				[
					104.00004069010424,
					20
				],
				[
					92.0001220703125,
					17.3333740234375
				],
				[
					78.66678873697924,
					17.3333740234375
				],
				[
					50.666707356770985,
					32.00002034505212
				],
				[
					50.666707356770985,
					34.66664632161462
				],
				[
					50.666707356770985,
					41.33331298828125
				],
				[
					50.666707356770985,
					47.99997965494799
				],
				[
					62.666829427083485,
					64.00004069010424
				],
				[
					73.33333333333348,
					70.66670735677087
				],
				[
					144.00004069010424,
					82.6666259765625
				],
				[
					189.33349609375,
					74.66664632161462
				],
				[
					193.33333333333348,
					70.66670735677087
				],
				[
					193.33333333333348,
					69.33329264322924
				],
				[
					185.33345540364598,
					77.3333740234375
				],
				[
					184.00004069010424,
					81.33331298828125
				],
				[
					180,
					97.3333740234375
				],
				[
					180,
					101.33331298828125
				],
				[
					178.66678873697924,
					104.00004069010424
				],
				[
					180,
					105.33335367838549
				],
				[
					182.66682942708348,
					106.66666666666674
				],
				[
					186.66666666666674,
					106.66666666666674
				],
				[
					193.33333333333348,
					106.66666666666674
				],
				[
					200,
					106.66666666666674
				],
				[
					209.33349609375,
					106.66666666666674
				],
				[
					220,
					105.33335367838549
				],
				[
					238.66678873697924,
					101.33331298828125
				],
				[
					242.66682942708348,
					101.33331298828125
				],
				[
					250.66670735677098,
					98.66668701171875
				],
				[
					252.0001220703125,
					98.66668701171875
				],
				[
					252.0001220703125,
					97.3333740234375
				],
				[
					250.66670735677098,
					98.66668701171875
				],
				[
					250.66670735677098,
					101.33331298828125
				],
				[
					250.66670735677098,
					106.66666666666674
				],
				[
					250.66670735677098,
					107.99997965494799
				],
				[
					252.0001220703125,
					112.00002034505212
				],
				[
					260,
					117.3333740234375
				],
				[
					262.6668294270835,
					118.66668701171875
				],
				[
					274.666748046875,
					124.00004069010424
				],
				[
					289.33349609375,
					130.66670735677087
				],
				[
					292.0001220703125,
					132.00002034505212
				],
				[
					293.3333333333335,
					132.00002034505212
				],
				[
					298.66678873697924,
					134.66664632161462
				],
				[
					298.66678873697924,
					135.99995930989587
				],
				[
					298.66678873697924,
					138.66668701171875
				],
				[
					297.3333740234375,
					140
				],
				[
					289.33349609375,
					146.66666666666674
				],
				[
					268.0000813802085,
					165.3333536783855
				],
				[
					262.6668294270835,
					169.33329264322924
				],
				[
					249.33349609375,
					181.33331298828125
				],
				[
					237.3333740234375,
					190.66670735677098
				],
				[
					226.66666666666674,
					197.3333740234375
				],
				[
					192.0001220703125,
					210.66670735677098
				],
				[
					186.66666666666674,
					212.00002034505223
				],
				[
					169.33349609375,
					215.99995930989598
				],
				[
					112.0001220703125,
					220
				],
				[
					78.66678873697924,
					209.33329264322924
				],
				[
					76.00016276041674,
					209.33329264322924
				],
				[
					70.66670735677098,
					206.66666666666674
				],
				[
					28.000081380208485,
					181.33331298828125
				],
				[
					14.666748046875,
					167.999979654948
				],
				[
					6.6666666666667425,
					150.66670735677087
				],
				[
					4.0000406901042425,
					146.66666666666674
				],
				[
					0,
					114.66664632161462
				],
				[
					0,
					109.33329264322924
				],
				[
					2.666829427083485,
					102.6666259765625
				],
				[
					81.33341471354174,
					49.33329264322924
				],
				[
					121.33341471354174,
					45.33335367838549
				],
				[
					128.00008138020848,
					45.33335367838549
				],
				[
					136.00016276041674,
					45.33335367838549
				],
				[
					204.00004069010424,
					58.66668701171875
				],
				[
					222.66682942708348,
					65.33335367838549
				],
				[
					254.666748046875,
					90.66670735677087
				],
				[
					261.33341471354174,
					98.66668701171875
				],
				[
					266.66666666666674,
					106.66666666666674
				],
				[
					249.33349609375,
					184.00004069010424
				],
				[
					226.66666666666674,
					207.999979654948
				],
				[
					222.66682942708348,
					213.33333333333348
				],
				[
					200,
					233.33333333333348
				],
				[
					177.3333740234375,
					247.999979654948
				],
				[
					152.0001220703125,
					264.00004069010424
				],
				[
					96.00016276041674,
					275.999959309896
				],
				[
					-77.33327229817701,
					193.33333333333348
				],
				[
					-82.6666259765625,
					164.00004069010424
				],
				[
					-81.33331298828125,
					144.00004069010424
				],
				[
					-67.9998779296875,
					109.33329264322924
				],
				[
					36.00016276041674,
					32.00002034505212
				],
				[
					128.00008138020848,
					20
				],
				[
					161.33341471354174,
					20
				],
				[
					208.00008138020848,
					29.333292643229242
				],
				[
					310.666707356771,
					90.66670735677087
				],
				[
					337.3333740234375,
					135.99995930989587
				],
				[
					340,
					152.00002034505212
				],
				[
					340,
					154.66664632161462
				],
				[
					306.66666666666674,
					249.33329264322924
				],
				[
					277.3333740234375,
					300
				],
				[
					273.3333333333335,
					304.00004069010424
				],
				[
					258.66678873697924,
					324.00004069010424
				],
				[
					234.666748046875,
					352.00002034505223
				],
				[
					221.33341471354174,
					364.00004069010424
				],
				[
					201.33341471354174,
					377.3333740234375
				],
				[
					196.00016276041674,
					378.66668701171875
				],
				[
					108.00008138020848,
					367.999979654948
				],
				[
					58.66678873697924,
					344.00004069010424
				],
				[
					24.000040690104242,
					320
				],
				[
					9.33349609375,
					304.00004069010424
				],
				[
					-6.666666666666515,
					281.33331298828125
				],
				[
					-14.666544596354015,
					206.66666666666674
				],
				[
					8.000081380208485,
					106.66666666666674
				],
				[
					52.0001220703125,
					25.333353678385492
				],
				[
					78.66678873697924,
					0
				],
				[
					82.66682942708348,
					-1.33331298828125
				],
				[
					258.66678873697924,
					4.0000406901042425
				],
				[
					280,
					20
				],
				[
					317.3333740234375,
					50.66670735677087
				],
				[
					322.6668294270835,
					55.99995930989587
				],
				[
					361.33341471354174,
					104.00004069010424
				],
				[
					394.666748046875,
					165.3333536783855
				],
				[
					402.6668294270835,
					198.66668701171875
				],
				[
					404.00004069010424,
					204.00004069010424
				],
				[
					405.333455403646,
					224.00004069010424
				],
				[
					402.6668294270835,
					233.33333333333348
				],
				[
					386.66666666666674,
					267.999979654948
				],
				[
					381.33341471354174,
					274.66664632161473
				],
				[
					364.00004069010424,
					289.33329264322924
				],
				[
					274.666748046875,
					313.3333333333335
				],
				[
					252.0001220703125,
					314.66664632161473
				],
				[
					214.666748046875,
					314.66664632161473
				],
				[
					134.666748046875,
					294.66664632161473
				],
				[
					78.66678873697924,
					272.00002034505223
				],
				[
					58.66678873697924,
					262.6666259765625
				],
				[
					1.3334147135417425,
					226.66666666666674
				],
				[
					-34.666544596354015,
					190.66670735677098
				],
				[
					-38.66658528645826,
					184.00004069010424
				],
				[
					-54.666544596354015,
					118.66668701171875
				],
				[
					-51.999918619791515,
					109.33329264322924
				],
				[
					-43.99983723958326,
					86.66666666666674
				],
				[
					-20,
					46.66666666666674
				],
				[
					13.333333333333485,
					5.3333536783854925
				],
				[
					57.3333740234375,
					-35.99995930989576
				],
				[
					80,
					-52.00002034505201
				],
				[
					94.666748046875,
					-61.33331298828125
				],
				[
					256.00016276041674,
					-61.33331298828125
				],
				[
					282.6668294270835,
					-34.66664632161451
				],
				[
					297.3333740234375,
					-18.66668701171875
				],
				[
					313.3333333333335,
					4.0000406901042425
				],
				[
					340,
					60
				],
				[
					348.0000813802085,
					135.99995930989587
				],
				[
					337.3333740234375,
					165.3333536783855
				],
				[
					318.66678873697924,
					193.33333333333348
				],
				[
					289.33349609375,
					220
				],
				[
					118.66678873697924,
					237.3333740234375
				],
				[
					26.666666666666742,
					204.00004069010424
				],
				[
					-11.999918619791515,
					170.66670735677087
				],
				[
					-20,
					157.3333740234375
				],
				[
					-23.999837239583258,
					146.66666666666674
				],
				[
					-10.66650390625,
					58.66668701171875
				],
				[
					-6.666666666666515,
					49.33329264322924
				],
				[
					12.0001220703125,
					25.333353678385492
				],
				[
					29.33349609375,
					7.9999796549479925
				],
				[
					34.666748046875,
					2.6666259765625
				],
				[
					57.3333740234375,
					-13.333333333333258
				],
				[
					64.00004069010424,
					-15.999959309895758
				],
				[
					98.66678873697924,
					-25.33335367838538
				],
				[
					106.66666666666674,
					-26.66666666666663
				],
				[
					170.66670735677098,
					-9.333292643229129
				],
				[
					176.00016276041674,
					-4.000040690104129
				],
				[
					193.33333333333348,
					13.333333333333371
				],
				[
					201.33341471354174,
					21.33331298828125
				],
				[
					209.33349609375,
					32.00002034505212
				],
				[
					216.00016276041674,
					41.33331298828125
				],
				[
					220,
					52.00002034505212
				],
				[
					221.33341471354174,
					57.3333740234375
				],
				[
					221.33341471354174,
					57.3333740234375
				]
			],
			"pressures": [],
			"simulatePressure": true,
			"lastCommittedPoint": [
				221.33341471354174,
				57.3333740234375
			]
		},
		{
			"id": "WpA43YuWE63pZ-o_Q5FaN",
			"type": "freedraw",
			"x": -464.79324902121493,
			"y": 606.4381126605953,
			"width": 433.33343505859375,
			"height": 216.00006103515625,
			"angle": 0,
			"strokeColor": "#B83E3E",
			"backgroundColor": "#FF7C7C",
			"fillStyle": "dashed",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 0,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 223505056,
			"version": 78,
			"versionNonce": 1350866592,
			"isDeleted": true,
			"boundElements": null,
			"updated": 1705601317468,
			"link": null,
			"locked": false,
			"customData": {
				"strokeOptions": {
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
				}
			},
			"points": [
				[
					0,
					0
				],
				[
					4.0000406901042425,
					0
				],
				[
					9.333292643229242,
					0
				],
				[
					26.666666666666742,
					0
				],
				[
					29.333292643229242,
					0
				],
				[
					40,
					-1.33331298828125
				],
				[
					52.000020345052235,
					-2.6666259765625
				],
				[
					69.33329264322924,
					-3.99993896484375
				],
				[
					90.66670735677098,
					-6.666666666666629
				],
				[
					140.0001017252605,
					-9.333292643229129
				],
				[
					149.33339436848973,
					-10.666605631510379
				],
				[
					197.33327229817723,
					-12.000020345052121
				],
				[
					214.66664632161473,
					-12.000020345052121
				],
				[
					220.0001017252605,
					-12.000020345052121
				],
				[
					256.00006103515625,
					-12.000020345052121
				],
				[
					282.666727701823,
					-12.000020345052121
				],
				[
					307.999979654948,
					-12.000020345052121
				],
				[
					336.00006103515625,
					-9.333292643229129
				],
				[
					343.99993896484375,
					-9.333292643229129
				],
				[
					363.99993896484375,
					-6.666666666666629
				],
				[
					387.999979654948,
					-3.99993896484375
				],
				[
					410.6666056315105,
					0
				],
				[
					413.33343505859375,
					0
				],
				[
					430.6666056315105,
					2.6667277018228788
				],
				[
					432.00002034505223,
					2.6667277018228788
				],
				[
					433.33343505859375,
					2.6667277018228788
				],
				[
					433.33343505859375,
					5.333353678385379
				],
				[
					430.6666056315105,
					9.333394368489621
				],
				[
					426.66676839192723,
					14.666646321614621
				],
				[
					421.33331298828125,
					22.66672770182288
				],
				[
					410.6666056315105,
					37.3333740234375
				],
				[
					405.3333536783855,
					44.00004069010413
				],
				[
					383.99993896484375,
					65.33335367838538
				],
				[
					378.66668701171875,
					70.66670735677087
				],
				[
					365.3333536783855,
					80
				],
				[
					341.33331298828125,
					97.3333740234375
				],
				[
					313.33343505859375,
					112.00002034505212
				],
				[
					305.3333536783855,
					114.66664632161462
				],
				[
					267.999979654948,
					125.33335367838538
				],
				[
					258.66668701171875,
					127.99997965494788
				],
				[
					217.33327229817723,
					133.33333333333337
				],
				[
					210.6666056315105,
					134.66664632161462
				],
				[
					177.33327229817723,
					138.66668701171875
				],
				[
					170.6666056315105,
					138.66668701171875
				],
				[
					143.99993896484375,
					140
				],
				[
					138.66668701171875,
					140
				],
				[
					121.33331298828125,
					134.66664632161462
				],
				[
					118.66668701171875,
					133.33333333333337
				],
				[
					112.00002034505223,
					127.99997965494788
				],
				[
					102.6666259765625,
					117.3333740234375
				],
				[
					102.6666259765625,
					114.66664632161462
				],
				[
					100,
					87.99997965494788
				],
				[
					101.33331298828125,
					84.00004069010413
				],
				[
					101.33331298828125,
					80
				],
				[
					106.66666666666674,
					66.66666666666663
				],
				[
					113.33343505859375,
					49.33339436848962
				],
				[
					116.00006103515625,
					45.33335367838538
				],
				[
					125.33335367838549,
					32.00002034505212
				],
				[
					173.33343505859375,
					4.000040690104129
				],
				[
					189.33339436848973,
					2.6667277018228788
				],
				[
					225.3333536783855,
					12.000020345052121
				],
				[
					265.3333536783855,
					57.3333740234375
				],
				[
					277.33327229817723,
					78.66668701171875
				],
				[
					293.33343505859375,
					121.33331298828125
				],
				[
					298.66668701171875,
					145.33335367838538
				],
				[
					300.0001017252605,
					181.33331298828136
				],
				[
					303.99993896484375,
					190.66670735677087
				],
				[
					307.999979654948,
					194.66664632161462
				],
				[
					310.6666056315105,
					197.3333740234376
				],
				[
					316.00006103515625,
					200.0000000000001
				],
				[
					336.00006103515625,
					204.00004069010413
				],
				[
					387.999979654948,
					182.66672770182288
				],
				[
					416.00006103515625,
					165.33335367838538
				],
				[
					421.33331298828125,
					162.66672770182288
				],
				[
					423.99993896484375,
					160.0000000000001
				],
				[
					423.99993896484375,
					160.0000000000001
				]
			],
			"pressures": [
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				0
			],
			"simulatePressure": false,
			"lastCommittedPoint": [
				423.99993896484375,
				160.0000000000001
			]
		}
	],
	"appState": {
		"theme": "light",
		"viewBackgroundColor": "#ffffff",
		"currentItemStrokeColor": "#000000",
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
		"scrollX": 1300.4601598285067,
		"scrollY": 362.0618085023281,
		"zoom": {
			"value": 0.6
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