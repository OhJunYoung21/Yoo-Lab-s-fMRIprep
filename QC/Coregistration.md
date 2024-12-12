## Coregistration check

fMRIprep에서는 fMRI(EPI)와 T1w로 촬영한 이미지를 서로 합쳐주는 과정을 진행한다. 이를 공등록(Co-registration)이라고 하는데, 해당 과정이 잘 이뤄졌는지 확인하는 과정이 필요하다.

이때, fMRIprep은 .html파일에 어떤 과정으로 전처리가 이뤄졌는지 보여주는데, 이때 Co-registration이 어떻게 일어났는지 또한 알수 있다.

서로 다른 두영상이 정렬이 잘 되었는지를 보려면, 두 영상에서 공통적으로 보여지는 부분이 있어야 한다. 예를 들어 우리가 어떤 물체(공)을 정렬한다고 할때, 정렬이 잘 되었는지는 공의 가장자리가 잘 맞는지를 보는 것처럼, 여기서도 공의 가장자리 역할을 해줄 무언가가 필요하다.

그 무언가는 바로 White matter mask이다.

백질은 신경활동과 연관성이 거의 없는 부분이고, fMRI촬영결과 항상 흰색으로 표시된다.(그 이유는 추후 자세히 다루도록 하겠습니다.)

또한 우리는 해부학적이미지를 보면 어디가 백질인지 알수 있다.

그렇다면, epi에서 백질으로 표시된 부분과 t1w(해부학적 이미지)에서 백질로 표시된 부분이 일치한다면 우리는 꽤 정렬이 잘 되었다고 볼수 있는 것이다.


<div align = "center">
  <img src ="https://github.com/user-attachments/assets/9297db42-427b-4530-8b29-ef085da794c7" width = "30%" height = "400px">  
  <img src = "https://github.com/user-attachments/assets/21dec3cb-8bed-4ba3-9591-8e22f2026aae" width = "30%" height = "400px">
</div>

EPI이미지를 보면 아무것도 없는 부분인데 백질이라고 판단한 부분들이 있다.





