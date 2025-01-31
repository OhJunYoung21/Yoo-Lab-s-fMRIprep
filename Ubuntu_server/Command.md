## 소개

여기서는 서버에서 전처리를 돌리는 과정과 서버에서 생긴 작업물(전처리가 끝난 파일들)을 어떻게 로컬로 가져오는지에 대해서 간단하게 설명할 것이다.

---

## 1️⃣ 서버에서 전처리 돌리는 명령어들 정리 

* 서버에 접속 (접속되면 비밀번호 입력) ✅

~~~linux
ssh junyong@10.xxx.xxx.xxx
~~~

* 로컬에 있는 bidsify가 끝난 파일들을 서버에 업로드 ✅

~~~linux
scp -r /로컬파일의 경로 junyong@서버IP주소 /서버내에서 bidsify된 파일들을 저장할 경로
~~~

* 서버에 로컬파일들의 업로드가 끝나면 fmriprep-docker를 사용해서 전처리 과정 실시 ✅

~~~linux
#!/bin/bash

docker run -d \
       -v /home/junyong/Downloads/RBD_PET_BIDS_negative:/data:ro \
       -v /home/junyong/Downloads/post_prep/RBD_PET_negative:/out \
       -v /dev/shm/work:/work \
       -v /home/junyong/freesurfer/license.txt:/opt/freesurfer/license.txt \
       nipreps/fmriprep:24.1.1 \
       --skip-bids-validation \
       /data /out participant
~~~

* docker가 잘 돌아가고 있는지 확인

~~~linux
docker ps
~~~

docker ps명령어로 현재 작동하고 있는 컨테이너의 아이디를 확인한 후 (ex aardfasdij123), 해당 아이디의 앞부분(대충 앞에서 6자리)를 복사한 다음
docker logs 뒤에 입력해서 fmriprep이 돌아가는 과정을 실시간으로 확인한다.

~~~linux
docker logs CONTAINER_ID
~~~

* 정상적으로 돌아가고 있을 때 나오는 문구

~~~linux
[INFO] fMRIPrep workflow graph with 8181 nodes built successfully.
~~~

---

## 2️⃣ 서버에서 작업한 작업물들을 로컬로 가져오는 단계

서버에서 작업한 작업물들을 로컬로 가져올때는 scp를 사용해서 가져오는 방법이 있다. scp는 Secure Copy Protocol의 약자로써, 안전하게 서버내의 파일을 내 로컬로 가져오는 역할을 수행한다.

~~~linux
scp -r user@10.xxx.xxx.xxx:/home/owner/Downloads/post_prep/RBD_PET_negative_ver_1 $HOME/Desktop/Yoo_Lab
~~~


