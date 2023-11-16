next : [[004_Evaluating_Recommender_Systems]]
## Introduce
![[Pasted image 20231110223109.png|500]]
## Anaconda
1. Environments >> Create new environment >> RecSys
2. Python Package >> Open Terminal >> `conda install -c conda-forge scikit-surprise`
	- [Surprise' documentation](https://surprise.readthedocs.io/en/stable/index.html) 
1. [link](https://sundog-education.com/RecSys)>> Get the Course Materials >> Movielen dataset
2. Install Spyder >> Openup GettingStarted.py script file  == SVD

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