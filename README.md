# Yoo_fMRIprep

여기서는 fMRIrprep을 어떻게 사용하면 되는지 설명하였습니다.

목차는 아래와 같습니다.

* BIDSCoin을 위한 데이터 구조 만들기 (BIDSCoinStructure.py 참조)
* BIDSCoin 실행하기
* fMRIprep 실행하기

### 1️⃣ BIDCoin을 위한 데이터 구조 만들기

위 레파지토리에 있는 BIDSCoinStructure.py를 참조한다. 이때, 내가 짜놓은 코드에서 수정할 부분은 pre_bids_path_fMRI와 pre_bids_path_T1부분이다. 경로를 각 사용자의 경로에 맞게 설정해줘야 오류가 발생하지 않는다.

문제가 발생하지 않는다면 sub-01에 fMRI.PAR, fMRI.REC, T1.PAR, T1.REC형태의 파일이 들어가 있을 것이다.

### 2️⃣ BIDSCoin 실행하기

* BIDSCoin 설치하기

BIDSCoin은 Pyhon3 패키지이기 때문에 Python 3가 설치되어 있어야 한다. [Python 설치 홈페이지](https://www.python.org/downloads/)

Python3 설치가 완료되고 나면, 아래의 코드를 입력해서 제대로 설치되었는지를 확인한다.

~~~linux
python3 --version
~~~

* BIDSCoin 설치하기

터미널을 실행하고, 아래의 명령어를 입력한다.

~~~linux
pip install bidscoin
# 제대로 설치되었는지는 --version명령어로 확인한다.

bidscoin --version
~~~

추가로, DICOM 또는 PAR/REC 파일을 NifTi 형식의 파일로 바꿔줘야 할경우에는, dcm2niix라는 소프트웨어를 별도로 설치해줘야 한다.

이때는 아래과 같은 명령어를 입력한다.

~~~linux
pip install dcm2niix
# 제대로 설치되었는지 확인한다.
dcm2niix --version
~~~
### 3️⃣ fMRIprep 실행하기


