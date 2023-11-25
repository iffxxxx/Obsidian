## Concept
노이즈를 점층적으로 적용해서 이미지를 노이즈화 하는 단계를 학습할 수 있다면
학습을 바탕으로 노이즈를 제거해서 이미지로 만드는 것도 가능하지 않을까?
## How to Use
![[(외부용)P01_C01. 생성형 AI.pdf]]
### Reference
#### 버전 다운그래이드
https://www.facebook.com/watch/?v=555015316750065&extid=CL-UNK-UNK-UNK-IOS_GK0T-GK1C&mibextid=S66gvF&ref=sharing
#### 강의 자료
https://drive.google.com/drive/folders/14udcpAWRQ3pSdkN6UvvwMEsCbsKNiaGI

## T2I
txt2img는 **Prompt**를 사용하여 **Image를 생성**하는 tab입니다.
### UI_소개
#### Prompt&Negative_prompt
긍정적인 프롬프트와 부정적 프롬프트
#### Sampling_method
성격과 성향이라 생각하면 편함
#### Viewport
Image생성 과정 및 생성된 이미지를 보여주는 곳
#### Styles
Setting값을 저장할 수 있다

Stable Diffusion으로 생성된 이미지를 드래그하면 어떤 키워드, 모델이 사용되었는지 알 수 있다.
모델 이름은 해쉬값으로도 나와있기에 없다면 구글 검색해서 찾을 수 있다.
아래 왼쪽 화살표를 누르면 자동으로 Setting 적용
## I2I
### UI_소개
#### Denoising strength
#### Inpaint
## Extra
생성한 Image의 **upscale**등을 진행할 수 있는 tab

## PNG_Info
Webui와 같은 Tool을 사용하여 Image 생성 시 생성한 Image에 들어 있는 **생성 정보**를 확인하는 tab
Image를 Drag Drop하면 해당 Image에 들어있는 **Exif 정보**를 확인할 수 있습니다.
## Checkpoint Merge
학습 또는 download로 가지고 있는 checkpoint model 중 2개 이상을 **섞어서 하나**로 만들 수 있는 tab
외부툴을 주로 사용
### safetensors
### SD VAE
## Train
stable diffusion에서 사용할 수 있는 각종 Model 들을 생성하기 위한 **학습**을 시킬 수 있는 tab
## Setting
Webui의 기본적인 Setting 및 Extension 설치 시 Extension과 관련된 Option들에 대한 **대분류**가 표시
## Extensions
추가적인 기능들을 활용하기 위한 **Extension들을 설치 및 Update**하는 Tab
## VAE & Upscaler