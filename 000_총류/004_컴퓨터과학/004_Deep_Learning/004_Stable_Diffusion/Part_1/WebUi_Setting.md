![[(외부용)P01_C05. Webui 운용1.pdf]]
## ENSD
![[Pasted image 20231125161254.png]]
시드 값에다 약간 그 값을 한번 더 주는 것이기에 가급적이면 이건 기본으로 두자.

## Quick Setting
- AUTOMATIC 1111 Webui에서 자주 사용하는 옵션을 Main menu에 보이도록 하는 것.
	- 선형적인 느낌 - 자주 사용하는 메뉴를 꺼내서 써야하는 불편함
	  
- ### 설정방법
	- Setting >> User Interface
	- ![[Pasted image 20231125162008.png|600]]
	- Apply setting
	  
	- ![[Pasted image 20231125162422.png|600]]
	  Clip skip을 2로 설정 - **이미지를 생성할 때 CLIP 모델 의 일부 레이어를 건너뛸 수 있는 기능**
	
- ### User Commandline Setting
	[link](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Command-Line-Arguments-and-Settings)
	- #### 유용한 Command
		- --no-half-vae : Vae 모델을 16bit로 변환하지 않습니다.
			용량과 계산 속도를 조정하기 위해서 풀플롯이라고 불리는 16비트 플롯으로 계산
			
		- --thema dark : Webui 실행 시 테마를 어두운 버전으로 적용합니다.
			
		- --autolaunch : Webui 구동이 준비되면 자동으로 Webui 화면까지 띄웁니다.
			
		- **--medvram** : 낮은 GPU 메모리 사용시 안정적인 사용을 위한 부분적 최적화를 진행합니다. 
			(생성속도 저하)
			