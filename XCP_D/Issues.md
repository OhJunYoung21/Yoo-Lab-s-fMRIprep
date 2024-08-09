## 실행 도중 발생가능한 오류들

~~~linux
#!/bin/bash

docker run --rm -it \
   -v ~/Desktop/Yoo_Lab/post_fMRI/post_fMRI_HC:/fmriprep:ro \
   -v /tmp/wkdir:/work:rw \
   -v ~/Desktop/post_fMRI/xcp_d:/out:rw \
   -v ~/Downloads/license.txt:/freesurfer:ro \
   pennlinc/xcp_d:latest \
   /fmriprep /out participant \
   --file-format nifti --despike   
~~~

위 과정에서 --file-format nifti 부분이 오류가 발생한다는 메세지가 출력되었다.
