![[Best Prompts for Text-to-Image Models and How to Find Them.pdf]]

## ABSTRACT
Evaluating aesthetics computationally is difficult, so human input is necessary to determine the ideal prompt formulation and keyword combination. In this study, we propose a **human-in-the-loop method** for discovering the most effective combination of prompt keywords using a genetic algorithm. 

## PROMPTS AND HOW TO EVALUATE THEM
standard setup for generative models with text inputs
1. A model gets as an input a natural language text called prompt and outputs a text completion in the case of the text-to-text generation or an image in the case of text-to-image generation.
2. specify- ing the additional information increases the quality of the output images, it is common to put specific keywords before and after the image description
> Example : generate an image of a cat using a text-to-image model
> 	**description.**
> 	Highly detailed painting of a calico cat
> 	**keyword**
> 	, cinematic lighting, dramatic atmosphere, by dustin nguyen, akihiko yoshida, greg tocchini, greg rutkowski, cliff chiang, 4k resolution, luminous grassy background.

## PROCESS
### HUMAN IN THE LOOP
Our method takes as an input a set of textual image descriptions D, a set of all possible keywords K, and a set of the keyword set candidates S and outputs a list of keyword sets 𝑠𝑖 ⊆ K, 𝑠𝑖 ∈ S in the increasing order of their aesthetic appeal to humans.
1. For each pair of a description 𝑑𝑖 ∈ D and a keyword set 𝑠𝑗 ∈ S, generate four images 𝐼𝑖 𝑗 = {𝐼𝑖 𝑗1 , . . . , 𝐼𝑖 𝑗4 }.
2. For each image description 𝑑𝑖 ∈ D, **sample 𝑛𝑘 log2 (𝑛) pairs of images** (𝐼𝑖 𝑗 , 𝐼𝑖𝑘 ) generated with different keyword sets, where 𝑛 is the number of keyword sets to compare, and 𝑘 is the number of redundant comparisons to get the sufficient number of comparisons.
3. Run a **pairwise comparison crowdsourcing task** in which the workers are provided with a description and a pair of images, and they have to select the best image without knowing the keyword set.
4. For each description 𝑑𝑖 ∈ D, aggregate the pairwise com- parisons using the **Bradley-Terry probabilistic ranking algo- rithm**, recovering a list 𝑟𝑖 = 𝑠1 ≺ · · · ≺ 𝑠𝑛 of keyword sets ordered by their visual appeal to humans.
5. For each keyword set, compute the average rank in the lists recovered for the descriptions. As a result, we quantify the quality of a keyword set as its rank averaged per description.

### ITERATIVE ESTIMATION OF THE BEST KEYWORD SET
1. Obtain the next candidate keyword set 𝑠𝑗 based on quality metrics of currently evaluated keyword sets using the **genetic algorithm**.
2. For each image description 𝑑𝑖 ∈ D, sample 𝑘 (𝑛 + 1) log2 (𝑛 + 1) − 𝑛 log2 𝑛 pairs (𝐼𝑖𝑘 , 𝐼𝑖 𝑗 ) of images gen- erated using keywords from the new candidate set and al- ready evaluated keyword sets. We do this to sustain 𝑘𝑛 log2 𝑛 comparisons in total.
3. Evaluate the quality of the obtained keyword set (steps 3-5 in Section 2)

To construct a set of possible keywords, we have parsed the Sta- ble Diffusion Discord2 and took the 100 most popular keywords.

## EXPERIMENT
### DISSCUSION
We show that adding the prompt keywords significantly improves the quality of generated images. **We also noticed that the most popular keywords do not result in the best-looking images.** To estimate the importance of different keywords, we trained a random forest regressor on the sets of keywords and their metrics that is similar to W&B Sweeps.

We can not con- clude that the found set of keywords is the best one since the genetic algorithm can easily fall into a local minimum. However, since we release all the comparisons, generated images, and code, it is possible for the community to improve on our results. For instance, one can run a genetic algorithm from a different initialization, for a larger number of iterations, or even with more sophisticated optimization methods. 
