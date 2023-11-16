# 카메라 매트릭스 일반화
### 세계에서 카메라로의 좌표 변환

#### $X^{W}- C^{W}$ translate
$C^W$ 는 카메라의 위치
$X^W$ 는 ?

#### 이종 좌표계 (Heterogeneous Coordinates)
$X^{C}=R(X^{W}-C^{W})$  translate
rotate를 해야하는 이유 : 카메라가 어떤 방향을 바라보고 있어야하는지 정의하지 않음

#### 동차 좌표계 (Homogeneous Coordinates)
~는 추정치

#### 좌표변환
$x^{I} ~K[I|O]X^C$
이전 카메라 매트릭스는 카메라 좌표계의 동차 3D 좌표를 위한 것

#### 일반적인 핀홀 카메라 매트릭스
$P = K[R|t],  where\   t = -RC$ 

#### 보다 일반적인 카메라 매트릭스
정사각형이 아닌 픽셀, 센서가 기울어질 수 있다
$$P =
\begin{pmatrix} 
a_{x} & s & a_n \\ 

\end{pmatrix}
$$

#### 교정 및 자세 추정 (Calibration & Pose Estimation)
Given $n$ points with known 3D coordinates $X_i$ and Known image projections $x_i$ ,
estimate the camera parameters $P$ such that $x^t_{i}$ 

## 기하학적 비전
여러개의 이미지를 통해서 2D 정보로 3D의 정보를 추론할 수 있지 않을까?
### 삼각측량
3D 점을 투영한 두 개 이상의 이미지(알려진 카메라 매트릭스 사용)가 주어지면, 점의 좌표를 찾음

두 광선을 연결하는 가장 짧은 세그먼트를 찾습니다.
X를 그 세그먼트의 중간 지점이라 합시다.

#### 다시점 기하학
##### 선형 접근 방식
Rewrite cross product as matrix multiplication
$AX$ 가 손실함수고 $min$ 밑에 $X$는 $AX$를 최소화 할 수 있는 최소

##### 비선형 접근 방식
FInd $X$ that minimizes the 2D reprojections errors
Solver를 통해서 풀거나

#### 에피폴라 기하학 (Epipolar)
원점들 2개를 있는 선 (baseline)이 있다고 가정
에피폴$(e, e')$은 기준선과 이미지 평면이 교차하는 곳
**즉 에피폴은 다른 카메라의 위치와 이미지 평면의 투영이다**
에피폴은 유한하며 이미지에 표현된다

이미지 평면에 평행할 경우 에피폴은 무한히 멀리 떨어져 있고 
이미지 평면에 수직인 모션 : 에피폴은 카메라의 원점과 일치 에피폴라 선은 원점에서 나옴

파노라마를 찍을때 주로 사용
점찍고 위치를 맞추는데 사용, 에피폴라 라인이 이어질 수 있도록 설정

#### 움직임의 구조 문제 (Structure from Motion Problems) SFM
많은 이미지가 주어지면 우리는 어떻게 해당 장면의 3D모델을 구현할 수 있는가?
투영되었을때 에러가 최소화될 수 있도록

Feature detection -> Feature matching