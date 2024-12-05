## 🧑‍💻 fMRIprep을 Docker를 사용해서 실행하기 🧑‍💻


### Docker 설치

fMRIprep에서 사용하는 여러가지 소프트웨어들을 Docker 환경내에서 사용해야 하기 때문에 Docker를 설치한다. 아래 링크에 들어가서 자신이 사용하는 운영체제에 맞는 Docker를 다운받는다.

[🐳 Docker 설치 링크](https://www.docker.com)

### fMRIprep 이미지 설치

Docker 설치가 완료되었으면, 아래 명령어를 사용해서 fmriprep에 필요한 이미지를 설치해줘야 한다.

~~~linux
pip install --user --upgrade fmriprep-docker
~~~

### fMRIprep 실행 shell 코드 작성

아래와 같은 fmriprep 실행코드를 작성하고 사용자가 원하는 경로에 저장한다.

~~~unix
#!/bin/bash

input_folder="$HOME/Desktop/pre_BIDS_ex"
output_folder="$HOME/Desktop/post_fMRI_RBD"


fmriprep-docker $input_folder $output_folder \
  participant \
    --skip-bids-validation \
    --fs-license-file $HOME/Downloads/license.txt \
    --mem-mb 8000 \
    --fs-no-reconall \
    --stop-on-first-crash \
    --md-only-boilerplate \
    --use-syn-sdc \
    --dummy-scans 3 \
    --output-spaces MNI152NLin2009cAsym \
    --nthreads 8 \
~~~

input_folder에는 전처리하기 전에 파일들이 있는 폴더의 경로를 저장한다.
output_folder에는 전처리가 끝난 파일들을 어디에 저장할것인지 경로를 저장한다.

* 단, fMRIprep을 성공적으로 실행하기 위해서는 파일들이 bids 구조를 띄고 있어야 한다.








