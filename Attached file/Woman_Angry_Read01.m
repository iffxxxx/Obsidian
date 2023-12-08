
%% 감정 오디오 넣기
figure(1)
[n,fs] = audioread('여자_화난소리_읽어봐요01.wav');
s = normalize(n);
plot(s);
title('감정 voice signal')
grid on;

%잘라내기
figure(2)
soundi=s(9600:12200); %%잘라내고 싶은 만큼
plot(soundi)
title('잘라내기')
grid on;

%512 샘플
csig2=soundi(791:1302);  %%512 샘플 조절
figure(3), plot(csig2), grid on
title('감정_ 512');

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

%% spectrogram
file = audioread('여자_화난소리_읽어봐요01.wav'); % recorded data
fs=16000;    
R=15;
L=ceil(R*0.5);
noverlap=R-L;    
[S,F,T,P] = spectrogram(file,80,noverlap,2048,fs);
% window : 80
% n overlap : number of samples that each segment overlaps
% F=2048 : vector of frequencies

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
xlim([1 length(Ey)])
ylabel('energy');
    
subplot(313)
imagesc(T,F,log10(abs(S)))
title('Spectrogram'),xlabel('Time'),ylabel('Freq') 

%%%%%%%%%%

a1=soundi;
 
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

%%피크

sig = audioread('여자_화난소리_읽어봐요01.wav');
newp=csig2(1:480);        % frame size = 20ms = 320 samples
                % lookback(80 samples)+lookahead(80)
pmax=max(newp);       % max amplitude of analysis frame
data=newp./pmax;     % normalized input data
 
% windowing 
wind=hamming(480);
pcl=data.*wind;
 
% LPC analysis for the 16kHz sampled original signal
a=lpc(pcl,10);          % a = 1x11 row vector
 
[oh,ow]=freqz(1,a,512,16000);
mag=abs(oh);            % mag = 512x1 col. vector
omag=mag.^2;
figure(8), semilogy(ow,omag,'b','linewidth',2);  grid on;  hold on

[pks, locs] = findpeaks(omag, 'MinPeakDistance', 50);

pks = findpeaks(omag);

disp('피크 값:');
disp(ow(locs)), title('LPC');

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
