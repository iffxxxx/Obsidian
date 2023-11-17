next : [[004_A_Recommender_Engine_Framework]]
## Train/Test_and_Cross_Validation
![[Pasted image 20231111034714.png|500]]
- We start by splitting up your ratings data into a training set, and a testing set.
	Usally the training set is bigger. == 80 or 90 percent of all of your data.
	Then we can measure how close it came to the real rating.
	
![[Pasted image 20231111123605.png|500]]
- It's possible to improve on a single train/test split by using a technique called k-fold cross validation. Instead of a single training set, we **create many randomly assigned trainsets**.
- Each individual training set, or fold is used to train your recommender system independently.
	And then we measure the accuracy of the resulting systems against your test set.
	So we end up with a score of how accurately each fold ends up predicting user ratings.
	and we can average them together.
- This obviously takes a lot more computing power to do.
	But the advantage is that you don't end up over-fitting to a single training set.
- If your training data is small, you run the risk of optimizing for the ratings that are specifically in your training set instead of the test set. >> So K-fold cross validation provides some insurance against that.

## Accuracy Metrics
### MAE (mean absolute error)
$$\frac{\sum_{i=1}^n{|y_i-x_1|}}{n}$$
- We call the rating or system predicts y, and the rating the user actually gave x.
	Just take the absolute value of the difference between the two, to measure error.
	Remember error is bad >> Lowest MAE score you can get
	
