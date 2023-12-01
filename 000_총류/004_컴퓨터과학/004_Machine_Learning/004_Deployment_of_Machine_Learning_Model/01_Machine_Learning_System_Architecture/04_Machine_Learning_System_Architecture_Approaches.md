- ## ML System Architectures
	이 강의에서는 기계 학습 시스템을 위한 네 가지 아키텍처 접근 방식을 살펴볼 것입니다.
	![[03_04_Machine_Learning_system_architecture_approaches_2.png]]
	먼저, 모델 서빙 형식에 대해 간략히 언급하겠습니다. 기계 학습 모델을 교육하고 내보낼 때는 모델을 유지할 방법이 필요합니다. 이를 위한 다양한 파일 형식이 있습니다. 
	![[03_04_Machine_Learning_system_architecture_approaches_3.png]]
	먼저 Python pickle 모듈을 사용하여 모델 객체를 직렬화할 수 있습니다. 이 강좌에서는 이 방법을 사용할 것입니다. Mlflow와 같은 오픈 소스 도구는 다양한 기계 학습 프레임워크에서 모델을 내보내기 위한 공통 직렬화 형식을 제공하며, 언어에 독립적인 교환 형식도 있습니다. 여기 슬라이드에 나열된 몇 가지가 있습니다. 더 단순한 pickle 형식의 경우 32비트와 64비트 머신 또는 Python 버전을 혼합하면 언제든지 피클 모델을 역직렬화할 때 다른 결과를 얻을 수 있는 몇 가지 주목할만한 리스크와 단점이 있으므로 해당 세부 정보에 대한 링크를 강의 노트에 제공하겠습니다.
	![[03_04_Machine_Learning_system_architecture_approaches_4.png]]
	첫 번째 아키텍처는 내장된 접근 방식입니다. 이 시나리오에서는 훈련된 모델을 응용 프로그램의 종속성으로 내장합니다. 간단히 말해서 우리는 응용 프로그램에 모델을 설치하거나(예: pip install my_model) 또는 빌드 시 AWS S3와 같은 파일 저장소에서 훈련된 모델을 응용 프로그램에 가져옵니다. 그런 다음 응용 프로그램은 제어하는 프로세스 내에서 이 사전 훈련된 모델을 호출하여 실시간으로 예측을 생성할 수 있습니다. 이를 위해 온더플라이(On the Fly) 모니커가 사용됩니다. 이 예에서는 주택 가격 예측을 수행하는 단일 Django 응용 프로그램이 있다고 가정해 봅시다. Django 앱은 HTML 페이지를 제공하며 해당 페이지 중 하나에 사용자가 특정 정보를 입력하는 양식이 있습니다. 사용자는 해당 양식을 제출하고 Django 응용 프로그램은 해당 입력을 가져와 주택 가격을 예측하고 해당 예측을 클라이언트에게 반환합니다. 모바일 앱이 이와 같은 아키텍처를 사용하는 경우가 있습니다. 모바일 앱은 기본 기계 학습 라이브러리를 사용하여 애플리케이션 프로세스 내에서 예측을 수행합니다. 이러한 경우에는 이러한 디자인으로 간결성을 얻지만 모델 업데이트를 수행하려면 전체 애플리케이션을 다시 배포해야 합니다. 모바일 기기의 경우 앱의 새 버전을 릴리스해야 합니다.
	
	![[03_04_Machine_Learning_system_architecture_approaches_5.png]]
	두 번째 기계 학습 시스템 아키텍처는 전용 모델 API입니다. 이 아키텍처에서 훈련된 모델은 별도의 기계 학습 API 서비스의 종속성이 됩니다. 이전 슬라이드에서 언급한 Django 주택 가격 예측 응용 프로그램 예제를 확장해 보겠습니다. Django 응용 프로그램 서버에 양식이 제출되면 해당 서버는 전용 기계 학습 마이크로 서비스에 두 번째 호출을 수행하고 해당 마이크로 서비스는 예측된 주택 가격을 전용으로 반환합니다. Django 앱은 Rest, gRPC 또는 Rabbitmq와 같은 메시지 브로커를 통해 이 호출을 수행할 수 있습니다. 이 아키텍처에서는 첫 번째 아키텍처의 트레이드오프를 역전시킵니다. 별도의 서비스를 유지하는 더 큰 복잡성이 있지만 이제 메인 응용 프로그램 배포와 모델 배포를 분리할 수 있습니다. 주 서버 또는 모델 마이크로 서비스를 별도로 확장하여 트래픽을 처리하거나 다른 응용 프로그램에 서비스를 제공할 수 있습니다.
	
	![[03_04_Machine_Learning_system_architecture_approaches_6.png]]
	세 번째 기계 학습 시스템 아키텍처는 Apache Kafka 또는 Apache Pulsar와 같은 스트리밍 플랫폼을 활용합니다. 이 시나리오에서는 교육 프로세스가 훈련된 모델을 스트리밍 플랫폼에 발행하고 응용 프로그램이 런타임에서 모델을 소비하도록 합니다. 따라서 이후에 발생하는 모든 모델 업데이트에 대해 구독할 수 있습니다. 다시 한 번 이러한 간단성과 유연성의 트레이드오프를 만듭니다. 이러한 유형의 스트리밍 플랫폼을 유지하는 데는 훨씬 더 많은 엔지니어링, 성숙도가 필요하지만 애플리케이션을 재배포하지 않고도 모델을 업데이트할 수 있습니다. Django 애플리케이션 예제에서 응용 프로그램은 전용 Kafka 토픽에서 소비할 수 있도록 가능하게 됩니다. 여기서는 주택 가격 예측 모델의 새 버전이 Kafka를 통해 게시되는 곳입니다. 따라서 Kafka를 통해 새 버전이 제공될 때 Django 앱은 런타임에서 해당 모델을 소비할 수 있습니다. 응용 프로그램을 다시 배포할 필요가 없으므로 모델을 원활하게 업그레이드할 수 있습니다.
	![[03_04_Machine_Learning_system_architecture_approaches_7.png]]
	네 번째 아키텍처 디자인은 비동기 예측 디자인입니다. 이 시나리오에서 예측은 비동기적으로 트리거되어 응용 프로그램이나 예약된 작업에서 실행될 수 있습니다. 몇 시간 또는 며칠 후에 예측은 데이터베이스 또는 어떤 형식의 저장소에 수집되고 응용 프로그램은 대시 보드, 보고서 또는 잠재적인 UI를 통해 예측을 제공합니다. 이것은 더 오래된 아키텍처이지만 매우 허용적입니다. 예측을 제공하기 전에 예측을 검토할 수 있습니다. 데이터베이스에 예측이 유효성 검사되었음을 나타내는 플래그가 있을 수 있으며 원본 요청을 저장하면 예측을 다시 실행할 수 있습니다. 여기서는 유연성을 증가시키고 실수 가능성을 줄이기 위한 트레이드오프를 만듭니다. 분명한 것은 최상의 아키텍처라는 것은 없으며 시스템 요구 사항에 대한 시간 제약을 고려하여 가장 잘 맞는 트레이드오프 세트입니다.
	![[03_04_Machine_Learning_system_architecture_approaches_8.png]]
	이 슬라이드의 표는 일부 트레이드오프를 요약합니다. 이 강좌에서는 아키텍처 패턴 1을 준수하는 응용 프로그램을 구축하고 아키텍처 패턴 2에 맞게 쉽게 조정할 수 있는 애플리케이션을 구축할 것입니다. 여러분은 이 다이어그램에서 언급한 훈련된 모델이 어디에서 왔는지 궁금해 할 것입니다. 다음 강의에서는 이러한 다이어그램에서 언급한 아키텍처 1 및 2 내에서 이러한 훈련된 모델을 생성하기 위한 구성 요소 및 파이프라인을 살펴보겠습니다. 그리고 이 섹션에서 논의한 몇 가지 모베스트 프랙티스 원칙을 준수할 것입니다. 그럼 다음 강의에서 뵙겠습니다.
	
