# XCP_D를 실행할때 내가 마주친 다양한 이슈사항들😂

---

### xcp_d: error: unrecognized arguments: --file-format cifti

위 에러는 -file-format cifti라는 명렁어를 시스템이 인식하지 못해 발생한 오류이다.

구글링을 해서 해결해보려고 하였다.(갓 구글...사랑해요🥰)

input file이 nifti였기 때문에 --file-format nifti로 바꿔주었으나, 실패하였다. 아마도 .nii.gz로 압축되어 있어서 오류가 발생한듯 싶어 압축을 풀고 다시 시도해볼 예정이다.
