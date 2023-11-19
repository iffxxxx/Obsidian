next : [[004_Neighborhood-Based_Collaborative_Filtering]]

- If we know a given user likes science fiction movies,
	it's reasonable to recommend other science fiction movies to that user.
	![[Pasted image 20231111183451.png|500]]
	- In all, there are 18 different possible genres for every movie, so we can imagine some sort of similarity measure that looks at how many genres any given pair of movies have in common.
	  
	- So, what's a good way of doing that mathematically?

## Cosine similarity
- One approach that works really well in a lot of different situations is the cosine similarity metric.
	![[Pasted image 20231111195630.png|600]]
	- So, let's start by plotting Toy Story.
		It's considered both a comedy and an adventure,
		so that gives us the coordinates one, one.
	- Next, let's look at Grumpier Old Men.
		According to MovieLens, it's a comedy but not an adventure,
		so that gives us the coordinates one, zero, here.
		
	- We can think of these positions as vectors
		by just drawing a line from the origin of the graph to each movie, like so.
		
	- Now, look at the angle between these vectors.
		That tells us something about how similar these two movies are in terms of their genres.
		
	- Let's call that angle theta.
		In this case, it's 45 degrees.
		But 45 degrees isn't a useful similarity metric.
		Ideally, we wanna measure this between zero and one, where zero means not at all similar and one means totally the same thing.
		
	- Well, it turns out the cosine of that angle does just that.
		Remember, the cosine of an angle works like this.
		As theta approaches 90 degrees, it will become zero,
		and as it approaches zero degrees, it becomes one.
		The cosine of 45 degrees is about 0.7,
		so we could say that the cosine similarity score between Toy Story and Grumpy Old Men is 0.7, based on them both sharing a genre of comedy.

### Multi-dimensional space
- So, how do we scale this up to all 18 genres that we really have?
	We need to find the angles between movies and 18-dimensional space, where every dimension represents a movie genre.
	![[Pasted image 20231111201106.png|500]]
	
- Multi-dimensional cosines
	Our next problem is how to compute the cosines between vectors in multidimensional space.
	$$CosSim(x,y)=\frac{\sum_i{x_iy_i}}{\sqrt{\sum_i{x_i^2}}\sqrt{\sum_i{y_i^2}}}$$
	It turns out that another nice thing about cosines is that this is pretty simple to do, as well.
	
	- Let's break this down.
		  Let's look at the two movies that we want to compute the cosine similarity between.
		We'll call these two movies X and Y. 
		So, the cosine similarity of X and Y is given by this stuff on the right.
		
		- It says to take the sum across I dimensions of the products of X and Y in each dimension.
			Say we start with the action dimension. We take the product of movies X and Y on the action dimension, then we add in the product of X and Y on the adventure dimension, and so on, and so forth.
		- On the bottom, 
			  we sum up all the squares of each genre dimension for movie X and we sum up all the squares of each movie dimension of movie Y.
			
		- So, by taking the summation of the genre of products between X and Y, and dividing it by the square roots of the summations of the products of each individual movie's genres, squared, we end up with a cosine similarity score.
	- Turning it into code
		  ![[Pasted image 20231111202430.png]]

## K-Nearest-Neighbors and Content Recs
### time similarity
![[Pasted image 20231111202721.png|500]]
- The other thing we said we wanted to consider was the release years of each movie. 
	- How do we assign a similarity score based on release years alone?
		You have to think about the nature of the data you have and what makes sense.
		
		- Well, a decade seems like a reasonable starting point.
			I mean, Sci-Fi movies in the 70's look pretty different from Sci-Fi movies in the 80's, for example.
			
		- Now we need to come up with some sort of mathematical function that smoothly scales that into the range zero to one.
		  
		  ![[Pasted image 20231111203707.png|400]]
		 -  I chose an exponential decay function.
			It ends up looking like this.
			Just look at the right side of the graph, since we're taking the absolute values.
			At a year difference of zero, we get a similarity score on the Y axis of one, which is what we want.
			
			And this similarity score decays exponentially,
			getting pretty small at around a difference of 10 years and almost nothing at 20.

