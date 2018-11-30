## **Oracle과 MySQL에서 데이터베이스(Schema)와 사용자 (User)를 생성하는 과정**
----
- ### Oracle <br />
오라클에서는 `user`와 `database`를 같은 개념으로 보고 `schema`라고 부른다. 즉, 오라클의`schema`는 MySQL의 `database`와 같다.

> User 생성<br />

1. SQL Developer를 실행한다
<br />

2. 메뉴에 `접속`을 누른다
<br />

3. `다른사용자`를 누른다
<br />

4. `사용자생성`을 누르고 사용자 이름, role 및 권한(read, write, execute), 할당량(정해진 용량내에서 얼마나 차지할것인지), SQL(DDL, DML etc.) 그리고 결과를 설정한후 저장한다.
<br />
<br />

- ### MySQL  <br />

> User 생성 <br />

1. MySQL을 실행한다
<br />

2. `mysql>create user <user_name>@'host' identified by '<password>';`<br />
실행된 mysql창에서 `user_name`을 적고 현재 Local host이름을 적은후(ex. `%`) 비밀번호를 설정한다  
<br /> 

3. `mysql>grant all privileges on <db>.* to '<user_name>'@'<host>';`<br />
본인이 지정한  `db`의 이름을 적고 위에서 설정한 이름과 호스트 이름을 적게되면 지정된 `db`에게만 권한이 주어진다. 만약 `db`의 이름대신 `*`를 넣게되면 모든 db에게 권한이 부여된다
<br />

4. mysql>flush privileges;<br />
주어진 권한을 적용시킨다
<br />

5. mysql>show grants for '<user_name>'@'<host>;<br />
설정된 권한을 확인해 
<br />

