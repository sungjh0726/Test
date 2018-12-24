## 데이터 표준지침 for oracle HR Schema

1. 이미 사용되고 있는 관용어는 계속 사용한다. (keeping Idiomatic words used in advanced)
2. Synonym은 허용하지 않는다. (Using Synonym not allowed)
3. 띄어쓰기는 _ 로 지정한다. (Space between words must be indicated by '_')
4. 한글명이 있을경우 영문으로 번역하여 표기한다. (Translate other language into English)
5. 테이블 명은 앞이 대문자인 카멜케이스를 쓴다. (Labeling tables must use Camelcase)
6. 컬럼명은 소문자만 쓴다. (Labeling columns must use lowercases only)
7. id 를 primary key로 잡는다. (Assign id as a primary key and auto-increment) 
8. Employee table 형식
   column name | data type | Nullable |

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
