## **Linx(Ubuntu) Docker Container를 구동하기 위한 절차와 Telnet daemon구동, 그리고 한글 사용 설정하기와 git사용 설정하기**
----

- ### Linx(Ubuntu) Docker Container 구동하기 <br />

1. `Docker Quick Starter`를 실행한다<br />

2. `$>apt-get install openjdk-8-jdk -y`<br />
ubuntu를 도커에 설치한다

3. `$>docker container run (docker_image_name><command>`<br />
도커 이미지의 이름을 적고 명령을 적어 실행시킨다

4. `$>docker ps -a`<br />
실행시킨 이미지가 컨테이너로 바뀌어 실행되고 있는지 -a(a for all) 을 붙여 실행시킨다

5. `$>docker container start ubuntu container`<br />
다시 실행할때는 지정한 이름을 적고 실행시킨다

- ### Telnet daemon 구동하기 <br />

1. `$>apt-get instal xinetd telnetd`<br />
도커 실행후 `\bin\sh` 폴더에 telnet daemon을 설치한다

2. `$>vi /etc/xinetd.d/telnet`<br />
Vi editor로 설치된 telnet을 연다

3. <br />
> service telnet <br />
> { <br />
> disable = no <br />
> flags = REUSE <br />
> socket_type = stream <br />
> wait = no <br />
> user = root <br />
> server = /usr/sbin/in.telnetd <br />
> log_on_failure += USERID <br />
> } <br />

위에 소스를 작성한후 `:wq`명령으로 저장하고 나온다

4. `$> /etc/init.d/xinetd restart`<br />
저장한 내용을 적용하기 위해 다시 시작한다

5. `$>docker commit ub ub_telnet`<br />
도커에 있는 기존의 `ub`를  `ub_telnet`으로 바꾼후 `commit`(저장) 한다

6. `$>docker run -itd -p 23:23 --name ubt ub_telnet bash`<br />
도커에서 `--name`뒤에 이름을 정하고 (ex. ubt) Telnet 포트넘버인 23으로 port forwarding 해주고, `-itd` (백그라운드) 에서 새로 업데이트된 `ub_telnet`으로 실행시킨다


- ### 한글 사용 설정<br />

1. `root`계정으로 접속한다<br />

2. `$>locale`<br />
`locale`에서 현재 설정되어 있는 language를 확인한다

3. `$>locale -a`<br />
적용 가능한 모든 언어를 (`-a`)를 확인한후 `ko_KR.UTF-8`가 현재 없다면 한글 적용을 해야한다

4. `$>apt-get install locales`<br />
`locales`를 설치한다

5. `$>cat /usr/share/i18n/SUPPORTED`<br />
`cat`을 사용하여 설치된 `locales`를 읽어 어떤 언어들이 지원되는지 확인해본다

6. `$>localedef -f UTF-8 -i ko_KR ko_KR.UTF-8`<br />
`locales`에서 지역을 한국으로 변환하고 (`ko_KR`) 언어를 한글로 지원받는다

8. `$>locale -a`<br />
다시 지원되는 모든 language목록을 확인하여 `ko_KR.UTF-8`이 뜨는지 확인한다

9. 한글을 쓰고자 하는 컨테이너를 실행시킨다<br />

10. 실행된 컨테이너의 `root`계정에서 `~/ .profile`을 읽는다<br />

11. 
> `LC_ALL=ko_KR.UTF-8 bash
> export LANGUAGE=ko`

위의 소스를 안에 추가한후 저장한다

12. 한글이 지원되는지 확인해본다

- ### git사용 설정<br />

1. 도커에서 사용하고자 하는 컨테이너를 실행시킨다 (root계정)<br />

2. `#> apt-get install git`<br />
`git`을 다운로드 받는다

3. `#> git config --list`<br />
`git`의 환경설정을 확인해본다

4. `#> git config --global user.name <github-username>`<br />
`#> git config --global user.email <email>`<br />
`git`에서 전역으로(`global`) 쓰일 이름과 이메일주소를 설정해준다

5. `#> git clone <github-url>` <br />
쓰고자 하는 github 주소를 적어 클론받는다

6. `#>git add --all`<br />
`#>git commit -am "comment"`<br />
`#>git push` <br />

위와 같은 방법을 이용하여 github에 공유한다





