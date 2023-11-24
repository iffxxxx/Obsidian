> Any periodic or aperiodic waveform, no matter how complex, can be analyzed, or decomposed, into a set of simple sinusoid waves with calculated frequencies, amplitudes, phase angles


![[Pasted image 20231002014949.png|500]]
![[Fourier_transform_time_and_frequency_domains_(small).gif]]
모든 신호는 단순한 신호의 조합으로 나타낼 수 있고, 이 단순한 신호는 사인파로 나타낼 수 있다.

즉 임의의 주기함수는 삼각함수의 합으로 표현될 수 있고, 이는 즉 **정현파의 선형결합**으로 모든 신호를 표현할 수 있다는 말이다.

## Fourier series (퓨리에 급수)
The Fourier series of a function $f$ defined on the interval $(-p,p)$ is given by
$$f(x)=\frac{a_0}{2}+\sum\limits_{n=1}^{\infty}(a_n\cos\frac{n\pi}{p}x+b_n\sin\frac{n\pi}{p}x)$$
$where$
$$f(x)\begin{cases}a_0=\frac{1}{p}\int_{-p}^{p}f(x)dx \\\\
a_n= \frac{1}{p}\int_{-p}^{p}f(x)\cos \frac{n\pi}{p}dx,\;if\;even\;function\\\\
b_n=\frac{1}{p}\int_{-p}^{p}f(x)\sin \frac{n\pi}{p}dx,\;if\;odd\;function
\end{cases}$$
[[412 Periodic Functions]]
$\sum\limits_{n=1}^{\infty}$ : $\cos$ 과 $\sin$ 을 무한대로 많이 섞어서 사용하면 무슨 주기함수도 만들 수 있다.
왜냐하면 $\sin$과 $\cos$은 직교함수[[412_Orthogonal_Functions#Basis Vector]]이기에 2차원 위의 어떤 주기성 함수들도 표현 가능하다
#### DC
$\frac{a_0}{2}$ : DC (직류), 상수의 특징을 가진다.
Static Equilibrium (정적 평형) = $F_{spring} =F_{gravity}$ 

#### AC
$\sum\limits_{n=1}^{\infty}(a_n\cos\frac{n\pi}{p}x+b_n\sin\frac{n\pi}{p}x)$ : AC (교류), 주기성을 가진다.
Vibration / Oscillation  (진동)
[[413 Euler's formula#Taylor series]]를 보면 $\sin \propto x^{2n+1}$기에 홀함수고
$\cos \propto x^{2n}$기에 짝함수다.

### Euler's fomular

$$\hat f(\omega)=\int_{-\infty}^{\infty}f(t)e^{-iwt}dt$$
$e^{iwt}$ 가 아닌 이유는 푸리에가 시계 반대방향으로 도는 것을 가정했기 때문

이에 오일러 공식[[413 Euler's formula]]을 적용하여 다음과 같이 표현할 수 있다.
$$e^{iwt}=\cos(\omega t)+i\sin(\omega t)$$

### Complex Fourier Series
#### Complex Numbers
$j^{2}=-1$ 
![[Pasted image 20231018012543.png|400]]

##### DCT & DFT
![[Pasted image 20231018013700.png|]]
푸리에 변환을 (오일러 공식)[[413 Euler's formula]]을 통해서 실수부분과 허수부분을 분리한 후, 실제 사용할 **실수 부분**에 관해서만 표현한다. 이를 **DCT(Discrete Cosine Transform)** 라 한다.

이와 반대로 **DFT(Discrete Fourier Transform)** 는 복소 지수 함수 (복소 수학적 지수 함수)를 사용하는 변환입니다. 따라서 DFT는 **복소수를 출력**으로 생성하며 주로 주파수 및 위상 정보를 제공

|              | DCT                                                                            | DFT                                                                           |
| ------------ | ------------------------------------------------------------------------------ | ----------------------------------------------------------------------------- |
| 에너지 보존  | 주파수 정보의 표현에 필요한 부분만을 보존                                      | 전체 신호의 주파수 정보를 완전하게 보존                                       |
| 적용 분야    | 주로 주파수 분석 및 신호 스펙트럼 분석                                         | 이미지 및 오디오 압축, 특히 JPEG 이미지 압축 및 MP3 오디오 압축에서 널리 사용 |
| DC 성분 처리 | 주로 주파수 도메인에서 데이터를 분석하므로 DC (직류) 성분을 처리하는 데 어렵다 | 주로 주파수 도메인에서 데이터를 분석하지만, DC 성분을 처리하기에 적합                                                                              |


### Examples
1. Square wave
![[Pasted image 20231002015848.png]]

2. Saw-Tooth Wave
![[Pasted image 20231002194331.png]]
톱니파가 "Odd Function"인 이유는 $$s(t) = (2/T) * (t - T/2), 0 <= t < T/2$$$$s(t) = (2/T) * (T - t - T/2), T/2 <= t < T $$
위의 두 수식에서 볼 수 있듯이, $t$ 를 $\frac{T}{2}$ 에서 중심으로 우함수 대칭한 형태를 가진다.
[[414 Fourier Analysis#Fourier series (퓨리에 급수)]]

3. reverse Saw-Tooth Wave
![[Pasted image 20231018011856.png|300]]

![[Pasted image 20231018012036.png]]

4. Triangular Wave
![[Pasted image 20231018225300.png]]

5. $f(t)=e^{-a|t|}$
$$F(f(t))=\int_{-\infty}^{\infty}e^{-a(|t|)}e^{-jwt}dt$$
부분 적분 공식은 아래와 같다.
$$\int_{-p}^{p}{uv}\,dt=u'v_1-uv_2$$
음의 영역과 양의 영역을 분리하여 적분
$$\int_{-\infty}^{0}e^{-a(-t)}e^{-jwt}dt+\int_{0}^{\infty}e^{-at}e^{-jwt}dt$$


   
   
## Fourier Transform
Frequency domains can be obtained through the transformation from one(**time or spatial**) domain to the other (**frequency**) via -- MPEG Audio

![[Pasted image 20231018233919.png]]
$\frac{Time}{Cycle} = Period[s]$

$\frac{Cycle}{Time}=\frac{Cycle}{1s}=Hz$ 
### Orthogonal Functions
[[412_Orthogonal_Functions]]
![[Pasted image 20231019005129.png]]
![[Pasted image 20231019005121.png]]
$$\phi_n(x)=e^{-i\frac{n\pi}{l}x}$$
An **orthogonal series expansion** of $f$ or a **generalized Fourier series** is
$$f(x)=\sum_{n=0}^{\infty} C_n\phi_n(x)$$
where
$$c_n=\frac{\int_a^b{f(x)\phi(x)dx}}{\left\vert\left\vert \phi_{n(x)}\right\vert\right\vert ^2}$$
With inner product notation becomes
$$f(x)=\sum_{n=0}^{\infty}\frac{(f,\phi_n)}{{\left\vert\left\vert \phi_{n}(x)^2\right\vert\right\vert}}\phi_n(x)$$
![[Pasted image 20231019005433.png]]
![[Pasted image 20231019005652.png]]
