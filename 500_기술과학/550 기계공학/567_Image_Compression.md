## Image
Still pictures which (uncompressed) are represented as a bitmap (a grid of pixels)
![[Pasted image 20231002002431.png]]
Stored at 1 bit per pixel(Black and White)
8Bits per pixel (Grey Scale, Color Map)
24Bits per pixel (True Color)
### Light
Light exhibits some properties that make it appear to consist of **particles**; at other times, it behaves like a **wave**.
Light is **electromagnetic energy** that radiates from a source of energy (or a source of light) in the form of waves.
Visible light is in the 400nm - 700nm range of electromagnetic spectrum.

#### Intensity of Light
The total energy from the light source, including heat and all electromagnetic radiation, is called **radiance**(광도) and is usually expressed in watts.

**Luminance**(휘도) is a measure of the light strength that is actually perceived by the human eye. Radiance is a measure of the total output of the source; luminance measures just the portion that is perceived

**Brightness**(밝기) is a subjective, psychological measure of perceived intensity. Brightness is practically impossible to measure objectively. It is relative.

**The strength of light**(강도) diminishes in inverse square proportion to its distance from its source. This effect accounts for the need for high intensity projectors for showing multimedia productions on a screen to an audience.

#### Basics of Color
Can create the sensation of any color by mixing appropriate amounts of the three primary colors - red, green, and blue

**Hue** distinguishes among colors such as red, green, and yellow.
**Saturation** refers to how far color is from a gray of equal intensity.
**Lightness** embodies the achromatic notion of perceived intensity of a reflecting object.
**Brightness** is used instead of lightness for a self-luminus object.

#### Color Models
RGB Color Model : Three basic colors R,G,B
YIQ Color Model : used in NTSC color TV
YUV Color Model : used for PAL TV and CCIR 601 standard
YCrCb Color Model : used in JPEG and MPEG
### JPEG
is an image compression standard that was developed by the "Joint Photographic Experts Group".
**Basic idea** : The human eye is less sensitive to higher-frequency information.
	Also less sensitive to color than to intensity.

![[Pasted image 20231002201020.png|500]]

#### Transform RGB to YIQ or YUV ans subsampling.

#### DCT on image block
DCT is similar to the DFT since it decomposes a signal into a series of harmonic cosine functions. DCT is actually a cut-down version of the Fourier Transform or the Fast Fourier Transform(FFT).
이산 코사인 변환 (Discrete Consine Transform) 방식으로 손실 압축이라 약간 화질이 떨어지지만 사람의 눈으로 차이를 느끼지 못한다. JPEG을 DCT하게 되면 공간 영역에서 주파수 영역으로 변하게 되어서 주파수가 낮은 쪽에 데이터가 몰려 있게 된다.

##### Definition of DCT
Given an input function $f(i,j)$ over two integer variables $i$ and $j$ (a piece of an image), the 2D DCT transforms it into a new function $F(u,v)$, with integer $u$ and $v$ running over the same range as $i$ and $j$. The general definition of the transform is :
$$F(u,v) = \frac{2C(u)C(v)}{\sqrt{MN}} \sum_{i=0}^{M-1}\sum_{i=0}^{N-1}\cos\frac{(2i + 1)*u\pi}{2M}\cos\frac{(2j + 1)*u\pi}{2N}f(i,j)$$
where $i,u = 0,1,\dots,M-1; j,v = 0,1,\dots,N-1;$ and the contants $C(u)$ and $C(v)$ are determined by
$$C(\xi)=\begin{cases} \frac{\sqrt{2}}{2}\;if\;\xi=0,\\ \;1\;\;otherwise. \end{cases}$$
The discrete cosine transform is a close counterpart to Discrete Fourier Transform(DFT). DCT is a transform that only involves the real part of the DFT.

For a continuous signal, we define the continuous Fourier transform $F$ as follows:
$$F(w)=\int_{-\infty}^{\infty}f(t)e^{-iwt}$$
using [[413 Euler's formula]], we have 
$$e^ix=\cos(x)+i\sin(x)$$
The formulation of the DCT that allows it to use only the cosine basis functions of the DFT is that **we can cancel out the imaginary part of the DFT by making a symmetric copy of the original input signal**.

[[414 Fourier Analysis#DCT & DFT]]
#### Quantization
Quantization (vertical) : $Q()$ is a rounding function which maps the value $s(n)$ (real number) into value in one of N levels (integer)
#### Zigzag scan

#### DPCM
#### Run-Length Encoding (RLE)
![[Pasted image 20231018024242.png|500]]
#### Entropy Coding
Convert discrete values to binary digits