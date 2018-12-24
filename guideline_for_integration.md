## 데이터 표준지침 for oracle HR Schema

Mysql에 DB작성 표준 지침을 기준해서 오라클의 Schema를 전환한다.
()

1. 이미 사용되고 있는 관용어는 계속 사용한다. (keeping Idiomatic words used in advanced)
2. 동의어는 허용하지 않는다. (Using Synonym not allowed)
3. 띄어쓰기는 _ 로 지정한다. (Space between words must be indicated by '_')
4. 한글명이 있을경우 영문으로 번역하여 표기한다. (Translate other language into English)
5. 테이블 명은 앞이 대문자인 카멜케이스를 쓴다. (Labeling tables must use Camelcase)
6. 컬럼명은 소문자만 쓴다. (Labeling columns must use lowercases only)
7. 단수형을 사용한다 (Singular form only)
8. id 를 primary key로 잡는다. (Assign id as a primary key and auto-increment) 
9. Stored Routines의 경우 Query를 Mysql에 맞게 변환한다 (e.g rank(), rownum(), etc.)
10. Foreign key는 f_column1 의 형식으로 만든다. 또한 Stored Routines 및 unique key를 만들때도 적용한다
11. Number 는 int 로 통일한다.
12. VARCHAR2 는 varchar(45)로 통일한다.
11. Number 는 int 로 통일한다.
13. datetime 형식은 년, 월, 일 의 순서로 한다 

- create table Employee
   |id | column name  | data type | Nullable | Default |
   | 1 |  employee_id |    int    |
   | 2 |  first_name  |varchar(45)|
   | 3 |  last_name   |varchar(45)|
   | 4 |    email     |varchar(45)|
   | 5 |  hire_date   |  datetime |
   | 6 |   job_id     |
   | 7 |    salary    |
   | 8 |commission_pct|
   | 9 |  manager_id  |
   | 10|department_id |

EMPLOYEE_ID	NUMBER(6,0)	No		1
FIRST_NAME	VARCHAR2(20 BYTE)	Yes		2
LAST_NAME	VARCHAR2(25 BYTE)	No		3
EMAIL	VARCHAR2(25 BYTE)	No		4
PHONE_NUMBER	VARCHAR2(20 BYTE)	Yes		5
HIRE_DATE	DATE	No		6
JOB_ID	VARCHAR2(10 BYTE)	No		7
SALARY	NUMBER(8,2)	Yes		8
COMMISSION_PCT	NUMBER(2,2)	Yes		9
MANAGER_ID	NUMBER(6,0)	Yes		10
DEPARTMENT_ID	NUMBER(4,0)	Yes		11

DEPARTMENT_ID	NUMBER(4,0)	No		1
DEPARTMENT_NAME	VARCHAR2(30 BYTE)	No		2
MANAGER_ID	NUMBER(6,0)	Yes		3
LOCATION_ID	NUMBER(4,0)	Yes		4
