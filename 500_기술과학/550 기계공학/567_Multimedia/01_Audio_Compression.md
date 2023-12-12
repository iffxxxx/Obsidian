#500_기술과학 #550_기계공학 #567_통신공학 #Multimedia
## Audio
Audio signals are continuous analog signals
> Analog : continuos signals must be converted or digitized for computer processing
> Digital : discrete digital signals that computer can readily deal with

### Process of Analog-to-Digital Conversion (ADC)
Analog signal -> Sampling -> Quantization -> Coding -> Storage / Transmission

#### Sampling
Measuring the analog signal at regular discrete intervals
Recording the value at these points

![[Pasted image 20231002004034.png|400]]
$s(n) = s(nT)$   where T = sampling period
Opposite transformation = interpolation
$s(n) = s(t)$

[[01.1_Nyquist's_Sampling Theorem]]

#### Quantization
(vertical) $Q()$ is a rounding function which maps the value $s(n)$ (real number) into value in one of N levels(integer)

maps each sample to the nearest value of N levels (vertical)

>Quantization error (or quantization noise)
>The difference between the actual value of the analog signal at the sampling time and the nearest quantization interval value.

#### Coding (Encoder)
Convert discrete values to binary digits

##### PCM coding (Pulse Code Modulation)
Encoding each N-level value to a m-bit binary digit

##### DPCM
Audio is often stored not in simple PCM but instead in a form that **exploits differences**
Differential PCM coder quantizes and encodes the difference

**Predictive coding** : simply means transmitting differences - predict the next sample as being equal to the current sample; send not the sample itself but the differences between previous and next.

DPCM is exactly the same as Predictive Coding, except that it incorporates a quantizer step.
##### DM (Delta Modulation)
simplified version of DPCM. Often used as a quick AD converter.
##### ADPCM (Adaptive DPCM)
takes the idea of adapting the coder to suit the input much farther.

[[414_Fourier_Analysis]]