- ## Notes
	Pickle challenges:
	As per the scikit-learn docs:
	“Since a model internal representation may be different on two different architectures,
	dumping a model on one architecture and loading it on another architecture is not
	supported.”
	See: https://scikit-learn.org/stable/modules/model_persistence.html
	
	On the risks of the pickle format:
	https://www.youtube.com/watch?v=7KnfGDajDQw
	
	
	
	The below resources are on more advanced topics that we will not be covering in the course
	
	If you are interested in reading more about the streaming approach (pattern 3 from the lecture), this is a useful primer on machine learning with Apache Kafka:
	https://www.confluent.io/blog/using-apache-kafka-drive-cutting-edge-machine-learning
	
	And here are some code examples:
	https://github.com/kaiwaehner/kafka-streams-machine-learning-examples
	
	Here is a tutorial on working with Apache Spark for large scale data processing:
	https://towardsdatascience.com/deep-learning-with-apache-spark-part-1-6d397c16abd
	
	
	
	Here are some more advanced architecture discussions from larger companies:
	
	Netflix on architecture for recommendation systems:
	https://medium.com/netflix-techblog/system-architectures-for-personalization-and-recommendation-e081aa94b5d8
	
	Google’s TFX Paper: https://ai.google/research/pubs/pub46484
	
	Uber’s (very complex!) Michelangelo System: https://eng.uber.com/michelangelo/
	
	Deployment of Machine Learning Models
	Testing Machine Learning Systems: https://ai.google/research/pubs/pub45742