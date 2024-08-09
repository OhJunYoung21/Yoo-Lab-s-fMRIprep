#!/bin/bash

docker run --rm -it \
   -v ~/Desktop/Yoo_Lab/post_fMRI/post_fMRI_HC:/fmriprep:ro \
   -v /tmp/wkdir:/work:rw \
   -v ~/Desktop/post_fMRI/xcp_d:/out:rw \
   -v ~/Downloads/license.txt:/freesurfer:ro \
   pennlinc/xcp_d:latest \
   /fmriprep /out participant \
   --despike \
   --smoothing 6 \
   --fs-license-file /freesurfer
   