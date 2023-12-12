
## 오디오 넣기
```run-python
%% 감정 오디오 넣기

figure(1)
[n,fs] = audioread('남성_화난소리_읽어봐요01.wav');

s = normalize(n);

plot(s);
title('감정 voice signal')
grid on;
```

## 잘라내기
```run-python
%잘라내기

figure(2)
soundi=s(8650:9700); %%잘라내고 싶은 만큼

plot(soundi)
title('잘라내기')
grid on;
```
## 512 Sampling
```run-python
%512 샘플

csig2=soundi(91:602);  %%512 샘플 조절

figure(3), plot(csig2), grid on
title('감정_ 512');
```
## ZCR (Zero Crossing Rate)
![[Pasted image 20231212035049.png]]
- 음성 파형은 시간에 따른 음압의 변화를 시각적으로 나타낸 데이터로, 소리의 압력이 상승과 감소하는 부분을 포착한다. 이는 양극성과 음극성으로 나눌 수 있다. 양극성은 파형이 양의 값을 가지는 부분으로, 압력이 상승하는 구간이며, 음극성은 파형이 음의 값을 가지는 부분으로, 압력이 감소하는 구간이다. ZCR은 이 양극성과 음극성이 교차하는 지점이다.

- 본 연구에서는 512개의 샘플로 이루어진 음성 파형을 100개씩 5개의 프레임으로 나누어 각 구간에서 ZCR의 빈도를 계산한다. ZCR의 빈도가 높을수록 음성 파형이 급격하게 변하는 소리로, 에너지가 높고, 엣지가 뚜렷하다는 특징이 있다. 이는 주로 고주파수 성분에서 나타나며, 주파수가 높을수록 음성 파형이 빠르게 변하므로 음과 양 사이의 전환 수가 증가한다. 반면, ZCR의 빈도가 낮으면 주로 저주파수 성분이 많은 신호에서 나타나며, 파형이 부드럽고 엣지가 뚜렷하지 않다.
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

## Spectrogram
![[Pasted image 20231212034920.png]]
-  x축은 시간, y축은 주파수를 의미하므로 피치나 톤으로 분석되며, 가장 낮은 주파수는 하단에, 가장 높은 주파수는 상단에 해당한다. 특정 시간에 특정 주파수의 진폭(에너지 또는 소리의 크기)은 색상으로 표시되며, 낮은 진폭에 해당하는 어두운 파란색과 점진적으로 더 큰 진폭에 해당하는 노란색을 통해 더 밝은 색상으로 표시된다. 특정 감정 상태에서 어떻게 바뀌는지 언어적인 특성을 파악할 수 있다.

### Spectrogram_Code
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
## STE (Short Term Energy)
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
## ACR (Auto Correlation)
![[Pasted image 20231212035400.png]]
- 유성음 ‘요’의 ACF를 구한 것이다. ACF는 좌우 대칭의 우함수로 음성신호의 피치 (pitch 혹은 fundamental frequency), 즉 기본주파수를 측정한다. 음성신호는 시간에 따라 변하는 준주기적인 신호이기에 그 주기, 피치를 추정하는 것이 매우 어렵다고 알려져 있다. 허나 ACF를 사용할 경우 위상 왜곡이 발생할 수 있는 신호의 피치를 탐지하는데 좋은 성능을 보인다.

- 샘플링 주파수는 초당 샘플의 개수를 나타냅니다. 피치 주기 샘플 간격과 샘플링 주파수를 사용하여 주파수를 계산할 수 있습니다.
	
	주어진 정보에 따르면 '기쁨'의 피치 주기 샘플 간격은 평균 81이고, '화남'은 '기쁨'과 같은 68만큼의 간격을 가졌습니다.
	
	샘플링 주파수는 16000Hz이므로, 주파수는 다음과 같이 계산됩니다:
	
	1. '기쁨'의 주파수: 주파수 = 샘플링 주파수 / 피치 주기 샘플 간격 주파수 = 16000 / 81 ≈ 197.53 Hz
	    
	2. '화남'의 주파수: 주파수 = 샘플링 주파수 / 피치 주기 샘플 간격 주파수 = 16000 / 68 ≈ 235.29 Hz
	    
	따라서, '기쁨'은 약 197.53 Hz의 주파수를 가지며, '화남'은 약 235.29 Hz의 주파수를 가지게 됩니다.
### ACR_Code
```run-python
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
```
106이 피치 주기 샘플 간격
16khz
106 * 0.00625 = 0.6625
1 / 0.6625 = 1509 pulse


## AMDF
- ACF가 음성신호의 유사성을 기반으로 피치를 검출하는 것에 반해 AMDF는 신호의 차이로 피치를 검출한다. AMDF는 신호의 차이와 크기를 계산하므로, 그 연산량이 ACF에 비해 적고 동작시간이 빠르다는 장점이 있다.

```run-python
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
## LPC
![[Pasted image 20231212035615.png]]
- 선형 예측 코딩(LPC)는 음성 파형을 선형 예측 모델로 분해하여 음성의 특징을 추출한다. 추정된 선형 예측 모델을 사용하여 다양한 목적에 맞게 음성의 특성을 변환할 수 있다. 본 고에서는 음성신호의 생성에서 중요한 기관인 성도 (vocal tract)를 선형화하여 음성신호를 모델링하고자 한다. 성도의 반응을 시간에 따라 변하는 시스템으로 보고 이의 필터 계수를 음성 생성의 파라미터로 볼 수 있다.

- 성도는 음성 신호의 주파수 특성과 밀접한 관련이 있다. 음성 신호의 주파수 대역은 성도의 상태에 따라 변화한다. 예를 들어, 성대가 짧고 두꺼우면 주파수 대역이 낮아지고, 성대가 길고 얇으면 주파수 대역이 높아진다. 화남 상태에서는 에피네프린이라는 호르몬이 분비되는데 이는 혈관을 수축시킨다. 신주영 의사의 말에 따르면 이러한 상태에서 성대는 긴장하게 되며 이는 곧 성대가 길어지고 얇아질 수 있다. 이에 따라 주파수 대역이 높아지는 것을 확인할 수 있다. 제 1음형대 주파수 상승과 제 2음형대의 주파수의 하강은 인두강이 좁아지는 경우와 관계된다.
### LPC_Code
```run-python
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
```
#### findpeaks
```run-python
[pks, locs] = findpeaks(omag, 'MinPeakDistance', 50);
pks = findpeaks(omag);
disp('피크 값:');
disp(ow(locs)), title('LPC');
```
## FFT
![[Pasted image 20231212040548.png]]
```run-python
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