![[Pasted image 20231111125448.png|500]]
#### Code
[link](https://github.com/NicolasHug/Surprise/blob/c1de6b0e35726577e0625b2ed77688655610ad54/surprise/accuracy.py)


### RMSE (root mean square error)
$$\sqrt\frac{\sum_{i=1}^n{(y_i-x_1)^2}}{n}$$
- This is more popular metric for a few reasons.
	1. It penalizes you more when your rating prediction is way off, and
	2. penalizes you less whe you are reasonably close.
	
![[Pasted image 20231111130110.png]]
- That's higher than the MAE score for this.
	Because It's panalizing us hard for predicting a rating of four on an item
	that the user hated, with a rating of one
	
- Why is it Important?
	Netflix offered a one million dollar prize to the first person or group to achieve a 10 percent improvement on Netflix's own RMSE score on a data set of movie ratings it made public.

## Top-N Hit Rate - Many ways
### Hit Rate
$$\frac{hits}{users}$$
- You generate top-n recommendations for all of the users in your test set.
	If one of the recommendations in a user's top-n recommendations is something they actually rated, you consider hit.
	You actually managed to show the users something that they found interesting enough to watch on their own already.
	
- Hit rate itself is easy to understand, but measuring iit is a little bit tricky.
	Can't use the same train test or cross validation approach we used for measuring accuracy.
	- Because We're not measuring the accuracy on individual ratings, We are measuring the accuracy of top-n llists for individual users.
	- Now you could do the obvious thing and not split things up at all, and just measure hit rate directly on top-n recommendations created by a recommender system that was trained on all of the data you have, but technically that's cheating.

### Leave-one-out cross validation
![[Pasted image 20231111133237.png|500]]
What we do is compute the top-n recommendations for each user in our training data and intentionally remove one.
![[Pasted image 20231111133525.png|500]]
We then test our recommender systems ability to recommend that item that was left out in the top-n results that creates for that user in the testing phase.
- The trouble is, 
	it's a lot harder to get one specific movie right while testing, than to just get one of the n recommendations.
	So hit rate with leave-one-out, tends to be very small and difficult to measure, unless you have very large data sets to work with.
	
- But it's a much more user-focused metric
	when you know your recommender system will be producing top-n lists in the real world, which most of them do.

### Average reciprocal hit rate (ARHR)
$$\frac{\sum_{i=1}^n{\frac{1}{rank_i}}}{Users}$$
- This metric is just like hit rate, but it accounts for where in the top end list your hits appear.
	- So you end up getting more credit for successfully recommending an item in the top slot than in the bottom slot.
	- The only difference is that instead of summing up the number of hits, we sum up the reciprocal rank of each hit.
	
![[Pasted image 20231111134319.png|300]]
- If the user has to scroll or paginate to see the lower items in your top-n list, then it makes sense to penalize good recommendations that appear too low in the list, where the user has to work to find them.

### cumulative hit rate (cHR)
![[Pasted image 20231111134547.png]]
- It means is that we throw away hits if our predicted rating is below some threshold.
	 if we had a cutoff of three stars we throw away the hits for the second and fourth items in these test results and our hit rate metric wouldn't count them at all.
	 
![[Pasted image 20231111134556.png]]
### rating hit rate (rHR)
![[Pasted image 20231111135056.png]]
- hit rate is to break it down by predicted rating score.
	It can be a good way to get an idea of the distribution of how good your algorithmthinks recommended movies are that actually get a hit. Ideally you want to recommend movies that they actually liked and breaking down the distribution gives you some sense of how well you're doing in more detail. This is called a rating hit rate or RHR for short.
	
- But it also turns out that you can build recommender systems with great hit rates, but poor RMSC scores.So RMSC and hit rate aren't always related.

## Coverage, Diversity, and Novelty
- Accuracy isn't the only thing that matters with recommender systems. There are other things we can measure if they're important to us. For example, coverage.
### Coverage
![[Pasted image 20231111140155.png|400]]
- It's worth noting that coverage can be at odds with accuracy. 
	If you enforce a higher quality threshhold on the recommendations you make, then you might improve your accuracy at the expense of coverage.
	
	Finding the balance of where exactly you're better off recommending nothing at all can be delicate.
	
- Coverage can also be important to watch,
	because it gives you a sense of how quickly new items in your catalog will start to appear in recommendations.
		When a new book comes out on Amazon, it won't appear in recommendations until at least a few people buy it, therefore establishing patterns with the purchase of other items. Until those patterns exist, that new book will reduce Amazon's coverage metric.

### Diversity
![[Pasted image 20231111140709.png|500]]
- You can think of this as a measure of how broad a variety of items your recommender system is putting in front of people.
	An example of low diversity would be a recommender system that just recommends the next books in a series that you've started reading, but doesn't recommend books from different authors, or movies related to what you've read.
	
- it is measurable.
	Many recommender systems start by computing some sort of similarity metric between items, so we can use these similarity scores to measure diversity.
## Novelty
- Novelty is a measure of how popular the items are that you're recommending.
- Although novelty is measurable,
	what to do with it is in many ways subjective. There's a concept of user trust in a recommender system. People want to see at least a few familiar items in their recommendations that make them say, "Yeah, that's a good recommendation for me. This system seems good."
	
- If you only recommend things people
	have never heard of, they may conclude that your system doesn't really know them them,
	and they may engage less with your recommendations as a result.
	
- Also, popular items are usually popular for a reason.
	They're enjoyable by a large segment of the population, so you would expect them to be good recommendations for a large segment of the population who hasn't read or watched them yet.
	
- This is an important point. You need to strike a balance between familiar, popular items and what we call **serendipitous** discovery of new items the user has never heard of before.
	
![[Pasted image 20231111160648.png|500]]
- Novelty is important, 
	though, because the whole point of recommender systems is to surface items in what we call "the long tail."
	
	- Imagine this is a plot of the sales of items of every item in your catalog, sorted by sales.
		- So the number of sales, or popularity, is on the Y axis, and all the products are along the X axis.
		- Most sales come from a very small number of items, but taken together, the "long tail" makes up a large amount of sales as well. Items in that long tail, the yellow part in the graph, are items that cater to people with unique niche interests.
		- Recommender systems can help people discover those items in the long tail that are relevant to their own unique niche interests.
		  
	- If you can do that successfully, 
		  then the recommendations your system makes can help new authors get discovered,
		  can help people explore their own passions,
		  and make money for whoever you're building the system for as well.
		  
- But again, you need to strike a balance between novelty and trust.

## Churn, Responsiveness and A/B Tests
### Churn
- churn can measure how sensitive your recommender system is to new user behavior.
	- If a user rates a new movie, does that substantially change their recommendations?
		If so, then your **churn score will be high**.
		
	- If a user keeps seeing the same recommendation but doesn't click on it,
		at some point should you just stop trying to recommend it
		and show the user something else instead?
		
	- Sometimes a little bit of randomization in your top-N recommendations
		can keep them looking fresh,
		and expose your users to more items than they would have seen otherwise.
		
	- You could maximize your churn metric by just recommending items completely at random,
		and of course, those would not be good recommendations.
		
		All of these metrics need to be looked at together,
		and you need to understand the trade-offs between them.

### Responsiveness
- how quickly does new user behavior influence your recommendations?
	If you rate a new movie,
	does it affect your recommendations immediately
	or does it only affect your recommendations the next day after some nightly job runs?
	
- More responsiveness would always seem to be a good thing,
	but in the world of business you have to decide how responsive your recommender really needs to be, since recommender systems that have instantaneous responsiveness are complex, difficult to maintain, and expensive to build.
	
- You need to strike your own balance between responsiveness and simplicity.

### What is important?
- We've covered a lot of different ways to evaluate your recommender system;
	MAE, RMSE, Hit Rate in various forms, coverage, diversity, novelty, churn, and responsiveness.
	
- So how do you know what to focus on?
	the answer is that it depends. It may even depend on cultural factors.
	Some cultures may want more diversity and novelty in their recommendations than others,
	while other cultures may want to stick with thingsthat are familiar with them.
	
	It also depends on what you're trying to achieve as a business.

### A/B Tests
- That's doing online A/B tests to tune your recommender system using your real customers,
	and measuring how they react to your recommendations.
	
	None of the metrics we've discussed matter more than how real customers react to the recommendations you produce in the real world.
	
- Online tests can help you 
	to avoid introducing complexity that adds no value, and
	**complex systems are difficult to maintain.**
	
- There is a real effect where often accuracy metrics tell you that an algorithm is great, 
	only to have it do horribly in an online test.
	
	YouTube studied this, and calls it the "surrogate problem."
	Accurately predicted ratings don't necessarily make for good video recommendations.
	
	YouTube said in one of their papers, and I quote,
		"There is more art than science
		"in selecting the surrogate problem for recommendations."
	What they mean is that you can't always use accuracy as a surrogate for good recommendations.

### Perceived quality
- Another thing you can do is just straight up ask your users
	if they think specific recommendations are good.
	Just like you can ask for explicit feedback on items with ratings,
	you can ask users to rate your recommendations, too.
	
	This is called measuring the **"perceived quality"** of recommendations,
		and it seems like a good idea on paper, since, as you've learned,
		defining what makes a "good" recommendation is by no means clear.

### Code
##### RecomenderMetrics.py
```run-python
import itertools

from surprise import accuracy
from collections import defaultdict

class RecommenderMetrics:

    def MAE(predictions):
        return accuracy.mae(predictions, verbose=False)

    def RMSE(predictions):
        return accuracy.rmse(predictions, verbose=False)

    def GetTopN(predictions, n=10, minimumRating=4.0):
        topN = defaultdict(list)


        for userID, movieID, actualRating, estimatedRating, _ in predictions:
            if (estimatedRating >= minimumRating):
                topN[int(userID)].append((int(movieID), estimatedRating))

        for userID, ratings in topN.items():
            ratings.sort(key=lambda x: x[1], reverse=True)
            topN[int(userID)] = ratings[:n]

        return topN

    def HitRate(topNPredicted, leftOutPredictions):
        hits = 0
        total = 0

        # For each left-out rating
        for leftOut in leftOutPredictions:
            userID = leftOut[0]
            leftOutMovieID = leftOut[1]
            # Is it in the predicted top 10 for this user?
            hit = False
            for movieID, predictedRating in topNPredicted[int(userID)]:
                if (int(leftOutMovieID) == int(movieID)):
                    hit = True
                    break
            if (hit) :
                hits += 1

            total += 1

        # Compute overall precision
        return hits/total

    def CumulativeHitRate(topNPredicted, leftOutPredictions, ratingCutoff=0):
        hits = 0
        total = 0

        # For each left-out rating
        for userID, leftOutMovieID, actualRating, estimatedRating, _ in leftOutPredictions:
            # Only look at ability to recommend things the users actually liked...
            if (actualRating >= ratingCutoff):
                # Is it in the predicted top 10 for this user?
                hit = False
                for movieID, predictedRating in topNPredicted[int(userID)]:
                    if (int(leftOutMovieID) == movieID):
                        hit = True
                        break
                if (hit) :
                    hits += 1

                total += 1

        # Compute overall precision
        return hits/total

    def RatingHitRate(topNPredicted, leftOutPredictions):
        hits = defaultdict(float)
        total = defaultdict(float)

        # For each left-out rating
        for userID, leftOutMovieID, actualRating, estimatedRating, _ in leftOutPredictions:
            # Is it in the predicted top N for this user?
            hit = False
            for movieID, predictedRating in topNPredicted[int(userID)]:
                if (int(leftOutMovieID) == movieID):
                    hit = True
                    break
            if (hit) :
                hits[actualRating] += 1

            total[actualRating] += 1

        # Compute overall precision
        for rating in sorted(hits.keys()):
            print (rating, hits[rating] / total[rating])

    def AverageReciprocalHitRank(topNPredicted, leftOutPredictions):
        summation = 0
        total = 0
        # For each left-out rating
        for userID, leftOutMovieID, actualRating, estimatedRating, _ in leftOutPredictions:
            # Is it in the predicted top N for this user?
            hitRank = 0
            rank = 0
            for movieID, predictedRating in topNPredicted[int(userID)]:
                rank = rank + 1
                if (int(leftOutMovieID) == movieID):
                    hitRank = rank
                    break
            if (hitRank > 0) :
                summation += 1.0 / hitRank

            total += 1

        return summation / total

    # What percentage of users have at least one "good" recommendation
    def UserCoverage(topNPredicted, numUsers, ratingThreshold=0):
        hits = 0
        for userID in topNPredicted.keys():
            hit = False
            for movieID, predictedRating in topNPredicted[userID]:
                if (predictedRating >= ratingThreshold):
                    hit = True
                    break
            if (hit):
                hits += 1

        return hits / numUsers

    def Diversity(topNPredicted, simsAlgo):
        n = 0
        total = 0
        simsMatrix = simsAlgo.compute_similarities()
        for userID in topNPredicted.keys():
            pairs = itertools.combinations(topNPredicted[userID], 2)
            for pair in pairs:
                movie1 = pair[0][0]
                movie2 = pair[1][0]
                innerID1 = simsAlgo.trainset.to_inner_iid(str(movie1))
                innerID2 = simsAlgo.trainset.to_inner_iid(str(movie2))
                similarity = simsMatrix[innerID1][innerID2]
                total += similarity
                n += 1

        S = total / n
        return (1-S)

    def Novelty(topNPredicted, rankings):
        n = 0
        total = 0
        for userID in topNPredicted.keys():
            for rating in topNPredicted[userID]:
                movieID = rating[0]
                rank = rankings[movieID]
                total += rank
                n += 1
        return total / n

```
- 이것이 바로 이 GetTopN() 함수가 하는 일입니다.  
	
	이 함수는 추천인으로부터 받은 평점 예측의 전체 목록을 가져옵니다. 의 전체 목록을 가져옵니다, 그리고 사용자 ID를 상위 N개의 평점에 매핑하는 를 상위 N개의 평점에 매핑하는 사전을 반환합니다.  
	
	최소 평점 임계값을 전달할 수도 있습니다, 최소 평점 임계값을 전달하여 추천하지 못하도록 최소 평점 임계값을 전달할 수도 있습니다.  
	
	우리가 반환하는 딕셔너리는 사실 기본 딕셔너리 객체입니다, 일반적인 파이썬 딕셔너리와 비슷하지만 하지만 여기에는 기본 빈 값이라는 개념이 있습니다. 아직 사용되지 않은 키에 접근하려고 할 때 라는 개념이 있습니다.  
	
	적중률을 계산하려면, 상위 N개의 딕셔너리에서 를 전달해야 합니다, 그리고 훈련 데이터에서 제외된 테스트 영화 평점 세트 를 전달해야 합니다.  
	
	기억하실지 모르겠지만, 저희는 크로스 검증을 위해 교차 유효성 검사 제외 사용자당 하나의 평점을 보류하고 그리고 추천 능력을 테스트합니다. 추천하는 능력을 테스트합니다.  
	
- 누적 적중률 (CHR)
	누적 적중률(CHR)도 이와 똑같은 방식으로 작동합니다. 평점 컷오프 값이 있다는 점을 제외하면요, 따라서 예측 등급이 없는 경우 예상 평점이 특정 임계값보다 예측 등급이 설정된 임계값보다 높지 않으면 히트를 계산하지 않습니다.  
	  
	57번 라인에서 이 컷오프 값을 테스트하는 위치를 확인할 수 있습니다.  
	  
	그 외에는 히트율 함수와 동일합니다.  
	
- 평점 도달률 (RHR)
	또한 평점 도달률 또는 RHR도 구현할 것입니다, 등급 적중률도 구현하겠습니다.  
	  
	이것은 적중률과 마찬가지로 작동합니다, 하지만 각각의 고유한 평점 값에 대한 적중률을 추적합니다.  
	  
	따라서 히트 수와 총 사용자 수를 추적하는 하나의 변수 대신 총 사용자 수 대신 다른 사전을 사용하여 를 사용하여 각 평점 유형에 대한 조회수와 총합을 추적합니다.  
	  
	그런 다음 마지막에 모두 인쇄합니다.  
	  
	히트율의 또 다른 변형은 평균 상호 히트 순위인데, 이 역시 히트율과 유사합니다.  
	  
	차이점은 각 히트 순위의 역수로 계산하여 상위 N 목록의 최상위 근처에서 발생하는 히트에 더 많은 점수를 부여한다는 것입니다.  
	  
- UserCoverage 
	다음으로 커버리지를 측정할 수 있는데, 여기서는 커버리지를 특정 임계값 이상의 좋은 추천을 하나 이상 보유한 사용자의 비율로 정의합니다. 의 비율로 정의합니다.  
	  
	실제 환경에서는 아마도 카탈로그가 있을 것입니다. 항목 세트보다 더 큰 항목의 카탈로그가 있을 수 있습니다. 항목 카탈로그가 있을 수 있습니다, 그리고 대신 더 큰 집합을 기준으로 커버리지를 계산할 것입니다.  
	  
	하지만 무비렌즈에서 작업해야 하는 데이터의 경우, 제가 생각해낼 수 있는 가장 흥미로운 커버리지 측정 가장 흥미로운 측정치입니다.  
	  
	코드 자체는 간단합니다.  
	  
- Diversity 
	다양성을 측정하려면 우리 시스템의 모든 상위 N개의 추천이 필요할 뿐만 아니라, 데이터의 모든 항목 쌍 사이의 유사성 점수 매트릭스가 매트릭스가 필요합니다.  
	  
	다양성은 설명하기는 쉽지만, 코딩하는 것은 조금 까다롭습니다.  
	  
	먼저 유사도 행렬을 검색합니다, 유사도 행렬은 기본적으로 2×2 배열입니다. 유사도 점수를 포함하는 유사도 점수를 포함하는 유사도 점수를 포함하는 2×2 배열입니다.  
	  
	그런 다음 각 사용자에 대해 한 번에 한 명씩 을 한 번에 한 사용자씩 살펴봅니다.  
	  
	이 itertools.combinations 호출 을 호출하면 상위 N 개 목록 내의 모든 항목 쌍의 의 모든 조합을 반환합니다.  
	  
	그런 다음 각 쌍을 반복하여 각 항목 쌍 간의 유사성을 조회할 수 있습니다.  
	  
	지금이 바로 서프라이즈가 내부 ID를 유지한다는 사실을 서프라이즈는 사용자 및 순차적인 항목 모두에 대해 내부 ID를 유지합니다. 및 순차적인 항목에 대한 내부 ID를 유지합니다, 이는 원시 사용자 ID와는 다르며 및 실제 평점 데이터에 있는 영화 ID와는 다릅니다.  
	  
	유사도 매트릭스는 이러한 내부 ID를 사용합니다, 따라서 유사도 점수를 조회하기 전에 원시 ID를 내부 ID로 변환해야 합니다. 로 변환해야 합니다.  
	  
	모든 유사도 점수를 더합니다, 평균을 구한 다음 1에서 빼면 에서 빼면 다양성 지표를 얻을 수 있습니다.  
	  
	상상할 수 있듯이, 이 코드를 실행하면 추천 항목의 가능한 모든 조합에 대해 추천 항목의 모든 조합에 대해 이 코드를 실행하는 것은 이 코드를 실행하는 것은 계산적으로 매우 집약적입니다.  
	  
	대규모 데이터 세트의 실제 환경에서는 이를 계산할 때 데이터를 샘플링하는 것이 좋습니다.  
	
- Novelty
	마지막으로 훨씬 더 쉬운 '신규성'을 살펴보겠습니다.  
	  
	모든 항목의 인기 순위 사전을 매개변수로 사용하여 인기 순위 사전을 매개변수로 사용합니다, 그런 다음 모든 사용자의 상위 N개의 추천을 살펴보고 추천된 모든 아이템의 인기 순위 평균을 평균을 계산하면 됩니다.  
	  
	이제 추천 시스템을 평가하는 데 필요한 도구가 필요한 도구가 생겼습니다.  
	  
	이제 실제 추천자에서 사용해 보겠습니다.  
