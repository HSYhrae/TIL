# Github

## 파일 등록

> 홈 디렉토리에서 시작 ~뒤에 (master)가 있으면 안됨

1. `mkdir (디렉토리명)`: 새로운 디렉토리 생성
2. `cd (디렉토리명)/`: 해당 디렉토리로 이동
3. `git init`: 해당 디렉토리를 git 프로젝트로 바꿈
4. `touch (파일명)`: 파일 생성
   - `ls`: 파일 생성 확인
5. `git add (파일명)`: 현재 폴더의 모든 변경 사항 stage
6. `git status`:  현재 상태를 출력 (아래 같은 메시지가 출력되어야 다음 단계로 이동)

```
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   j.txt
```

7. `git commit -m "커밋메시지"`: 새로운 버전 생성 (현재 상태의 스냅샷 촬영)
8. `git remote add [저장소이름] [저장소주소]`: git에게 새로 원격저장소 알림
   - `git remote 혹은 git remote -v`: 원격저장소 및 원격저장소 주소 생성 확인
9.  `git push [저장소이름] [브랜치이름]`: 커밋을 원격 저장소에 업로드함



## 협업(내가 다른 사람의 프로젝트를 받아서 할 경우)

> 홈디렉토리에서 실행, github에서 collaborators 등록

1. git pull orgin master: 저장소를 가져옴
2. cd [디렉토리명/]: 해당 디렉토리로 들어감
3. ls: 파일 확인
4. touch [파일명]: 파일 생성
5. git add [파일명]:  현재 폴더의 모든 변경 사항 stage
6. `git status`:  현재 상태를 출력 (아래 같은 메시지가 출력되어야 다음 단계로 이동)

```
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   j.txt
```



7. `git commit -m "커밋메시지"`: 새로운 버전 생성 (현재 상태의 스냅샷 촬영)
8.  `git push [저장소이름] [브랜치이름]`: 커밋을 원격 저장소에 업로드함