next : [[05_Matrix_Factorization_Method]]
## How to measure similarity
- 다른 사람들의 협력적 행동을 기반으로 물건을 추천합니다.
	
	원하신다면 당신의 이웃,
	그리고 그들이 좋아하는 것을 바탕으로 물건을 추천합니다.
	당신이 아직 보지 못한 것.
	이것이 바로 우리가 이를 **협업 필터링**이라고 부르는 이유입니다.
	
- 결국 필요한 것은 사용자와 비슷한 사람을 찾는 능력입니다.
	- 코사인 유사성 측정을 통해서 이를 가능케한다.
		콘텐츠 속성 대신 여러개의 차원으로 나누어서 다양한 속성을 집어넣는다.
		
		어떤 사용자가 이 항목을 좋아했는지,
		그리고 당신이 이 항목을 좋아하는지,
		측정 기준은 사용자의 행동을 기반으로 한다.
		
	- 이러한 유사성을 측정하는데 있어 가장 큰 과제는 우리가 작업하는 데이터의 **희소성**이다.
		![[Pasted image 20231113154426.png|500]]
		작업할 데이터가 충분하지 않다. (Bob, Ted, Alice의 연관성을 찾을 수 없다.)
		Netflix나 Amazon은 충분한 데이터를 가지고 있어 적합하다.
		하지만 대체 유사성 측정을 사용한다면 데이터가 충분하지 않더라도 사용할 수 있다.
		
## Similarity Matrics
### Adjusted cosine
- 이는 다양한 사람들이 가질 수 있다는 생각을 기반으로 합니다.
	작업하는 기준이 다릅니다.
	밥이 별 3개짜리 영화라고 생각하는 것,
	어쩌면 앨리스와는 다를지도 모른다는 전제를 기반으로 합니다.
	
	다른 사람들보다 자신의 평가로 조정된 코사인은 이러한 차이를 정규화하려고 시도합니다.
	사람들 사이의 유사점을 측정하는 대신
	원시 등급 값을 기준으로 대신 차이점을 기반으로 유사성을 측정합니다.
![[Pasted image 20231113155013.png]]
- $\bar x$ 는 모든 사용자 X의 평가 평균을 의미하며, $\bar y$ 는 모든 사용자의 Y의 평가 평균을 의미
	따라서 위의 식은 평가한 사람들의 데이터만 포함됩니다.
	그렇기에 데이터 희소성을 해결했다 말하기는 어렵습니다.
	
	만약 추천시스템을 처음 사용하는 사람이 있고 그 사람이 한 영화에 평점을 남긴다고 해도,
	그 영화의 평점이 어떻든 간에 이미 생성된 코사인 유사도는 대중의 추천에 따라가게 됩니다.
	
### (Item-based) Pearson similarity
![[Pasted image 20231113160338.png]]
- $\bar i$ 의 경우 모든 사용자로부터 해당 항목의 평균 등급
	
- 유일한 차이점은 평점의 차이를 보는 것보다 사용자 평균 평점, 해당 항목에 대한 모든 사용자로부터 평점과 평균의 차이를 신경쓴다는 것입니다.

### Spearman rank correlation
- 평점 점수를 사용하는 대신 순위를 사용합니다.
	Spearman의 가장 큰 장점은 순서형 데이터를 효과적으로 처리할 수 있다는 점

### Mean squared difference
![[Pasted image 20231113161110.png|500]]
- 따라서 상위 방정식을 분해하면 평균 제곱 차이를 말합니다.
	두 사용자 X와 Y 사이의 관계는 다음과 같이 주어진다.
	이 분수의 맨 위에는 우리는 사용자 X와 Y의 모든 항목을 요약하고 있습니다.
	각 사용자의 평점 차이를 제곱한 것입니다.
	
	그런 다음 우리는 나눕니다.
	각 사용자가 공통적으로 가지고 있는 항목 수 기준
	평균 또는 평균을 얻기 위해 합산한 것입니다.
	
- 사용자 X와 Y는 우리는 그들이 얼마나 비슷한지 측정하고 싶습니다
	그러기 위해서는 MSD의 역수를 취하면 됩니다.
	
	1개로 나누어서, + 1을 바닥에 붙여야 해요
	0으로 나누는 것을 방지하기 위해
	
### Jaccard similarity
![[Pasted image 20231113161504.png|400]]
- 단순히 교차점의 크기입니다. 이 두 사용자 평가는 두 사용자 평가의 합으로 나눕니다.
	우리는 단지 숫자를 세고 있는 중이기 때문에 여기서는 실제 평점 값을 전혀 확인하지 않습니다.
	
	예를 들어 암시적 등급을 다루는 경우 누군가가 뭔가를 봤다는 사실만으로 아니면 뭔가를 샀거나, 어쨌든 작업할 실제 평가 값이 없을 수도 있습니다. 
	즉 정말 간단하고 암시적 평가에 매우 적합합니다.
## User-based Collaboraive Filtering
![[Pasted image 20231113162024.png|500]]
- 만약 앤이 밥이 좋아하는 영화를 똑같이 좋아했다면, Ann은 The Empire Strikes Back을 좋아합니다.
	그러면 Bob도 그것을 좋아할 가능성이 높습니다.
	
