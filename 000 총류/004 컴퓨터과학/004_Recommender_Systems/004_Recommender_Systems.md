next : [[004_Evaluating_Recommender_Systems]]
## Introduce
![[Pasted image 20231110223109.png|500]]
## Anaconda
1. Environments >> Create new environment >> RecSys
2. Python Package >> Open Terminal >> `conda install -c conda-forge scikit-surprise`
	- [Surprise' documentation](https://surprise.readthedocs.io/en/stable/index.html) 
3. [link](https://sundog-education.com/RecSys)>> Get the Course Materials >> Movielen dataset
4. Install Spyder >> Openup GettingStarted.py script file  == SVD
##### MovieLens.py #Code
```run-python
import os
import csv
import sys
import re

from surprise import Dataset
from surprise import Reader

from collections import defaultdict
import numpy as np

class MovieLens:

    movieID_to_name = {}
    name_to_movieID = {}
    ratingsPath = '../ml-latest-small/ratings.csv'
    moviesPath = '../ml-latest-small/movies.csv'
    
    def loadMovieLensLatestSmall(self):

        # Look for files relative to the directory we are running from
        os.chdir(os.path.dirname(sys.argv[0]))

        ratingsDataset = 0
        self.movieID_to_name = {}
        self.name_to_movieID = {}

        reader = Reader(line_format='user item rating timestamp', sep=',', skip_lines=1)

        ratingsDataset = Dataset.load_from_file(self.ratingsPath, reader=reader)

        with open(self.moviesPath, newline='', encoding='ISO-8859-1') as csvfile:
                movieReader = csv.reader(csvfile)
                next(movieReader)  #Skip header line
                for row in movieReader:
                    movieID = int(row[0])
                    movieName = row[1]
                    self.movieID_to_name[movieID] = movieName
                    self.name_to_movieID[movieName] = movieID

        return ratingsDataset

    def getUserRatings(self, user):
        userRatings = []
        hitUser = False
        with open(self.ratingsPath, newline='') as csvfile:
            ratingReader = csv.reader(csvfile)
            next(ratingReader)
            for row in ratingReader:
                userID = int(row[0])
                if (user == userID):
                    movieID = int(row[1])
                    rating = float(row[2])
                    userRatings.append((movieID, rating))
                    hitUser = True
                if (hitUser and (user != userID)):
                    break

        return userRatings

    def getPopularityRanks(self):
        ratings = defaultdict(int)
        rankings = defaultdict(int)
        with open(self.ratingsPath, newline='') as csvfile:
            ratingReader = csv.reader(csvfile)
            next(ratingReader)
            for row in ratingReader:
                movieID = int(row[1])
                ratings[movieID] += 1
        rank = 1
        for movieID, ratingCount in sorted(ratings.items(), key=lambda x: x[1], reverse=True):
            rankings[movieID] = rank
            rank += 1
        return rankings
    
    def getGenres(self):
        genres = defaultdict(list)
        genreIDs = {}
        maxGenreID = 0
        with open(self.moviesPath, newline='', encoding='ISO-8859-1') as csvfile:
            movieReader = csv.reader(csvfile)
            next(movieReader)  #Skip header line
            for row in movieReader:
                movieID = int(row[0])
                genreList = row[2].split('|')
                genreIDList = []
                for genre in genreList:
                    if genre in genreIDs:
                        genreID = genreIDs[genre]
                    else:
                        genreID = maxGenreID
                        genreIDs[genre] = genreID
                        maxGenreID += 1
                    genreIDList.append(genreID)
                genres[movieID] = genreIDList
        # Convert integer-encoded genre lists to bitfields that we can treat as vectors
        for (movieID, genreIDList) in genres.items():
            bitfield = [0] * maxGenreID
            for genreID in genreIDList:
                bitfield[genreID] = 1
            genres[movieID] = bitfield            
        
        return genres
    
    def getYears(self):
        p = re.compile(r"(?:\((\d{4})\))?\s*$")
        years = defaultdict(int)
        with open(self.moviesPath, newline='', encoding='ISO-8859-1') as csvfile:
            movieReader = csv.reader(csvfile)
            next(movieReader)
            for row in movieReader:
                movieID = int(row[0])
                title = row[1]
                m = p.search(title)
                year = m.group(1)
                if year:
                    years[movieID] = int(year)
        return years
    
    def getMiseEnScene(self):
        mes = defaultdict(list)
        with open("LLVisualFeatures13K_Log.csv", newline='') as csvfile:
            mesReader = csv.reader(csvfile)
            next(mesReader)
            for row in mesReader:
                movieID = int(row[0])
                avgShotLength = float(row[1])
                meanColorVariance = float(row[2])
                stddevColorVariance = float(row[3])
                meanMotion = float(row[4])
                stddevMotion = float(row[5])
                meanLightingKey = float(row[6])
                numShots = float(row[7])
                mes[movieID] = [avgShotLength, meanColorVariance, stddevColorVariance,
                   meanMotion, stddevMotion, meanLightingKey, numShots]
        return mes
    
    def getMovieName(self, movieID):
        if movieID in self.movieID_to_name:
            return self.movieID_to_name[movieID]
        else:
            return ""
        
    def getMovieID(self, movieName):
        if movieName in self.name_to_movieID:
            return self.name_to_movieID[movieName]
        else:
            return 0
```
##### GettingStarted.py #Code 
```run-python
from MovieLens import MovieLens
from surprise import SVD


def BuildAntiTestSetForUser(testSubject, trainset):
    fill = trainset.global_mean

    anti_testset = []
    
    u = trainset.to_inner_uid(str(testSubject))
    
    user_items = set([j for (j, _) in trainset.ur[u]])
    anti_testset += [(trainset.to_raw_uid(u), trainset.to_raw_iid(i), fill) for
                             i in trainset.all_items() if
                             i not in user_items]
    return anti_testset

# Pick an arbitrary test subject
testSubject = 85

ml = MovieLens()

print("Loading movie ratings...")
data = ml.loadMovieLensLatestSmall()

userRatings = ml.getUserRatings(testSubject)
loved = []
hated = []
for ratings in userRatings:
    if (float(ratings[1]) > 4.0):
        loved.append(ratings)
    if (float(ratings[1]) < 3.0):
        hated.append(ratings)

print("\nUser ", testSubject, " loved these movies:")
for ratings in loved:
    print(ml.getMovieName(ratings[0]))
print("\n...and didn't like these movies:")
for ratings in hated:
    print(ml.getMovieName(ratings[0]))

print("\nBuilding recommendation model...")
trainSet = data.build_full_trainset()

algo = SVD()
algo.fit(trainSet)

print("Computing recommendations...")
testSet = BuildAntiTestSetForUser(testSubject, trainSet)
predictions = algo.test(testSet)

recommendations = []

print ("\nWe recommend:")
for userID, movieID, actualRating, estimatedRating, _ in predictions:
    intMovieID = int(movieID)
    recommendations.append((intMovieID, estimatedRating))

recommendations.sort(key=lambda x: x[1], reverse=True)

for ratings in recommendations[:10]:
    print(ml.getMovieName(ratings[0]))
```


## What is a recommender system
A recommender system is Not a system that "recommends" arbitrary values.
That describes machine learning in general.

A system that predicts ratings or preferences a user might give to an item
Often these are sorted and presented as "top-N" recommendations
Also known as recommender engines, recommendation systems, recommendation platforms.

It's all data-driven.
recommending things, musics, posts, people, search results

## Implicit vs Explicit
### Explicit
Star reviews where you are explicitly asking a user for their opinion of something.
### Implicit
Youtube uses minutes watched heavily in its recommendation algorithms.
Implicit data can give you much more data to work with.

When designing a recommender system, It's important to think about what souces of data you have about your user's interest and start from there.

Customers don't want to see your ability to predict their rating for an item.
They just want to see things they're likely to love.

We can infer you like something because you chose to interact with it somehow.

## top-N_recommenders
![[Pasted image 20231111031421.png|500]]
- In practice this is usually a big, distributed NoSQL data store like Cassandra or MongoDB or memcached or something, because it has to vend lots of data.
- Ideally, this interest data is normalized using techniques such as mean centering or Z scores to ensure that the data is comparable between users. But, in the real world your data is often too sparse to normalize it effectively
- The first step : generate recommendation candidates, items we  think might be intersting to the user based on their past behavior.
- This diagram is a sibplified version of what we call item-based collaborative filtering and it's the same algorithm Amazon published in 2003. The hard part is building up that database of item similarities.
![[Pasted image 20231111032704.png|500]]
- To build up a database ahead of time of predicted ratings of every item by every user.
- The candidate generation phase is then just retrieving all of the rating predictions for a given user for every item, and ranking is just a matter of sorting them. This requires you to look at every single item in your catalog for every single user.
- However, which isn't very efficient at runtime.