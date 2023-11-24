- ## ML Systems are Complex
	이 강의에서는 기계 학습 시스템을 배포하고 유지하는 데 직면하는 도전과제를 살펴볼 것입니다. 다음 강의에서는 이러한 도전과제에 대한 해결책을 탐색할 것입니다. 도전과제를 이해하는 목표는 이러한 도전과제에 대응하고 방어하기 위해 우리를 더 잘 장착하는 것입니다.
	![[03_02_Specific_Challenges_of_ML_Systems_2.png]]
	이 다이어그램은 "기계 학습 시스템의 숨겨진 기술적 부채"라는 논문에서 가져온 것입니다. 다이어그램에서 귀하에게 실제로 눈에 띄어야 할 것은 기계 학습 구성 요소가 중앙의 작은 검은 상자라는 점이며 고려해야 할 많은 다른 구성 요소들이 있습니다. 우리는 이 강좌에서 이러한 많은 구성 요소를 탐색할 것이므로 익숙하지 않다면 걱정하지 마십시오.
	
	![[03_02_Specific_Challenges_of_ML_Systems_3.png]]
	이러한 기계 학습 시스템의 복잡성 자체가 배포의 도전과제를 더욱 증가시킵니다. 이미 샐리는 이전 섹션에서 재현성의 중요성에 대해 이야기했고, 우리는 시스템을 설계하고 아키텍처를 고려할 때 이를 염두에 두어야 합니다.
	![[03_02_Specific_Challenges_of_ML_Systems_4.png]]
	직면하게 될 주요 도전과제 중 하나는 데이터 종속성입니다. 모델을 교육하는 데 직접 사용되는 데이터든 전처리 및 피처 엔지니어링 작업의 입력을 나타내는 원시 데이터든 주의 깊게 관리해야 합니다. 내부 데이터는 우리의 지식 없이 제거 또는 업데이트될 수 있으며 외부 데이터도 변경될 수 있습니다. 이는 모델 배포에 영향을 미칠 수 있는 주요 도전과제 중 하나입니다.
	![[03_02_Specific_Challenges_of_ML_Systems_5.png]]
	구성 관리는 머신러닝 시스템에서 주목할 만한 다른 도전과제입니다. 표준 응용 프로그램 구성 외에도 모델 하이퍼파라미터 및 모델 버전과 같은 구성이 있습니다. 이로 인해 시스템에 대한 이해와 복잡성이 증가합니다.
	![[03_02_Specific_Challenges_of_ML_Systems_6.png]]
	구성 데이터 준비 및 피처 엔지니어링 코드는 매우 복잡할 수 있으며 머신러닝 시스템의 여러 단계로 구성될 수 있습니다. 이 코드를 연구 환경과 프로덕션 간에 차이가 발생하지 않도록 배포해야 합니다.
	![[03_02_Specific_Challenges_of_ML_Systems_7.png]]
	머신러닝 시스템에 대한 테스트는 고려해야 할 또 다른 거대한 도전과제입니다. 이는 전통적인 소프트웨어 테스트가 코드에서 예외를 찾기 때문입니다. 그러나 모델이 단순히 성능이 낮아지거나 잘못된 예측을 반환하는 경우에는 예외가 발생하지 않습니다. 따라서 모델의 이러한 실수를 포착하고 감지하기 위한 대체 방법을 설계해야 합니다.
	![[03_02_Specific_Challenges_of_ML_Systems_8.png]]
	마지막으로 머신러닝 파이프라인 배포에 대한 팀의 구성도 고려해야 할 중요한 도전과제입니다. 데이터 과학자, 소프트웨어 엔지니어, 데브옵스 엔지니어, 제품 소유자 또는 비즈니스는 시스템에 대한 요구 사항을 가장 잘 이해하는 직군입니다. 회사의 크기에 따라 이 네 부서 간의 경계가 흐릴 수 있습니다. 각 팀이 효과적인 배포를 보장하기 위해 서로 의사 소통해야 하는 다양한 분야가 있습니다.
	![[03_02_Specific_Challenges_of_ML_Systems_9.png]]
	이제까지 표의 간략한 요약을 통해 연구 환경과 프로덕션 간의 몇 가지 차이점을 살펴보았습니다. 우리는 기계 학습 시스템을 배포할 때 연구 환경에서의 여러 혜택이 사라진다는 것을 볼 수 있습니다. 고객을 대면한 코드와의 얽힘, 재현성의 필요성, 종종 규제적인 이유로 확장 기반 구성 계획 등 이러한 도전과제를 직면하게 됩니다. 따라서 이 시점에서 여러분에게 기계 학습 시스템 배포에 대해 전략적으로 생각하고 시스템 아키텍처에 대해 신중히 생각할 가치가 있다고 확신합니다. 다음 강의에서는 이러한 도전과제에 대한 대안 옵션을 탐색할 것입니다.
	
- ## Notes
	Links
	Paper referenced in the lecture:
	1. " Hidden Technical Debt in Machine Learning Systems”
		Download URL:
		https://papers.nips.cc/paper/2015/file/86df7dcfd896fcaf2674f757a2463eba-Paper.pdf
		
		Monitoring ML models:
		https://christophergs.com/machine%20learning/2020/03/14/how-to-monitor-machinelearning-models/
	
	The below resources are on more advanced topics that we will not be covering in the course
	- Google’s Site Reliability Engineering is one of the best references out there, it’s
		available for free here: https://landing.google.com/sre/sre-book/toc/index.html
		
	- Martin Fowler’s testing guide is pretty comprehensive. If you are new to testing this
		may be overwhelming:: https://www.martinfowler.com/testing/
		
	- Obey the Testing Goat by Harry Percival is a good applied introduction to Test Driven
		Development (TDD): https://www.obeythetestinggoat.com/
	
	Advanced, narrow vs. broad integration tests:
	https://martinfowler.com/bliki/IntegrationTest.html