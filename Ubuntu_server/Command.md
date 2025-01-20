### 명령어 그때 그때 정리해놓기

* 파일 또는 폴더 삭제하기
~~~linux
rm -r [파일 or 폴더의 경로]
~~~

* 서버에서 작업종료하고 나오기

~~~linux
exit
~~~

* 서버에서 전처리(fmriprep-docker)실행하기

~~~linux
#!/bin/bash


input_folder="/home/junyong/Downloads/RBD_PET_BIDS_positive"
output_folder="/home/junyong/Downloads/post_prep/RBD_PET_BIDS_positive"

fmriprep-docker $input_folder $output_folder \
        participant \
        --fs-license-file /home/junyong/freesurfer/license.txt \
        --work-dir /home/junyong \
        --output-spaces MNI152NLin2009cAsym \
        --nprocs 160 \
        --mem-mb 80000 \
        --omp-nthreads 4 \
        --skip-bids-validation
~~~

