next : [[004_Content-based_filtering]]
## Surpriselib algorithm base class
![[Pasted image 20231111170136.png|500]]
- Surpriselib has a Python base class called AlgoBase.
	for example, AlgoBase, that contain functions and variables that can be shared by other classes that inherit from that base class.
	- So for example, here we have an SVD class which inherits from the AlgoBase base class.
		That means that our SVD class may have functions and data specific to the SVD recommender algorithm, but it also has access to the functions and data defined in the AlgoBase base class.
	- SVD, KNNBasic, SVDpp, and any custom algorithm we might develop that inherits from AlgoBase, can all be used in the same way.

## Creating a custom algorithm
![[Pasted image 20231111172014.png|500]]
- So, how do you write your own recommender algorithm that's compatible with surpriselib?
	- The first, self, is the first argument in any class method in object oriented Python.
		It's a reference to the instance of the object that is currently being worked with,
		so you can access variables associated with that instance.
		
	- Next it takes in a user ID and an item ID.
		So, when estimate is called by the surpriselib framework,
		it's asking you to predict a rating
		for the user and item passed in.
		- These user and item ID's are inner ID's by the way,
			ID's that are used internally, and must be mapped back
			to the raw user and item ID's in your source data.
			
	- In this simple example, our new recommender algorithm called MyOwnAlgorithm, just predicts a rating of three stars for absolutely everything and everybody.

### Building on top of surpriselib
![[Pasted image 20231111172539.png|500]]
- So to do that, we're going to create a new class called EvaluatedAlgorithm.
	It contains an algorithm from surpriselib,
	but introduces a new function called Evaluate that runs all of the metrics
	in RecommenderMetrics on that algorithm.
	
- So, this class makes it easy to measure accuracy, coverage, 
	diversity, and everything else on a given algorithm.
	- It uses the functions in the RecommenderMetrics class
		we wrote already to do this,
		so we don't have to re-write all of that code.
	- Now, to evaluate a recommender system in several different ways,
		we'll want to slice up our training data
		into train and test splits in various different ways.
		
- That's what our EvaluationData class is for.
		It takes in a DataSet, which might come from our class
		that loads MovieLens data for example,
		and creates all the train/test splits needed
		by our EvaluatedAlgorithm class.
		So you can see how this all starts to fit together.
		We can start by creating an instance of EvaluationData
		for a given data set, which will slice and dice that data
		in all the ways need it to evaluate it,
		and then we can test many different algorithms
		by wrapping those algorithms
		with an EvaluatedAlgorithm instance.
		Then call the Evaluate function on EvaluatedAlgorithm,
		passing in our EvaluationData,
		to measure the performance of that algorithm.
		
	- Under the hood, EvaluatedAlgorithm will use
		all the functions we defined in RecommenderMetrics to measure accuracy, hit rate,
		diversity, novelty, and coverage.

### algorithm bake-offs
![[Pasted image 20231111173048.png|500]]
- Our Evaluator class just takes in a raw dataset, say from MovieLens, and the first thing it does
	is create an EvaluatedDataset object from it that it uses internally.
	
- Then, you just call AddAlgorithm for each algorithm you want to compare.
	This creates an EvaluatedAlgorithm
	under the hood within the Evaluator,
	and adds it to a list internally called algorithms.

## It's just this easy
1. Load up common data set for the recommender algorithms
   (evaluationData, rankings) = LoadMovieLensData()
2. Construct an Evaluator to, you know, evaluate them 
   evaluator = Evaluator(evaluationData, ranking)
3. Throw in an SVD recommender
   SVDAlgorithm = SVD(random_state = 10)
   evaluator.AddAlgorithm(SVDAlgorithm, "SVD")
4. Just make random recommendations
   Random = NormalPredictor()
   evaluator.AddAlgorithm(Random,  "Random")
5. Fight!
   evaluator.Evaluate(True)

## Codes
- ### RecsBakeOff.py
	
	