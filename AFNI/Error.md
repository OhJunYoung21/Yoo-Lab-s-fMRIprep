## 발생가능한 오류들

### 파일의 소유권한이 없어 발생하는 오류들

~~~unix
tcsh OS_notes.macos_12_ARM_b_user.tcsh
~~~

위 명령어를 수행할때 특정 오류메세지가자주 출력되고는 한다.

➡️ failed to open text file '.tcshrc' for writing

위 오류 메세지는 ~/.tcshrc파일을 열지 못했다는 의미인데, 이를 확인하려면 일단 파일을 열수 있는 권한이 있는지 살펴봐야 한다.

~~~unix
ls -l ~/.tcshrc 
~~~

위 명령어를 통해 ~/.tcshrc파일의 권한을 확인한다.

권한이 정상적으로 있음에도 불구하고 동일한 에러메세지가 뜨는 경우가 있다면, 아래의 명령어를 수행해준다.

~~~unix
sudo chown your_username ~/.tcshrc
~~~

위 코드는 파일의 소유자를 나로 바꿔주는 과정이다. 파일이 물론 내 로컬에 있기는 하지만, 그 파일에 대한 소유권이 나에게 없는 경우도 있다. 이럴때에는 sudo명령어를 사용해서 파일의 소유권한을 나에게 양도(?)해줘야 한다.

chown는 'change owner'의 약자이다.
