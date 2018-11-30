## **Docker를 활용하여 MYSQL 5.7을 설치하는 방법**

 1. `Docker Quickstart Terminal` 실행

 2. `$>docker search mysql`
  도커에서 mysql을 검색한다

 3. `$>docker pull mysql:5.7`
  도커에서 mysql 5.7버전을 다운로드 받는다

 4. `$>docker images`
  도커에서 이미지들을 검색하여 mysql:5.7이 리스트에 있으면 설치가 완료된 것이다

 5. `$>docker run -d -p 3306:3306 -e MYSQL_ROOT_ PASSWORD=r! --name mysql5 mysql:5.7`
  도커에서 Host OS와 도커사이에 Port forwarding 으로 포트를 `3306`으로 맞추어 연결해 주고 계정이름과 비밀번호를 설정한후, `--name` 뒤에 컨테이너 이  름을 정한뒤 (ex. 'mysql5') mysql 5.7버전으로 실행시킨다

 6. `$>docker ps`
  도커에서 mysql5가 잘 실행되고 있는지 검색해본다

 7. `$>docker exec -it mysql5 bash`
  6번에서 확인한 `mysql5`이 실행중이었기 때문에 start 대신 `exec`를 쓰고 `-it`를 사용해 interactive 한 환경에서 bash로 컨테이너를 실행시킨다

 8. `#mysql -u root -p`
  실행된 mysql5내에 root계정안에서 (#으로 시작하는것으로 알수있다) `mysql`을 실행시킨다
