## **Docker를 활용하여 Oracle Express Edition을 설치하는 과정**
-----

1. `Docker Quickstart Terminal` 실행하기


2. `$>docker search oracle`
> 도커에서 오라클을 검색한다
    
    
3. `$>docker pull sath89/oracle-xe-llg`
> 도커에서 sath89버전의 오라클을 다운로드 받는다
    
    
4. `$>docker images`
> 도커에서 이미지들을 검색하여 sath89/oracle-xe-llg가 리스트에 있는지 확인한다
    
    
5. `$>docker run -d --name oracle -p 8080:8080 -p 1521:1521 sath89/oracle-xe-11g`
> 도커에서 --name 뒤에 오라클의 이름을 정하고 Port forwarding을 통해 8080, 1521로 각각 도커와 Host OS(Windows)사이를 연결해준후 실행시킨다
    
    
6. `$>docker ps`
> 도커에서 현재 실행되고있는 컨테이너 목록에서 정해준 이름 (ex. 'oracle')이 뜨는지 확인해보면 현재 oracle이 실행되고 있는것을 확인할수 있다


7. `$>docker exec -it oracle bash`
> 현재 도커에서 'oracle'이 실행되고 있는 상태이므로 start대신 exec를 사용하여 bash로 컨테이너 oracle을 실행시킨다

    