### K-nearest-neighbors
- So how do we turn these similarities between movies based on their attributes into actual rating predictions?
	Remember, our recommendation algorithms in surpriselib have one job, 
	**predict a rating for a given user for a given movie.** >> k-nearest-neighbors
	![[Pasted image 20231111204807.png|500]]
	1. We start by measuring the content-based similarity between everything a given user has rated, and the movie we want to predict a rating for.
	2. We select some number, call it K, of the nearest-neighbors to the movie whose rating we're trying to predict.
		You can define nearest however you like, so in our case, we'll say the nearest-neighbors are the ones with the highest content-based similarity scores to the movie we're making a prediction for.
		
	- For example
		we could for example select the 40 movies whose genres and release dates most closely match the movie we want to evaluate for this user.
		- It's just selecting some number of things that are close to the thing you're interested in, 
		- that is, its neighbors, and predicting something about that item **based on the properties of its neighbors**.
	3. So to turn these top 40 closest movies into an actual rating prediction,
		we can just take a weighted average of their similarity scores to the movie
		whose rating we're trying to predict, weighting them by the rating the user gave them.
		
#### knn code
![[Pasted image 20231111205148.png]]
1. This is the meaty part of our prediction function, which takes in a user, U, and an item, I, that we want to predict a rating for. 
   We start with a list called neighbors, and go through every movie the user has rated, populating it with a content-based similarity score between each movie and the movie we're trying to predict.
   We pre-computed those similarity scores in the self.similarities array.
   
2. Next, we use **heapq.nlargest** to quickly and easily sort that list into the top-K movies with the highest similarity scores to the movie in question.
   After that, it's just a matter of computing the weighted average of the top-K similar movies, weighted by the ratings the user gave them.

## A Note on Using Implicit Ratings.
- The idea that some ratings aren't really just somebody giving something an explicit five star rating or you know giving a thumbs up or thumbs down to something. Sometimes our ratings signals that we look at are more implicit.
	
- So for example, somebody's clicking on a link or purchasing something.
	Those are implicit indications of interest instead of an explicit rating.
	
- Do you need to handle those differently?
	there's like a fundamental difference in how this data is used and how it's useful.
	So implicit data can often be very powerful.
	
	It tends to be very **plentiful** because you're not relying on people to interact with a widget on your website and voluntarily give you an explicit rating. It's just being gleaned through their **actions on your Web site naturally** so it tends to be very plentiful, when you're dealing with implicit data and depending on what kind of implicit data is it can actually be even more powerful and more higher quality than explicit ratings can be.
	
- How do you actually treat them as ratings?
	Well it turns out you can use implicit ratings just the same ways you treat explicit ratings.
	
	All you have to do is model a click or purchase or whatever the implicit signal is as a **positive** rating
	of some arbitrary yet consistent value.
	
	Maybe you treat them also rating of one or rating of five.
	I don't care just make sure that it's some constant consistent value.
	
	
	- The only thing you need to be careful of is to not give into the temptation of modeling the absence of a click or purchase as a **negative rating**.
		So if somebody does not purchase something that doesn't mean that it's a zero star rating it just means that you don't know about it.
		
		- Maybe they didn't see it at all.
		- Maybe they didn't click on it because they were not presented with that click in the first place, where they were not presented with an opportunity to purchase something in the first place.
		- It's just **missing data**.
		
	- Not all implicit ratings are created equal purchases where people are actually opening their wallet and speaking with their money tend to be very high quality implicit ratings.
	 - But if there's no money on the line and nobody has anything to lose then you should question how high quality that data really is.
	   
## Codes
### ContentRecs.py
### Conte
- 이 파일은 앞서 테스트할 때 작성한 RecsBakeoff 파일 추천 평가 프레임워크를 테스트하면서 작성한 파일과 매우 유사합니다.
	
	유일한 차이점은 무작위 데이터에 대해 무작위 알고리즘과 비교한다는 점입니다, 무작위 추천에 대해 새로운 ContentKNNAlgorithm 을 무작위 추천과 비교한다는 것입니다.
	