- 구현방법
	- ### User -> Item rating matrix
		![[Pasted image 20231113162353.png]]
		우선 필요한 데이터를 수집합니다. 가시적으로 2D 배열로 생각해보겠습니다.
		
		만약 현존하는 영화가 이 다섯 편 뿐이라면, Bob을 5차원 벡터로 설명할 수 있습니다.
		Bob = 4  5  0  0  0
		Ann = 0  5  5  5  0
		0은 누락된 값을 나타냅니다.
	
	- ### user -> user similarity matrix
		![[Pasted image 20231113162755.png]]
		코사인 유사성 점수를 통해 평가한 영화 세트가 다르지만 유사성을 측정할 때는 영화만 봅니다.
		
		이 경우 공통된 영화는 단 하나뿐입니다.
		스타워즈는 둘 다 같은 평가를 받았기 때문에
		별 5개 중 그들 역시 유사성 점수를 얻습니다.
		
		평가한 한개의 영화가 같다고 유사도가 100%가 나오는 것은 이상합니다.
		데이터 희소성으로 인해서 야기되는 문제 중 하나입니다.
		
	- ### Look up similar users
		Bob's neighbors : Ann : 1.0, Ted : 0
		Bob이 다른 사람들과 얼마나 비슷한지 알아보기 위해
		유사성 점수를 기준으로 해당 목록을 정렬합니다.
		그 목록에서 최상위 이웃을 선택할 경우 Ann을 선택합니다.
		
		이후에 Ted를 버리게 됩니다. 이 단계에서는 최소 유사성 점수 임계값이 적용됩니다.
		
	- ### Candidate Generation
		  ![[Pasted image 20231113163605.png|500]]
		  Ann이 고른 모든 영화를 가져올 수 있습니다.
		  만약 다른 사용자가 있다면 그 사람이 선택한 영화 또한 모두 가져옵니다.
		  
	- ### Candidate scoring
		추천된 영화에서 우리는 점수를 매겨야 합니다.
		점수들은 정규화 되어서 별 5개 평점을 1.0으로 해석하거나 임의의 값으로 해석할 수 있습니다.
		이러한 이유는 모든 것을 동일한 규모로 유지하기 위해서 입니다.
		
		이후에 사용자와의 유사성도 고려해야 합니다.
		따라서 유사성 점수와 정규화 된 평점을 곱하는 방법이 있습니다.
		따라서 위의 두 항목에는 1.0 (Ann & Bob 유사도 점수) * 1.0 (Ann이 매긴 평점의 정규화)
		
		평점 1개나 2개 등급의 항목에는 -점수를 부여하는 등 추천점수를 매기는 방법에는 여러가지가 있다.
		
	- ### Candidate filtering
		![[Pasted image 20231113164336.png]]
		Bob이 이미 봤던 영화는 제외한다
		

## Item-based Collaborative Filtering
- 문제를 뒤집어서 비슷한 다른 사람을 찾기보다는 그들이 좋아하는 것을 추천
	- 사용자 사이의 유사성보다 나을 수 있고,
	- 항목은 사람보다 더 **영구적인 경향**이 있습니다.
		사용자 유사성보다 덜 변한다.
		
	- **물건보다 사람이 훨씬 더 많을 경우**
		카탈로그의 모든 항목 사이에 있는 2D 매트릭스 매핑 유사성 점수가 귀하의 사이트를 방문하는 모든 사용자 사이의 2D 매트릭스 매핑 유사성보다 훨씬 작습니다. >>
		이는 해당 행렬을 저장하는 것을 더 간단하게 만들 뿐만 아니라, 계산 속도도 빨라집니다.
		
- User-based Collaborative Filtering과 차이
	  ![[Pasted image 20231113202903.png]]
	 가장 큰 차이는 뒤집는 것.
	 
	 - 사용자 기반 협업 필터링의 경우
		기존 사용자를 생각했습니다. 모든 아이템이 하나의 차원이었던 공간에서 그리고 이러한 사용자 벡터 사이의 코사인 유사성을 찾았습니다.
		 
	 - 아이템 기반 협업 필터링의 경우
		우리는 공간에 존재하는 아이템을 생각하고 있습니다.
		모든 사용자가 차원인 경우 그리고  항목 벡터 사이에 있는 코사인 유사성을 찾는다.
		![[Pasted image 20231113203407.png]]
		1과 0으로 나오는 이유는 작업하는 데이터의 양이 너무 적기 때문입니다.
		
		![[Pasted image 20231113203823.png]]
		Ann이 인크레더블을 좋아했기에 인크레더블 또한 추천합니다.
		
- ### Results : item-based
	![[Pasted image 20231114204938.png]]
	Pearson은 item-based collaborative filtering 에서 RMSE에 대해 더 나은 결과를 얻었습니다.
	

## Evaluating collaborative filtering
- ### Measure the Hit Rate of Item-Based Collaborative Filtering
	- EvaluateUserCF.py 

## KNN Recommenders
- 평점을 예측하여 사용자가 아직 평가하지 않은 모든 것 중에서 상위 K 항목을 선택합니다.
	가장 높은 예측 평점을 받았습니다.
	
	![[Pasted image 20231114010125.png|400]]
	- 한 가지 방법은 상위 K개 항목 또는 유사성 점수가 가장 높은 사용자을 기반으로 예측을 수행
		 이것이 바로 우리가 이 접근법을 K 최근접 이웃이라고 부르는 이유입니다.
		
- ### 사용자 기반 협업 필터링과 비교
	- 공통점
		 사용자 간 유사성 매트릭스를 사용
		 
	- 차이점
		  작동 방식이 다름.
		  하지만 우리는 단지 물건을 추천하는 것이 아나라 당신과 비슷한 사람들이 좋아했던 것입니다.
		  가능한 모든 사용자에 대한 모든 항목의 등급을 예측하기 위해 데이터에 더 깊이 접근하고 있습니다.
		  
