# Various_Models
## Model Type
![[(외부용)P01_C03. Stable Diffusion Model의 이해_v002.pdf]]
### Checkpoint Model (연습생)
- Diffusion 방식으로 다양한 스타일을 UNET을 통해 특화된 분야에 맞게 훈련된 모델
- 모델 교체로 **다양한 스타일**을 연출할 수 있다.
### Textual Inversion (글로 배운 연애 박사)
- **단어** 기반, 작은 용량 (10~100KB)
- 훈련된 Vector >> 다른 부분에 영향을 주지 않음 (프로세스의 위치가 이후에 사용할 Lora나 ControlNet에 크게 영향을 주지 않는다)
- Text Embedding : 특정 스타일이나 요소들이 **표현되도록** 하거나 특정 요소들을 **표현되지 않도록** 만들 수 있습니다.
### Hypernetwork
- 이미지나 텍스트에서 만들어진 벡터를 **Tensor**라고 함
	Tensor 안에 **QKV**이라는 규칙들이 존재
- 바꿔치기하는 느낌이라 **야바위 꾼**
### Lora
- Low-Rank Adaptation >> Cross Attention 레이어 가중치 조정, 일반적으로 10~200MB
- **ATTENTION WEIGHT** 을 보정하여 기존의 모델에 **훈수**를 둔다.
- Lora를 통해 특정 **스타일, 효과, 포즈** 등 다양한 표현을 할 수 있습니다.
- Lora는 행렬을 2개로 나누어 진행하여 **적은 용량의 파일** 생성 가능
#### How to use
<lora:LoraName:1> 
(Lora Model 이름, 적용할 Lora의 가중치) >> Lora 모델별로 권장하는 가중치가 있다. -> 과적합될수도 있음
Trigger word를 Prompt에 작성
### ControlNet (트레이너)
- UNet UP과 MID을 **교관**처럼 명령을 내리는 모델로 대처
#### Openpose editor
### VAE (방송사)
- Unet으로 훈련된 파인튜닝되어 있는 모델
- 내보낼때 **미세 디테일 조정, 보정**을 해준다. >> 모델별 디테일 차이
### Extention Model
#### ControlNet
#### Regional Prompt
원하는 영역에 별도의 Prompt 적용
#### Merge Block Weighted
2D와 실사, 다양한 스타일 Stable Diffusion 모델을 믹스합니다.
#### Agent Scheduler
다양한 프롬프트 디자인 수선대로, 일정대로.
#### Image Browser
Webui 안에 작은 갤러리

# Version_Management
![[(외부용)P01_C04. Extension 소개 및 설치.pdf]]
## Extention 설치
- webui.bat에서 설치해야함
## mkLink
- 상황 : 필요 버전 단위로 폴더를 관리할 경우 **모델 폴더 용량**이 매우 많아짐
- 각 세팅 별 결과를 한 곳에서 관리 >> 각 Pipeline **환경 셋팅 값을 유지**
- 개념 : NTFS 파일 시스템 기반에서 특정 파일이나 폴더에 대하여 링크 연결
- 사용방법
	mklink /d 옮길 폴더 주소  옮겨질 폴더 주소
	하이퍼링크 처럼 사용됨

