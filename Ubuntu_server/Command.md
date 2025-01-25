### 명령어 그때 그때 정리해놓기

* 디렉토리 삭제하기
~~~linux
rm -rf [디렉토리의 경로]
~~~

* 서버에서 작업종료하고 나오기

~~~linux
exit
~~~

* 서버에서 전처리(fmriprep-docker)실행하기

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

