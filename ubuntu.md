## **Linx(Ubuntu) Docker Container를 구동하기 위한 절차와 Telnet daemon구동, 그리고 한글 사용 설정하기와 git사용 설정하기**
----

- ### Linx(Ubuntu) Docker Container 구동하기 <br />

1. `Docker Quick Starter`를 실행한다<br />

2. `$>apt-get install openjdk-8-jdk -y`<br />
ubuntu를 도커에 설치한다
<br />

3. `$>docker container run (docker_image_name><command>`<br />
도커 이미지의 이름을 적고 명령을 적어 실행시킨다
<br />

4. `$>docker ps -a`<br />
실행시킨 이미지가 컨테이너로 바뀌어 실행되고 있는지 -a(a for all) 을 붙여 실행시킨다
<br />

5. `$>docker container start ubuntu container`<br />
다시 실행할때는 지정한 이름을 적고 실행시킨다
<br />

- ### Telnet daemon 구동하기 <br />

1. `$>apt-get instal xinetd telnetd`<br />
도커 실행후 `\bin\sh` 폴더에 telnet daemon을 설치한다
<br />

2. `$>vi /etc/xinetd.d/telnet`<br />
Vi editor로 설치된 telnet을 연다
<br />

3. <br />
> `service telnet
>{
>    disable = no 
>    flags = REUSE
>    socket_type = stream 
>    wait = no
>    user = root
>    server = /usr/sbin/in.telnetd
>    log_on_failure += USERID
>}`

<br />

위에 소스를 작성한후 `:wq`명령으로 저장하고 나온다
<br />

4. `$> /etc/init.d/xinetd restart`<br />
<br />
5. `$>docker commit ub ub_telnet`<br />
<br />
6. `$>docker run -itd -p 23:23 --name ubt ub_telnet bash`<br />
<br />



