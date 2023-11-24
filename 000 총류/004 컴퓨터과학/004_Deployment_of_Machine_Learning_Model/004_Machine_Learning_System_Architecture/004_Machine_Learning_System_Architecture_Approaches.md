- ## ML System Architectures
	이 강의에서는 기계 학습 시스템을 위한 네 가지 아키텍처 접근 방식을 살펴볼 것입니다.
	![[03_04_Machine_Learning_system_architecture_approaches_2.png]]
	먼저, 모델 서빙 형식에 대해 간략히 언급하겠습니다. 기계 학습 모델을 교육하고 내보낼 때는 모델을 유지할 방법이 필요합니다. 이를 위한 다양한 파일 형식이 있습니다. 먼저 Python pickle 모듈을 사용하여 모델 객체를 직렬화할 수 있습니다. 이 강좌에서는 이 방법을 사용할 것입니다. Mlflow와 같은 오픈 소스 도구는 다양한 기계 학습 프레임워크에서 모델을 내보내기 위한 공통 직렬화 형식을 제공하며, 언어에 독립적인 교환 형식도 있습니다. 여기 슬라이드에 나열된 몇 가지가 있습니다. 더 단순한 pickle 형식의 경우 32비트와 64비트 머신 또는 Python 버전을 혼합하면 언제든지 피클 모델을 역직렬화할 때 다른 결과를 얻을 수 있는 몇 가지 주목할만한 리스크와 단점이 있으므로 해당 세부 정보에 대한 링크를 강의 노트에 제공하겠습니다.
	![[03_04_Machine_Learning_system_architecture_approaches_3.png]]
	
![[03_04_Machine_Learning_system_architecture_approaches_4.png]]

![[03_04_Machine_Learning_system_architecture_approaches_5.png]]

![[03_04_Machine_Learning_system_architecture_approaches_6.png]]

![[03_04_Machine_Learning_system_architecture_approaches_7.png]]

![[03_04_Machine_Learning_system_architecture_approaches_8.png]]