![[Diffusion Explainer_ Visual Explanation for Text-to-image Stable Diffusion.pdf]]
## ABSTRACT
Diffusion Explainer는 Stable Diffusion이 Text Prompt를 이미지로 변환하는 방법을 설명하는 최초의 대화형 시각화 도구이다. Stable Diffusion의 복잡한 구성 요소에 대한 시각적 개요를 긴밀하게 통합한다. 이미지 표현의 진화를 비교함으로써 사용자는 프롬프트가 이미지 생성에 영향을 미치는 것을 발견할 수 있다.

## INTRODUTION
Stable Diffusion은 노이즈를 반복적으로 정제하여 텍스트 표현을 기반으로 고해상도의 벡터표현으로 노이즈를 반복적으로 정제한다. 내부적으로 프롬프트는 토큰화되고 CLIP neural network의 Text Encoder를 통해 벡터 표현으로 인코딩된다. 텍스트 표현의 안내에 따라 Stable Diffusion은 이미지 품질을 향상시키고 프롬프트에 준수를 증가시킨다. 이는 UNet 신경망과 Scheduler 알고리즘을 사용하여 이미지의 벡터 표현을 점진적으로 개선하고 노이즈를 예측하고 제거함으로써 달성된다.

## GOALS
1. 각각 복잡한 구조를 가진 여러 모델 구성 요소로 구성된 안정적인 확산에 대한 시각적 요약
2. 다양한 추상화 수준을 밀접하게 통합하는 대화형 인터페이
3. 텍스트 프롬프트의 키워드가 이미지 생성에 미치는 영향 시각화