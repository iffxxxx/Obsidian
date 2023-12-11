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

## Code
### 오디오 넣기
```run-python
%% 감정 오디오 넣기

figure(1)
[n,fs] = audioread('남성_화난소리_읽어봐요01.wav');

s = normalize(n);

plot(s);
title('감정 voice signal')
grid on;
```

### 잘라내기
```run-python
%잘라내기

figure(2)
soundi=s(8650:9700); %%잘라내고 싶은 만큼

plot(soundi)
title('잘라내기')
grid on;
```
### 512 Sampling
```run-python
%512 샘플

csig2=soundi(91:602);  %%512 샘플 조절

figure(3), plot(csig2), grid on
title('감정_ 512');
```
### ZCR (Zero Crossing Rate)
```run-python
%제로크로싱

p=csig2;
y=zeros;
n=100;
  
for i=1:(length(p)/n)-1
	y(i)=zero_crossings(p(n*(i-1)+1:n*i));
end

figure(4), plot(y),
title('제로크로싱');

zcr1=zero_crossings(csig2);


%함수 정의
function count = zero_crossings(x)

% initial value
count = 0;

% force signal to be a vector oriented in the same direction
x = x(:);

num_samples = length(x);

	for i=2:num_samples
		% Any time you multiply to adjacent values that have a sign difference
		% the result will always be negative. When the signs are identical,
		% the product will always be positive.
		
		if((x(i) * x(i-1)) < 0)
			count = count + 1;
		end
	end
end
```

### Spectrogram
```run-python
%% spectrogram

file = csig2; % recorded data

fs=16000;    
R=15;
L=ceil(R*0.5);
noverlap=R-L;    

[S,F,T,P] = spectrogram(file,80,noverlap,2048,fs);

% window : 80
% n overlap : number of samples that each segment overlaps
% F=2048 : vector of frequencies
```
### STE (Short Term Energy)
```run-python
%% energy    

input=file;    

sampleNum = 400;    

len_input = length(input);

  

endNum = floor(len_input/sampleNum);

for i = 1:endNum,

    Ey(i) = sum(abs(input(sampleNum*(i-1)+1:sampleNum*i)).^2);

end

axisMax = max(Ey)*1.1;

axisMin = min(Ey)*0.9;

  

%% plot

figure(5);

subplot(311);

plot(double(input));xlim([0 length(input)])

title('plot')

subplot(312)

plot(Ey)

xlim([0 length(Ey)])

ylabel('energy');

subplot(313)

imagesc(T,F,log10(abs(S)))

title('Spectrogram'),xlabel('Time'),ylabel('Freq')
```
### ACR (Auto Correlation)
```
a1=csig2;

%% start point

s=1;

%% nomalize

nsig = normalize(a1);

%% frame

d=512; % frame

number_frame=floor((length(nsig)-s)/d);

for i=1:number_frame

    np(:,i)=nsig(s+d*(i-1):s+(d-1)+d*(i-1));

end

  

%%512개 샘플을 묶어 한 프레임으로 나누기.

  

%% windowing process

wind1=hamming(d);

for n=1:number_frame

    np(:,n)=wind1.*np(:,n);

end

  

%%그리고 각 프레임에 헤밍 윈도우 적용

  
  

%% auto_correlation analysis

for k=1:number_frame

    acorr(:,k)=xcorr(np(:,k));

end

figure(6);plot(acorr(:,1)), title('auto correlation');

  

% 106이 피치 주기 샘플 간격

% 16khz

% 106 * 0.00625 = 0.6625

% 1 / 0.6625 = 1509 pulse
```
### AMDF
```
%% AMDF analysis

N = length(np);

M0=250;

for k=1:number_frame

    for m=1:M0,

        nx=np(:,k);

        D(m)=0;

        if(m==1)

        else

            for n=1:N-m,

                D(m)=D(m)+abs(nx(n)-nx(n+(m-1)));

            end

        end

        D(m)=(1/N)*D(m);

    end

    amdf_data(:,k)=D;

end

figure(7);plot(amdf_data(:,1)), title('AMDF');
```
### LPC
```
%%LPC

sig = audioread('남성_화난소리_읽어봐요01.wav');

newp=csig2(1:480);        % frame size = 20ms = 320 samples

                % lookback(80 samples)+lookahead(80)

pmax=max(newp);       % max amplitude of analysis frame

data=newp./pmax;     % normalized input data

% windowing

wind=hamming(480);

pcl=data.*wind;

% LPC analysis for the 16kHz sampled original signal

a=lpc(pcl,10);          % a = 1x11 row vector

[oh,ow]=freqz(1,a,512,16000);

mag=abs(oh);            % mag = 512x1 col. vector

omag=mag.^2;

figure(8), semilogy(ow,omag,'b','linewidth',2);  grid on;  hold on

  

[pks, locs] = findpeaks(omag, 'MinPeakDistance', 50);

  

pks = findpeaks(omag);

  

disp('피크 값:');

disp(ow(locs)), title('LPC');
```
### FFT
```

%%Time domain

Fs = 16000; % 주파수 신호의 샘플링 주파수를 설정하세요.
T = 1/Fs;
L = length(csig2);
NFFT = 2^nextpow2(L);

Y = fft(csig2, NFFT)/L;

t = (0:L-1)*T;
f = Fs/2*linspace(0,1,NFFT/2+1);

  

% Plot y with time domain

figure(9), subplot(211); plot(t, csig2); grid on;
title('Time Domain');


% Plot single-sided amplitude spectrum
  
subplot(212); plot(f, 2*abs(Y(1:NFFT/2+1))); grid on;

title('Frequency Domain');
```