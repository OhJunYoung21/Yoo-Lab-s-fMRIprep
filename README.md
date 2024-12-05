# Yoo_fMRIprep

여기서는 fMRIrprep을 어떻게 사용하면 되는지 설명하였습니다.

크게 단계는 3단계로 나누어져 있으며 아래와 같습니다.

* BIDSCoin을 위한 데이터 구조 만들기 (BIDSCoinStructure.py 참조)
* BIDSCoin 실행하기
* fMRIprep 실행하기

### 1️⃣ BIDCoin을 위한 데이터 구조 만들기

보통 데이터를 받으면 데이터는 subject-01's_id.par, subject-01's_id.REC와 같은 구조로 되어있습니다. 

제가 받은 데이터의 경우 저는 NML_T1 폴더에는 T1데이터가, NML_fMRI 폴더에는 fMRI데이터가 들어있었습니다.

폴더 내의 파일구조는 아래와 같습니다.

~~~bash
.
├──  KIMGS RBD_3_1.PAR
├──  KIMGS RBD_3_1.REC
├──  KIMJH RBD_3_1.PAR
├──  KIMJH RBD_3_1.REC
~~~

#### ❣️ 여기서 잠깐 ❣️

우리는 이런 날것(?)의 파일 형태를 fMRIprep이 사용할수 있게 적당히 손질을 해줘야 합니다. 마치 우리가 회를 먹기전에 껍질을 벗기고 내장을 덜어내는 과정처럼요.

아래의 구조를 만들어줘야 fmriprep를 실행할 수 있습니다.

~~~bash
.
├── sub-01
│   ├── LEE HS PARKINSON3_2_1.PAR
│   ├── LEE HS PARKINSON3_2_1.REC
│   ├── LEE HS PARKINSON3_3_1.PAR
│   └── LEE HS PARKINSON3_3_1.REC
├── sub-02
│   ├── KIM JS parkinson3_2_1.PAR
│   ├── KIM JS parkinson3_2_1.REC
│   ├── KIM JS parkinson3_3_1.PAR
│   └── KIM JS parkinson3_3_1.REC
~~~

이런 과정을 자동화해서 실행해주는 코드를 제가 만들었는데 그 코드는 아래의 링크에 있습니다.

[전처리를 위한 파일구조 만들어주기]()

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




