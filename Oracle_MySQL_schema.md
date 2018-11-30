## **Oracle과 MySQL에서 데이터베이스(Schema)와 사용자 (User)를 생성하는 과정**
----
- ### Oracle
오라클에서는 `user`와 `database`를 같은 개념으로 보고 `schema`라고 부른다. 즉, 오라클의`schema`는 MySQL의 `database`와 같다.

> User 생성
1. SQL Developer를 실행한다
2. 메뉴에 `접속`을 누른다
3. `다른사용자`를 누른다
4. `사용자생성`을 누르고 사용자 이름, role 및 권한(read, write, execute), 할당량(정해진 용량내에서 얼마나 차지할것인지), SQL(DDL, DML etc.) 그리고 결과를 설정한후 저장한다.

- ### MySQL
> User 생성
1. MySQL을 실행한다
2. mysql>create user <user_name>@'host' identified by '<password>';
3. mysql>grant all privileges on <db>.* to '<user_name