- ### 접근 방식
	![[Pasted image 20231114011057.png|200]]
	우리는 평점을 예측하려고 하기 때문에 특정 사용자 및 항목에 대해
	문제의 사용자와 유사한 사용자를 찾는 것부터 시작합니다.
	
	
	1. 이를 사용자에게만 제한해야 합니다. 문제의 항목을 평가한 사람도 있습니다.
		 우리는 이를 K명의 유사한 사용자로 제한합니다.
		 
	2. 사용자가 얼마나 유사한지에 대한 측정과 함께 우리가 예측하는 사용자에게. 
		 다음으로 사용자 유사성 점수의 가중 평균을 수행합니다.
		 각 관련 등급에 대해 평점 자체에 따라 **가중치가 부여**됩니다.
		  
		 ![[Pasted image 20231114024332.png]]
		 사용자 $u$ 와 항목 $i$ 에 대한 예상 평점을 말합니다.
		 $k$ 명의 가장 가까운 사용자의 합과 같습니다.
		 여기서 우리는 이러한 k-가장 가까운 사용자 각각을 $v$ 라고 부릅니다.
		 
		 사용자 $u$ 와 $v$ 사이에서, 사용자 $v$가 이 항목에 부여한 평가를 곱합니다.
		 그런 다음 합계로 나눕니다.
		 
	3. 사용자 유사성 점수 중 가중 평균으로 끝나기 위해 등급 예측으로 사용할 수 있습니다.
		 항목 기반 KNN은 정확히 동일하게 작동합니다.
		 사용자와 항목이라는 단어를 뒤집으면 됩니다.
		 따라서 항목 $i$ 에 대한 사용자 $u$ 의 평가를 예측하려면,
		 $k$ 개의 항목 세트로 시작합니다. 항목 $i$ 와 가장 유사한 항목도 이 사용자가 평가했습니다.
		 
		 등급별로 sims cores의 가중 평균을 계산합니다.
		 
- ### User-based KNN
	![[Pasted image 20231114033800.png]]
	여기서 사용자 u와 v 대신 항목 i와 j 사이의 유사점을 살펴보는 것을 제외하고 수식은 같음.
	  
	예측 평점은 K개의 가장 유사한 항목 세트 또한 이 사용자는 문제의 항목에 대해 평가했습니다.
	평점에 따라 가중치가 부여되며, 유사성 점수의 합으로 나눕니다.
	
	이는 등급 예측을 중심으로 구축된 프레임워크로 협업 필터링이라는 개념을 강조하는 것이지만, 앞으로 보게 될 등급 예측자의 수준은 그리 나쁘지 않습니다.  
	  
	그러나 상위 N개의 권장 사항을 작성하는 것이 목표라면 앞에서 설명한 보다 간단하고 직접적인 접근 방식을 사용하는 것이 더 좋을 것입니다.
	
- ### Results : KNN
	![[Pasted image 20231114205030.png|600]]
	- 그렇다면 KNN은 사용자들에게 매력적인 아이템을 제시하는 데 왜 그렇게 많은 어려움을 겪을까요?  
		그러나 앞서 보았듯이 협업 필터링이 문제가 아니라 협업 필터링이 등급 예측을 하도록 강요하고 있습니다.  
		  
		상위 N개의 권장 사항을 제시하는 데만 집중하고 등급 정확도를 최적화하는 것을 완전히 잊었을 때 상당히 흥미로운 결과를 얻었습니다.  
		  
		그리고 그것이 문제의 핵심인 것으로 드러났습니다.  
		  
		등급은 본질적으로 연속적이지 않으며, KNN은 등급을 연속적인 척도로 예측할 수 있는 연속적인 값으로 취급합니다.  
	- 정말 KNN과 함께 가고 싶었다면, 등급 예측 문제라기보다는 등급 분류 문제로 다루는 것이 더 적절
		  
		KNN은 희소한 데이터에 매우 민감하기 때문에, 모든 공정에서 시청률 100만 개만 가지고 있지 않다면 더 나은 결과를 얻을 수 있을 것입니다.  
		  
	- 하지만 가장 근본적인 것은 정확성이 전부가 아니라는 것입니다. 
		KNN이 압도적인 결과를 내는 주된 이유는 잘못된 문제를 해결하려고 하기 때문입니다.

