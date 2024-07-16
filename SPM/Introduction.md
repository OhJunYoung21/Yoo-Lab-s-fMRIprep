## MATLAB을 써서 SPM 실행하기

우리는 MATLAB 기반인 SPM을 사용해서 전처리 과정을 수행할 것이다.

아래와 같은 단계를 거쳐서 전처리 과정이 수행된다.

* Realignment
* Slice Timing correction
* Coregistration
* Segmentation
* Noemalisation


각 단계는 MATLAB 언어를 사용하여 작업이 수행되며, 각 단계를 담당하는 스크립트를 Batch라고 부른다.

우리는 여러가지 Batch들을 사용해서 전처리 과정을 진행하고, 마지막에는 Batch들을 한번에 묶어서 전체 과정을 자동화 할것이다.
