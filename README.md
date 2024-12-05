# Yoo_fMRIprep

여기서는 fMRIrprep을 어떻게 사용하면 되는지 설명하였습니다.

크게 단계는 3단계로 나누어져 있으며 아래와 같습니다.

* BIDSCoin을 위한 데이터 구조 만들기 (BIDSCoinStructure.py 참조)
* BIDSCoin 실행하기
* fMRIprep 실행하기

### 1️⃣ BIDCoin을 위한 데이터 구조 만들기

보통 데이터를 받으면 데이터는 subject-01's_id.par, subject-01's_id.REC와 같은 구조로 되어있습니다. 

제가 받은 데이터의 경우 저는 NML_T1 폴더에는 T1데이터가, NML_fMRI 폴더에는 fMRI데이터가 들어있었습니다.

'''bash
.
├──  KIMGS RBD_3_1.PAR
├──  KIMGS RBD_3_1.REC
├──  KIMJH RBD_3_1.PAR
├──  KIMJH RBD_3_1.REC
'''


### 2️⃣ BIDSCoin 실행하기

* BIDSCoin 설치하기

BIDSCoin은 Pyhon3 패키지이기 때문에 Python 3가 설치되어 있어야 한다. [Python 설치 홈페이지](https://www.python.org/downloads/)

Python3 설치가 완료되고 나면, 아래의 코드를 입력해서 제대로 설치되었는지를 확인한다.

~~~linux
python3 --version
~~~


~~~linux
pip install bidscoin
# 제대로 설치되었는지는 --version명령어로 확인한다.

bidscoin --version
~~~


~~~linux
pip install dcm2niix
# 제대로 설치되었는지 확인한다.
dcm2niix --version
~~~



[BIDS 정리 노트](https://github.com/OhJunYoung21/Sleep-fMRI/tree/main/BIDS_Coin)




