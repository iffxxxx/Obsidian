## Nearest_Neighbor


## Linear_Classifiers
### Perceptron

## Loss_Function
손실 함수는 현재 분류기가 얼마나 좋은지 알려줍니다. (목적 함수, 비용 함수)

Given a dataset
$${(x_i,y_i)}_{i=0}^{N}$$
of images $x_i$ and labels $y_i$, Loss for a single example is :
$$L_i(f(x_i,W),y_i)$$
Loss for the dataset is
$$L=\frac{1}{N}\sum_{i=0}^{N}L_i(f(x_i,W),y_i)$$

### Cross_Entropy_Loss
$$-\frac{1}{N}\sum_{i=1}^{n}\sum\limits_{c=1}^{C}L_{ic}\log(P_{ic})$$
$n$은 데이터 갯수, 
$C$는 번주 갯수, 
$L$은 실제 값(주로 0 또는 1), 
$P$는 실제 값에 대한 확률 값 (0~1)