```run-python
from surprise import AlgoBase
from surprise import PredictionImpossible
from MovieLens import MovieLens
import math
import numpy as np
import heapq

class ContentKNNAlgorithm(AlgoBase):

    def __init__(self, k=40, sim_options={}):
        AlgoBase.__init__(self)
        self.k = k

    def fit(self, trainset):
        AlgoBase.fit(self, trainset)

        # Compute item similarity matrix based on content attributes

        # Load up genre vectors for every movie
        ml = MovieLens()
        genres = ml.getGenres()
        years = ml.getYears()
        mes = ml.getMiseEnScene()
        
        print("Computing content-based similarity matrix...")
            
        # Compute genre distance for every movie combination as a 2x2 matrix
        self.similarities = np.zeros((self.trainset.n_items, self.trainset.n_items))
        
        for thisRating in range(self.trainset.n_items):
            if (thisRating % 100 == 0):
                print(thisRating, " of ", self.trainset.n_items)
            for otherRating in range(thisRating+1, self.trainset.n_items):
                thisMovieID = int(self.trainset.to_raw_iid(thisRating))
                otherMovieID = int(self.trainset.to_raw_iid(otherRating))
                genreSimilarity = self.computeGenreSimilarity(thisMovieID, otherMovieID, genres)
                yearSimilarity = self.computeYearSimilarity(thisMovieID, otherMovieID, years)
                #mesSimilarity = self.computeMiseEnSceneSimilarity(thisMovieID, otherMovieID, mes)
                self.similarities[thisRating, otherRating] = genreSimilarity * yearSimilarity
                self.similarities[otherRating, thisRating] = self.similarities[thisRating, otherRating]
                
        print("...done.")
                
        return self
    
    def computeGenreSimilarity(self, movie1, movie2, genres):
        genres1 = genres[movie1]
        genres2 = genres[movie2]
        sumxx, sumxy, sumyy = 0, 0, 0
        for i in range(len(genres1)):
            x = genres1[i]
            y = genres2[i]
            sumxx += x * x
            sumyy += y * y
            sumxy += x * y
        
        return sumxy/math.sqrt(sumxx*sumyy)
    
    def computeYearSimilarity(self, movie1, movie2, years):
        diff = abs(years[movie1] - years[movie2])
        sim = math.exp(-diff / 10.0)
        return sim
    
    def computeMiseEnSceneSimilarity(self, movie1, movie2, mes):
        mes1 = mes[movie1]
        mes2 = mes[movie2]
        if (mes1 and mes2):
            shotLengthDiff = math.fabs(mes1[0] - mes2[0])
            colorVarianceDiff = math.fabs(mes1[1] - mes2[1])
            motionDiff = math.fabs(mes1[3] - mes2[3])
            lightingDiff = math.fabs(mes1[5] - mes2[5])
            numShotsDiff = math.fabs(mes1[6] - mes2[6])
            return shotLengthDiff * colorVarianceDiff * motionDiff * lightingDiff * numShotsDiff
        else:
            return 0

    def estimate(self, u, i):

        if not (self.trainset.knows_user(u) and self.trainset.knows_item(i)):
            raise PredictionImpossible('User and/or item is unkown.')
        
        # Build up similarity scores between this item and everything the user rated
        neighbors = []
        for rating in self.trainset.ur[u]:
            genreSimilarity = self.similarities[i,rating[0]]
            neighbors.append( (genreSimilarity, rating[1]) )
        
        # Extract the top-K most-similar ratings
        k_neighbors = heapq.nlargest(self.k, neighbors, key=lambda t: t[0])
        
        # Compute average sim score of K neighbors weighted by user ratings
        simTotal = weightedSum = 0
        for (simScore, rating) in k_neighbors:
            if (simScore > 0):
                simTotal += simScore
                weightedSum += simScore * rating
            
        if (simTotal == 0):
            raise PredictionImpossible('No neighbors')

        predictedRating = weightedSum / simTotal

        return predictedRating
```
- 이 코드는 Surprise 라이브러리를 사용하여 Content-Based 추천 알고리즘인 ContentKNN을 구현했습니다.

1. **클래스 초기화:**
    
    ```run-python
    def __init__(self, k=40, sim_options={}):     
	    AlgoBase.__init__(self)     
	    self.k = k
	```
    
    - `ContentKNNAlgorithm` 클래스를 초기화합니다. `k`는 이웃의 수를 나타내며, `sim_options`은 유사도 계산 옵션을 나타냅니다.
2. **모델 학습 (`fit` 메서드):**
    
    ```run-python
	def fit(self, trainset):     
		# ...
	```
    
    - Surprise의 `AlgoBase`를 상속받아 모델을 학습하는 메서드입니다. 주어진 학습 데이터셋을 기반으로 아이템 간의 유사도 행렬을 계산합니다.
3. **아이템 간 유사도 계산:**
    
    ```run-python
    self.similarities = np.zeros((self.trainset.n_items, self.trainset.n_items))
    ```
    
    - 아이템 간의 유사도를 계산하기 위한 행렬을 초기화합니다.
    
    ```run-python
	for thisRating in range(self.trainset.n_items):     
		# ...
	```
    
    - 모든 아이템 조합에 대해 장르 유사도와 연도 유사도를 계산하여 유사도 행렬을 채웁니다.
