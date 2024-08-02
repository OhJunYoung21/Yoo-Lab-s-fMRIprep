# XCP_D를 실행할때 내가 마주친 다양한 이슈사항들😂

---

### xcp_d: error: unrecognized arguments: --file-format cifti

위 에러는 -file-format cifti라는 명렁어를 시스템이 인식하지 못해 발생한 오류이다.

--file-format은 cifti형식의 파일을 input으로 요구하는데, input 데이터 형식이 cifti가 아니기 때문에 발생할것이라고 생각한다.

그렇기 때문에 fMRIprep의 명령어에 --cifti-outputs 라는 argument를 추가해주었다.
