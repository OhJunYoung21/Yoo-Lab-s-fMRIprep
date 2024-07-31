~~~unix
#!/bin/bash

docker run --rm -it \
   -v ~/Desktop/post_fMRI_RBD:/fmriprep:ro \
   -v /tmp/wkdir:/work:rw \
   -v ~/Desktop/post_fMRI_RBD/xcp_d:/out:rw \
   pennlinc/xcp_d:latest \
   /fmriprep /out participant \
   --file-format cifti --despike --head_radius 40 -w /work --smoothing 6
~~~
docker를 통해서 돌릴때에는 위와 같은 명령어를 입력하면 된다.

~~~unix
 -v ~/Desktop/post_fMRI_RBD:/fmriprep:ro \
   -v /tmp/wkdir:/work:rw \
   -v ~/Desktop/post_fMRI_RBD/xcp_d:/out:rw \
~~~

위 부분의 코드는 컨테이너에 fmriprep이라는 디렉토리를 만들고, 해당 디렉토리를 그 앞 부분에 언급된 호스트 시스템의 디렉토리와 바인딩한다는 의미이다.

그렇게 되면 컨테이너내의 fmriprep디렉토리를 실행할 때, 호스트 시스템내의 디렉토리에 접근 할 수 있게 된다. :ro = read-only의 줄임말이다.