4. **유사도 계산 함수들:**
    
    - `computeGenreSimilarity`, `computeYearSimilarity`, `computeMiseEnSceneSimilarity`는 아이템 간의 각각의 유사도를 계산하는 함수입니다.
5. **평점 예측 (`estimate` 메서드):**
    
    ```run-python
    def estimate(self, u, i):     
	    # ...
	```
    
    - 사용자 `u`가 아이템 `i`에 대한 평점을 예측하는 메서드입니다.
    
    ```run-python
    for rating in self.trainset.ur[u]:     
	    # ...
	```
    
    - 사용자가 평가한 아이템에 대한 유사도를 계산하여 이웃을 찾습니다.
    
    ```run-python
    k_neighbors = heapq.nlargest(self.k, neighbors, key=lambda t: t[0])
    ```
    
    - 가장 유사한 이웃들을 찾습니다.
    
    `predictedRating = weightedSum / simTotal`
    
    - 이웃들의 가중 평점을 사용하여 예측 평점을 계산합니다.

이 알고리즘은 아이템 간의 콘텐츠 유사도를 계산하여, 사용자의 이전 평점을 기반으로 아이템을 예측합니다. `computeGenreSimilarity`, `computeYearSimilarity`, `computeMiseEnSceneSimilarity` 함수들은 아이템 간의 특징 유사도를 계산하는데 사용됩니다.
## Bleeding Edge Alert! Mise en Scene Recommendations
[link](https://ceur-ws.org/Vol-1673/paper3.pdf)
- Some recent research and content based filtering has surrounded the use of mise en scene data.
	Technically, mise en scene refers to the placement of objects in a scene, but the researchers are using this term a bit more loosely to refer to the properties of the scenes in a movie or movie trailer.
	
- The idea is to extract properties from the film itself that can be quantified and analyzed and see if we can come up with better movie recommendations by examining the content of the movie itself scene by scene.
	- What sort of attributes are we talking about?
		![[Pasted image 20231111214841.png|500]]
		Here's the list of attributes that the research team extracted for a movie trailers associated with the movie lens data set.
		
		It includes things like average shot length, color variance, how much motion is in each scene, how scenes are lit, and things like that.
		
		So in principle, this should give us a feel as to the pacing and mood of the film just based on the film itself.
		
- You can't really predict how real people will react to new recommendations they haven't seen before.
	Personally, I'd be tempted to test this in an AB test to see how it performs.
	
	however, they note that it doesn't do any favors to accuracy, but it does increase diversity.
	But again, increased diversity isn't always a good thing when it comes to recommendations. It may just mean that you're recommending random stuff that has no correlation to the user's actual interests.
	
### My Results
![[Pasted image 20231112002809.png|600]]
- But combining these attributes together leads to more interesting results, and that's true in general.
	The most successful recommender systems are the ones
	that combine many sources of data, and even many different algorithms, to produce a system
	that is more than just the sum of its parts.
	
- How would you go about making these results even better based on what you've learned so far?
	Well, we do have popularity ranking data handy.
	It would be tempting to use popularity, at least as a tie-breaker.
	
	- I bet the release year-based recommendations would be a lot better if we had a secondary sort based on popularity, for example.
	- If you're up for more of a challenge, try that out.
	- See if you improve the release year-based recommendations by sorting the k nearest neighbors within a given year by popularity.
	  
	- That's what developing recommender systems is all about; just trying new ideas and seeing what works for your specific users and items that you're working with. It's never a one size fits all sort of thing.
	
	- Better year-based recs ![[Pasted image 20231112003955.png]]
	1. I did was go back into ContentKNNAlgorithm.py and modify it to only use release years as a criterion.
		   
	2. So to have a secondary sort in your top-N results, all we need to do is modify the SampleTopNRecs function in Evaluator.py, which is where we are displaying our top-N recommendations in our test framework.
		-  We already have the MovieLens data available to this function, so we can extract popularity data for each recommendation candidate while we're building up the list of them.
		  
		  - You can see that in your recommendations.append call here.
		
	3. Then to do the secondary sort, we first sort the list by popularity, so the most popular items are at the top of the list. This happens to be in element number two of our recommendation tuples.
		
	4. Then we can sort by element one, which is the estimated rating. If we have a tie when ranking based on estimated ratings, the original sort by popularity will still be in place from before.

### Code