## Translation-based recommendations
- [link](https://sites.google.com/view/ruining-he)
	저는 2017년 추천인 제도 회의에서 나온 흥미로운 논문을 언급하고 싶습니다.  
	번역 기반 권장사항이라고 하며, 샌디에고에 있는 캘리포니아 대학교의 한 팀에서 가져온 것입니다.  
	
- 개념은 사용자가 다차원 공간에서 한 항목에서 다른 항목으로 이동하는 벡터로 모델링된다는 것입니다. 
	그리고 이 벡터들을 모델링함으로써 사용자가 다음에 볼 영화와 같은 사건의 순서를 예측할 수 있습니다.  
	  
	이 논문이 흥미로운 이유는 하나의 데이터 세트에서 하나의 경우를 제외한 모든 경우에서 이벤트 시퀀스를 추천하는 기존의 모든 최상의 방법을 능가했기 때문입니다.  
	![[Pasted image 20231114225101.png]]
	그리고 정확성 대신 적중률을 기준으로 결과를 측정했다는 점도 마음에 듭니다.  
	  
	그들은 올바른 일에 집중합니다.  
	  
	![[Pasted image 20231114225435.png]]
	이 논문의 이미지는 기본적인 아이디어를 보여줍니다.  
	  
	영화와 같은 개별 항목을 전환 공간에 배치합니다. 이 공간 내의 이웃은 항목 간의 유사성을 나타내므로 이 공간에서 함께 가까운 항목은 서로 유사합니다.  
	  
	차원은 항목 간의 복잡한 전이 관계에 해당합니다.  
	  
	이 방법은 물건들을 지역적이고 비슷한 이웃으로 함께 배치하는 것에 의존하기 때문에, 저는 여전히 이웃 기반 방법으로 분류합니다.  
	  
	이 공간에서 우리는 개별 사용자와 연관된 벡터를 배울 수 있습니다.  
	  
	아마도 톰크루즈 영화를 보는 사용자는 다음 톰크루즈 영화로 이동할 가능성이 높습니다,  
	  
	예를 들어, 그 전이는 이 공간에서 벡터로 표현될 것입니다.  
	  
	그런 다음 사용자와 연관된 벡터를 통해 사용자가 다음 영화를 볼 가능성을 예측할 수 있습니다.  
	  
	그 논문은 어떻게 이루어지는지에 대해서는 자세히 언급하지 않지만, 그들이 사용한 코드와 데이터를 제공하기 때문에 C++ 코드를 읽을 수 있다면, 그들이 했던 것을 역설계할 수 있습니다.  
	  
	모든 것이 매우 진보적인 것이지만, 효과가 있는 것 같습니다.  
	  
	따라서 과거 이력으로 볼 때 다음에 어떤 영화나 비디오를 볼 가능성이 있는지와 같은 일련의 사건을 예측해야 하는 상황에 처하게 된다면 번역 기반의 추천을 검색하여 실제 세계에서 어떻게 진행되고 있는지 확인해 보는 것이 좋을 것입니다.  
	  
	주로 번역 기반의 추천이라는 용어를 기억해 두었으면 해서, 언젠가 시퀀스를 추천할 필요가 있다면 확인하는 것을 기억하면 됩니다.
## Codes
### SimpleUserCF.py
#### Introduce
- 이 코드는 Surprise 라이브러리를 사용하여 KNN 기반의 협업 필터링 알고리즘을 구현하고, 특정 사용자에게 아이템을 추천하는 과정을 나타냅니다. 코드를 간략히 설명하겠습니다.

```run-python
from MovieLens import MovieLens
from surprise import KNNBasic
import heapq
from collections import defaultdict
from operator import itemgetter
        
testSubject = '85'
k = 10

# Load our data set and compute the user similarity matrix
ml = MovieLens()
data = ml.loadMovieLensLatestSmall()

trainSet = data.build_full_trainset()

sim_options = {'name': 'cosine',
               'user_based': True
               }

model = KNNBasic(sim_options=sim_options)
model.fit(trainSet)
simsMatrix = model.compute_similarities()

# Get top N similar users to our test subject
# (Alternate approach would be to select users up to some similarity threshold - try it!)
testUserInnerID = trainSet.to_inner_uid(testSubject)
similarityRow = simsMatrix[testUserInnerID]

similarUsers = []
for innerID, score in enumerate(similarityRow):
    if (innerID != testUserInnerID):
        similarUsers.append( (innerID, score) )

kNeighbors = heapq.nlargest(k, similarUsers, key=lambda t: t[1])

# Get the stuff they rated, and add up ratings for each item, weighted by user similarity
candidates = defaultdict(float)
for similarUser in kNeighbors:
    innerID = similarUser[0]
    userSimilarityScore = similarUser[1]
    theirRatings = trainSet.ur[innerID]
    for rating in theirRatings:
        candidates[rating[0]] += (rating[1] / 5.0) * userSimilarityScore
    
# Build a dictionary of stuff the user has already seen
watched = {}
for itemID, rating in trainSet.ur[testUserInnerID]:
    watched[itemID] = 1
    
# Get top-rated items from similar users:
pos = 0
for itemID, ratingSum in sorted(candidates.items(), key=itemgetter(1), reverse=True):
    if not itemID in watched:
        movieID = trainSet.to_raw_iid(itemID)
        print(ml.getMovieName(int(movieID)), ratingSum)
        pos += 1
        if (pos > 10):
            break
```

1. **데이터 로딩 및 모델 초기화:**
    
    ```run-python
    ml = MovieLens() 
    data = ml.loadMovieLensLatestSmall() 
    trainSet = data.build_full_trainset()  
    
    sim_options = {'name': 'cosine', 'user_based': True} 
    model = KNNBasic(sim_options=sim_options) 
    model.fit(trainSet) 
    simsMatrix = model.compute_similarities()
    ```
    
    - MovieLens 데이터를 로드하고, Surprise에서 제공하는 KNN 기반 협업 필터링 모델을 초기화하고 학습시킵니다.
    - 코사인 유사도를 사용하며, 사용자 기반 협업 필터링을 수행합니다.
2. **유사한 사용자 찾기:**
    
    ```run-python
    testUserInnerID = trainSet.to_inner_uid(testSubject) 
    similarityRow = simsMatrix[testUserInnerID] 
    similarUsers = [(innerID, score) for innerID, score in enumerate(similarityRow) if innerID != testUserInnerID] 
    kNeighbors = heapq.nlargest(k, similarUsers, key=lambda t: t[1])
    ```
    
    - 특정 사용자(`testSubject`)에 대한 유사한 사용자를 찾습니다.
    - `simsMatrix`에서 해당 사용자의 유사도 행을 추출하고, 가장 유사한 상위 `k`명의 사용자를 선택합니다.
      
	
    - **Exercise Solution**
		```run-python
		#kNeighbors = heapq.nlargest(k, testUserRatings, key=lambda t: t[1])
		kNeighbors = []
		for rating in testUserRatings:
			if rating[1] > 4.0:
				kNeighbors.append(rating)
		```
		- Results
			![[Pasted image 20231119231833.png]]
			
3. **아이템 추천 생성:**
    
    ```run-python
    candidates = defaultdict(float) for similarUser in kNeighbors:     
	    innerID = similarUser[0]     
	    userSimilarityScore = similarUser[1]     
	    theirRatings = trainSet.ur[innerID]     
	    for rating in theirRatings:         
		    candidates[rating[0]] += (rating[1] / 5.0) * userSimilarityScore
	```
    
    - 유사한 사용자들이 평가한 아이템을 기반으로 추천 후보군을 생성합니다.
    - 사용자 유사도를 가중치로 사용하여 각 아이템에 대한 예상 평점을 계산하고, 이를 `candidates` 딕셔너리에 누적합니다.
4. **이미 시청한 아이템 필터링 및 상위 추천 출력:**
    
    ```run-python
    watched = {} 
    for itemID, rating in trainSet.ur[testUserInnerID]:     
	    watched[itemID] = 1  
	
	pos = 0 
	for itemID, ratingSum in sorted(candidates.items(), key=itemgetter(1), reverse=True):     
		if itemID not in watched:         
			movieID = trainSet.to_raw_iid(itemID)         
			print(ml.getMovieName(int(movieID)), ratingSum)         
			pos += 1         
			if pos > 10:             
				break
	```
    
    - 이미 시청한 아이템은 필터링하고, 추천 후보군을 기반으로 상위 10개의 추천을 출력합니다.
    - `MovieLens` 객체를 사용하여 아이템의 실제 이름을 가져와 출력합니다.

- 이 코드는 KNN 알고리즘을 사용하여 협업 필터링을 구현하고, 특정 사용자에게 아이템을 추천하는 과정을 단계별로 수행하는 예제입니다.
	  
	가능한 모든 사용자의 모든 항목에 대해 등급을 예측할 필요가 없었기 때문입니다. 모든 가능한 사용자의 모든 항목에 대해 예측할 필요가 없었기 때문입니다.
	
	여기서 유일하게 시간이 걸리는 부분은 사용자 간 유사성 매트릭스를 구축하는 것입니다, 그 후에는 개인에 대한 추천을 추천을 만드는 것은 정말 정말 빠릅니다.
	
	그렇기 때문에 협업 필터링은 아마존과 같은 대기업이 Amazon과 같은 대기업이 쉽게 사용할 수 있는 협업 필터링은 방대한 데이터 세트와 엄청난 트랜잭션 속도를 가진 Amazon과 같은 대기업이 쉽게 사용할 수 있는 기능입니다.
	
	효율성은 무엇보다 중요합니다.
	
### SimpleUserCF.py
#### Introduce
- 이 코드는 Surprise 라이브러리를 사용하여 아이템 기반 협업 필터링 알고리즘을 구현하고, 특정 사용자에게 아이템을 추천하는 과정을 나타냅니다

```run-python
from MovieLens import MovieLens
from surprise import KNNBasic
import heapq
from collections import defaultdict
from operator import itemgetter
        
testSubject = '85'
k = 10

ml = MovieLens()
data = ml.loadMovieLensLatestSmall()

trainSet = data.build_full_trainset()

sim_options = {'name': 'cosine',
               'user_based': False
               }

model = KNNBasic(sim_options=sim_options)
model.fit(trainSet)
simsMatrix = model.compute_similarities()

testUserInnerID = trainSet.to_inner_uid(testSubject)

# Get the top K items we rated
testUserRatings = trainSet.ur[testUserInnerID]
kNeighbors = heapq.nlargest(k, testUserRatings, key=lambda t: t[1])

# Get similar items to stuff we liked (weighted by rating)
candidates = defaultdict(float)
for itemID, rating in kNeighbors:
    similarityRow = simsMatrix[itemID]
    for innerID, score in enumerate(similarityRow):
        candidates[innerID] += score * (rating / 5.0)
    
# Build a dictionary of stuff the user has already seen
watched = {}
for itemID, rating in trainSet.ur[testUserInnerID]:
    watched[itemID] = 1
    
# Get top-rated items from similar users:
pos = 0
for itemID, ratingSum in sorted(candidates.items(), key=itemgetter(1), reverse=True):
    if not itemID in watched:
        movieID = trainSet.to_raw_iid(itemID)
        print(ml.getMovieName(int(movieID)), ratingSum)
        pos += 1
        if (pos > 10):
            break
```

1. **데이터 로딩 및 모델 초기화:**
    
    ```run-python
    ml = MovieLens() 
    data = ml.loadMovieLensLatestSmall() 
    trainSet = data.build_full_trainset()  
    
    sim_options = {'name': 'cosine', 'user_based': False} 
    model = KNNBasic(sim_options=sim_options) 
    model.fit(trainSet) 
    simsMatrix = model.compute_similarities()
    ```
    
    - MovieLens 데이터를 로드하고, Surprise에서 제공하는 KNN 기반 협업 필터링 모델을 초기화하고 학습시킵니다.
    - 코사인 유사도를 사용하며, 아이템 기반 협업 필터링을 수행합니다.
    -  눈에 띄는 차이점은 첫 번째 차이점은 sim_options를 설정할 때, 'user_based'에 대해 False을 전달
2. **사용자의 평가 정보 및 이웃 아이템 선정:**
    
    ```run-python
    testUserInnerID = trainSet.to_inner_uid(testSubject) 
    testUserRatings = trainSet.ur[testUserInnerID] 
    kNeighbors = heapq.nlargest(k, testUserRatings, key=lambda t: t[1])
    ```
    
    - 특정 사용자(`testSubject`)의 내부 사용자 ID를 가져온 후, 해당 사용자가 평가한 아이템 중 상위 `k`개를 선정합니다.
	
3. **유사한 아이템 찾기 및 가중치 적용:**
    
    ```run-python
    candidates = defaultdict(float) 
    for itemID, rating in kNeighbors:     
	    similarityRow = simsMatrix[itemID]     
		    for innerID, score in enumerate(similarityRow):         
			    candidates[innerID] += score * (rating / 5.0)
	```
    
    - 이웃 아이템에 대해 유사한 아이템을 찾고, 해당 아이템과의 유사도를 가중치로 사용하여 예상 평점을 계산합니다.
    - `candidates` 딕셔너리에 각 아이템의 누적 가중치를 저장합니다.
    
    - **Exercise Solution**
		```run-python
		#kNeighbors = heapq.nlargest(k, testUserRatings, key=lambda t: t[1])
		kNeighbors = []
		for rating in testUserRatings:
			if rating[1] > 0.95:
				kNeighbors.append(rating)
		```
		 여기서 `testUserRatings`는 특정 사용자가 평가한 아이템의 목록이며, 각 아이템은 (아이템 ID, 평점)의 튜플로 구성되어 있습니다. `kNeighbors`는 사용자가 높은 평점을 준 아이템 중에서만 선택된 아이템들의 목록이 됩니다.
		 
		 기존의 코드에서는 `heapq.nlargest` 함수를 사용하여 상위 `k`개의 아이템을 선택했지만, 여기서는 `for` 루프를 사용하여 평점이 0.95보다 높은 아이템을 선택하고 있습니다. 즉, 이 부분은 특정 기준을 충족하는 아이템을 선택하는 역할을 합니다.
		 
		- Results
			![[Pasted image 20231119232326.png]]
			
4. **이미 시청한 아이템 필터링 및 상위 추천 출력:**
	
    ```run-python
    watched = {} 
    for itemID, rating in trainSet.ur[testUserInnerID]:     
	    watched[itemID] = 1  
	    
	pos = 0 
	for itemID, ratingSum in sorted(candidates.items(), key=itemgetter(1), reverse=True):     
		if itemID not in watched:         
				movieID = trainSet.to_raw_iid(itemID)         
				print(ml.getMovieName(int(movieID)), ratingSum)         
				pos += 1         
				if pos > 10:             
					break
	```
    
    - 이미 시청한 아이템은 필터링하고, 추천 후보군을 기반으로 상위 10개의 추천을 출력합니다.
    - `MovieLens` 객체를 사용하여 아이템의 실제 이름을 가져와 출력합니다.

이 코드는 특정 사용자에게 아이템을 추천하는 아이템 기반 협업 필터링 알고리즘을 구현한 예제입니다.

### EvaluateUserCF.py
#### Introduce
- 이 코드는 Surprise 라이브러리를 사용하여 Leave-One-Out 교차 검증(LOOCV)을 수행하며, 아이템 기반 협업 필터링을 이용한 추천 모델을 구현하는 예제입니다. 코드의 주요 내용은 다음과 같습니다:
```run-python
from MovieLens import MovieLens
from surprise import KNNBasic
import heapq
from collections import defaultdict
from operator import itemgetter
from surprise.model_selection import LeaveOneOut
from RecommenderMetrics import RecommenderMetrics
from EvaluationData import EvaluationData

def LoadMovieLensData():
    ml = MovieLens()
    print("Loading movie ratings...")
    data = ml.loadMovieLensLatestSmall()
    print("\nComputing movie popularity ranks so we can measure novelty later...")
    rankings = ml.getPopularityRanks()
    return (ml, data, rankings)

ml, data, rankings = LoadMovieLensData()

evalData = EvaluationData(data, rankings)

# Train on leave-One-Out train set
trainSet = evalData.GetLOOCVTrainSet()
sim_options = {'name': 'cosine',
               'user_based': True
               }

model = KNNBasic(sim_options=sim_options)
model.fit(trainSet)
simsMatrix = model.compute_similarities()

leftOutTestSet = evalData.GetLOOCVTestSet()

# Build up dict to lists of (int(movieID), predictedrating) pairs
topN = defaultdict(list)
k = 10
for uiid in range(trainSet.n_users):
    # Get top N similar users to this one
    similarityRow = simsMatrix[uiid]
    
    similarUsers = []
    for innerID, score in enumerate(similarityRow):
        if (innerID != uiid):
            similarUsers.append( (innerID, score) )
    
    kNeighbors = heapq.nlargest(k, similarUsers, key=lambda t: t[1])
    
    # Get the stuff they rated, and add up ratings for each item, weighted by user similarity
    candidates = defaultdict(float)
    for similarUser in kNeighbors:
        innerID = similarUser[0]
        userSimilarityScore = similarUser[1]
        theirRatings = trainSet.ur[innerID]
        for rating in theirRatings:
            candidates[rating[0]] += (rating[1] / 5.0) * userSimilarityScore
        
    # Build a dictionary of stuff the user has already seen
    watched = {}
    for itemID, rating in trainSet.ur[uiid]:
        watched[itemID] = 1
        
    # Get top-rated items from similar users:
    pos = 0
    for itemID, ratingSum in sorted(candidates.items(), key=itemgetter(1), reverse=True):
        if not itemID in watched:
            movieID = trainSet.to_raw_iid(itemID)
            topN[int(trainSet.to_raw_uid(uiid))].append( (int(movieID), 0.0) )
            pos += 1
            if (pos > 40):
                break
    
# Measure
print("HR", RecommenderMetrics.HitRate(topN, leftOutTestSet))
```
- 결과를 인쇄하는 대신 측정할 수 있도록 저장하고 또한 사용자당 최대 40개의 추천을 생성합니다.

1. **데이터 로딩 및 Leave-One-Out 교차 검증 설정:**
    
    ```run-python
    ml, data, rankings = LoadMovieLensData() 
    evalData = EvaluationData(data, rankings) 
    trainSet = evalData.GetLOOCVTrainSet() 
    leftOutTestSet = evalData.GetLOOCVTestSet()
    ```
    
    - `LoadMovieLensData` 함수를 사용하여 MovieLens 데이터를 로드하고, `EvaluationData` 객체를 생성합니다.
    - `GetLOOCVTrainSet` 및 `GetLOOCVTestSet` 함수를 사용하여 Leave-One-Out 교차 검증에 필요한 훈련 및 테스트 세트를 설정합니다.
2. **아이템 기반 협업 필터링 모델 훈련:**
    
    ```run-python
    model = KNNBasic(sim_options=sim_options) 
    model.fit(trainSet) 
    simsMatrix = model.compute_similarities()
    ```
    
    - Surprise에서 제공하는 KNNBasic 모델을 사용하여 아이템 기반 협업 필터링 모델을 훈련합니다.
    - 유사도 행렬(`simsMatrix`)을 계산합니다.
3. **유사한 사용자를 기반으로 추천 생성 및 평가:**
    
    ```run-python
    topN = defaultdict(list) k = 10 
    for uiid in range(trainSet.n_users):     
	    # 각 사용자에 대해 유사한 사용자를 찾고, 그들의 평점을 기반으로 아이템을 추천합니다.     
	    # 이 추천 결과를 topN 딕셔너리에 저장합니다.
	```
    
    - 각 사용자에 대해 유사한 사용자를 찾고, 그들의 평점을 기반으로 아이템을 추천합니다.
    - `topN` 딕셔너리에는 각 사용자에게 추천된 상위 N개의 아이템이 저장됩니다.
4. **평가 메트릭 측정:**
    
    ```run-python
    print("HR", RecommenderMetrics.HitRate(topN, leftOutTestSet))
    ```
    
    - `RecommenderMetrics` 모듈을 사용하여 Hit Rate(HR)를 계산하고 출력합니다.
	
	이 코드는 Leave-One-Out 교차 검증을 통해 아이템 기반 협업 필터링 모델의 성능을 평가하고, Hit Rate를 출력하는 예제입니다. Hit Rate는 모델이 사용자에게 추천한 아이템 중에서 실제로 사용자가 선호하는 아이템이 있는 비율을 측정하는 메트릭 중 하나입니다.
	
#### Make Evaluating Item-based
```run-python
#sim_options = {'name': 'cosine', 'user_based': True }
sim_options = {'name': 'cosine', 'user_based': False }
```

```run-python
for uiid in range(trainSet.n_users):
    
    userRatings = trainSet.ur[uild]
    kNeighbors = heapq.nlargest(k, userRatings, key-lambda t: t[1])
    
    candidates = defaultdict(float)
    for itemID, rating in kNeighbors:
        similarityRow = simsMatrix[itemID]
        for innerID, score in enumerate(similarityRow):
            candidates[innerID] += (rating / 5.0) * score
```

### KNNBakeOff.py
#### Introduce
- 이 코드는 Surprise 라이브러리를 사용하여 User-based KNN, Item-based KNN, 그리고 Random 모델을 비교하는 예제입니다. 코드의 주요 내용은 다음과 같습니다:
```run-python
from MovieLens import MovieLens
from surprise import KNNBasic
from surprise import NormalPredictor
from Evaluator import Evaluator

import random
import numpy as np

def LoadMovieLensData():
    ml = MovieLens()
    print("Loading movie ratings...")
    data = ml.loadMovieLensLatestSmall()
    print("\nComputing movie popularity ranks so we can measure novelty later...")
    rankings = ml.getPopularityRanks()
    return (ml, data, rankings)

np.random.seed(0)
random.seed(0)

# Load up common data set for the recommender algorithms
(ml, evaluationData, rankings) = LoadMovieLensData()

# Construct an Evaluator to, you know, evaluate them
evaluator = Evaluator(evaluationData, rankings)

# User-based KNN
UserKNN = KNNBasic(sim_options = {'name': 'cosine', 'user_based': True})
evaluator.AddAlgorithm(UserKNN, "User KNN")

# Item-based KNN
ItemKNN = KNNBasic(sim_options = {'name': 'cosine', 'user_based': False})
evaluator.AddAlgorithm(ItemKNN, "Item KNN")

# Just make random recommendations
Random = NormalPredictor()
evaluator.AddAlgorithm(Random, "Random")

# Fight!
evaluator.Evaluate(False)

evaluator.SampleTopNRecs(ml)
```

1. **데이터 로딩:**
    
    ```run-python
    (ml, evaluationData, rankings) = LoadMovieLensData()
    ```
    
    - `LoadMovieLensData` 함수를 사용하여 MovieLens 데이터를 로드하고, 평가 및 순위 정보를 가져옵니다.
2. **Evaluator 생성:**
    
    ```run-python
    evaluator = Evaluator(evaluationData, rankings)
    ```
    
    - `Evaluator` 클래스를 사용하여 추천 알고리즘을 평가하는 객체를 생성합니다.
3. **추천 알고리즘 추가:**
    
    ```run-python
    UserKNN = KNNBasic(sim_options = {'name': 'cosine', 'user_based': True}) 
    ItemKNN = KNNBasic(sim_options = {'name': 'cosine', 'user_based': False}) 
    Random = NormalPredictor()  
    
    evaluator.AddAlgorithm(UserKNN, "User KNN") 
    evaluator.AddAlgorithm(ItemKNN, "Item KNN") 
    evaluator.AddAlgorithm(Random, "Random")
    ```
    
    - Surprise의 `KNNBasic` 모델을 사용하여 User-based KNN 및 Item-based KNN 모델을 생성하고, Random 모델도 추가합니다.
4. **Evaluate 메소드 호출:**
    
    ```run-python
    evaluator.Evaluate(False)
    ```
    
    - `Evaluate` 메소드를 호출하여 추가한 모든 추천 알고리즘을 평가합니다. 인자 `False`는 상세한 결과를 출력할지 여부를 나타냅니다.
5. **상위 N 추천 샘플링:**
    
    ```run-python
    evaluator.SampleTopNRecs(ml)
    ```
    
    - `SampleTopNRecs` 메소드를 호출하여 상위 N개의 추천을 샘플링하고 출력합니다.

이 코드는 서로 다른 추천 알고리즘들을 사용하여 MovieLens 데이터를 평가하고, 각 알고리즘의 성능 및 상위 N 추천을 살펴보는 예제입니다.

다음은 세부 내용입니다:

1. **KNNBakeOff 파일:**
    
    - CollaborativeFiltering 폴더에 있는 이 파일은 SurpriseLib을 사용하여 사용자 기반 및 항목 기반 KNN 추천의 성능을 평가합니다.
2. **평가 설정:**
    
    - 코드는 `KNNBasic` 패키지를 가져옵니다. 이 패키지는 사용자 기반 및 항목 기반 KNN 추천을 구현합니다.
    - `KNNBasic`의 두 인스턴스를 생성합니다. 하나는 사용자 기반을 True로 설정하고 다른 하나는 False로 설정합니다.
    - 이러한 인스턴스는 서로 비교되며 무작위 추천자와 비교됩니다.
3. **정확도 지표:**
    
    - 정확도 메트릭을 출력합니다. User-based와 Item-based의 정확도 점수가 거의 비슷합니다. 사용자 기반이 약간 더 나아졌지만 매우 미세하여 큰 의미는 없을 것으로 보입니다.
    - 두 추천 방식 모두 무작위 추천에 비해 상당히 우수한 성능을 보입니다. 어떤 유용한 작업을 수행하고 있음을 나타냅니다.
    - 정확도 점수만으로 볼 때 KNN 추천이 제법 좋은 아이디어라고 결론 지을 수 있습니다.
4. **추천 결과 확인:**
    
    - 테스트 사용자(번호 85)에 대한 실제 추천 결과를 살펴봅니다.
    - 사용자 기반 결과에서 나온 영화 중 하나도 들어보지 못했다는 의문을 제기합니다.
    - 항목 기반 결과도 유명하지 않은 영화로 가득 차 있습니다.
    - 무작위 추천의 결과가 상대적으로 더 나아보입니다.
5. **결론:**
    
    - 시각적으로 보면 모델이 이미 본 영화의 등급을 예측하는 데 꽤 효과적일 수 있지만, 상위 N 추천을 생성하는 데는 그렇게 효과적이지 않은 것처럼 보입니다.
    - 이는 오프라인 정확도 메트릭에 중점을 두면 잘못된 결론에 이를 수 있는 또 다른 예시입니다.
    - 이 부분에서는 SurpriseLib을 사용하여 다양한 유사성 메트릭을 실험하고 결과를 비교합니다. 주로 사용되는 코사인 유사성 외에도 msd (mean squared distance) 및 Pearson과 같은 다른 메트릭을 사용하여 추천 알고리즘을 평가합니다.
	
	1. **유사성 메트릭 실험:**
	    
	    - 코사인 외에도 msd 및 Pearson 등 다양한 유사성 메트릭을 사용하여 KNN 추천 알고리즘을 실험합니다.
	2. **결과 비교:**
	    
	    - RMSE 오차 점수를 살펴보면 msd가 코사인보다 훨씬 우수하게 나타납니다.
	    - 그러나 사용자 기반 추천에서는 예측 등급의 정확도는 높지만 실제 상위 N 추천 결과는 거의 변하지 않음을 확인합니다.
	    - Pearson의 경우 RMSE에서는 높지만 상위 N 추천 결과가 약간 다르다는 점을 확인합니다.
	    - 중요한 것은 실제 사용자에게 어떻게 보이는지이며, 정확도만으로 판단하는 것은 적절하지 않다는 것입니다.
	3. **Item-Based KNN:**
	    
	    - Item-Based KNN에서도 다양한 유사성 메트릭을 실험합니다.
	    - 결과적으로 각 메트릭에 따라서도 상당히 알려지지 않은 영화가 많이 나타납니다.
	    - 정확도 메트릭에서 큰 차이가 있더라도 최종 결과는 거의 변하지 않습니다.
	4. **Variants on KNN:**
	    
	    - SurpriseLib은 KNN 추천에 대한 여러 가지 변형을 제공하며, 이들을 실험하여 결과를 비교합니다.
	    - 정확도 결과는 향상되었지만 최종 결과는 여전히 새로운 및 임의의 아이템이 많은 추천을 나타냅니다.
	    - 정확도만으로는 시스템의 실제 성능을 평가하기 어렵습니다.
	5. **KNN의 문제:**
	    
	    - KNN은 일반적으로 현실에서 흥미로운 추천을 생성하는 데 어려움을 겪습니다.
	    - KNN은 등급을 연속적인 값으로 다루지만, 등급은 실제로 연속적이지 않습니다.
	    - 등급 예측을 위해 KNN을 사용하는 대신 등급 분류 문제로 접근하는 것이 더 적절할 수 있습니다.
	    - 또한 KNN은 희소한 데이터에 민감하며, 더 많은 등급이 있는 경우 결과가 개선될 수 있습니다.
	    - 가장 중요한 것은 정확도만큼 추천의 상대적 순서가 중요하다는 것입니다. Accuracy에만 집중하면 실제 사용자에게 다소 실망스러운 추천이 생성될 수 있습니다.
## 단점
앞에서 살펴본 바와 같이, 협업 필터링은 실제 대규모 상황에서 매우 효과적으로 작동하는 것으로 입증된 훌륭한 결과를 제공할 수 있습니다.  
  
그런데 왜 우리는 더 나은 것을 찾아야 할까요? 협업 필터링은 매우 큰 항목 집합이나 사용자에서 유사도 행렬을 계산하는 것은 엄청난 계산 마력을 필요로 하기 때문에 확장성이 제한적이라는 비판을 받아 왔습니다.  
  
앞에서 살펴본 바와 같이 항목 기반 협업 필터링을 사용하면 단일 시스템에서 대규모 제품 카탈로그에 대한 전체 유사도 행렬을 계산할 수 있을 정도로 복잡성이 크게 줄어듭니다.  
  
그렇지 못하더라도 Apache Spark와 같은 기술을 사용하면 필요한 경우 클러스터 전체에 이 매트릭스를 구축할 수 있습니다.  
  
그러나 협업 필터링의 정당한 문제는 노이즈가 많은 데이터와 희소 데이터에 민감하다는 것입니다.