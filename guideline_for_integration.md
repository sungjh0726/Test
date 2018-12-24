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
13. datetime 형식은 년, 월, 일, 시, 분, 초의 순서로 한다. (YYYY-MM-DD HH:MM:SS) # default current_timestamp
14. data type이 varchar 일때는 defalut를 Null로 주고 data type이 숫자일때는 default를 0으로 준다.
15. Foreign key로 잡히는 column 명은 테이블 이름 자체로 지정한다.
16. Nullable 유무는 주어진 그대로 따른다.

- create table Employee

| column name  | data type  | Nullable | Default|
|:------------:|:----------:|:--------:|:------:|
|  employee_id |    int     | Not null |   0    |
|  first_name  | varchar(45)|   null   |  null  |
|  last_name   | varchar(45)| Not null |        |
|    email     | varchar(45)| Not null |        |
|     tel      | varchar(45)|   null   |  null  |
|  hire_date   |   datetime | Not null |   *    |
|     job      | varchar(45)| Not null |        |
|    salary    |     int    |   null   |   0    |
|commission_pct|     int    |   null   |   0    |
|  manager_id  |     int    |   null   |   0    |
|  department  |     int    |   null   |   0    |

- create table department

|   column name  | data type  | Nullable | Default|
|:--------------:|:----------:|:--------:|:------:|
|department_id   |    int     | Not null |        |
|department_name | varchar(45)| Not null |        |
|  manager_id    |     int    |   null   |    0   |

- create table job

|   column name  | data type  | Nullable | Default|
|:--------------:|:----------:|:--------:|:------:|
|    job_id      | varchar(45)| Not null |        |
|   job_title    | varchar(45)| Not null |        |
|   min_salary   |     int    |   null   |    0   |
|   max_salary   |     int    |   null   |    0   |


- create table job history

|   column name | data type  | Nullable | Default|
|:-------------:|:----------:|:--------:|:------:|
|   employee_id |     int    | Not null |        |
|   start_date  |  datetime  | Not null |        |
|    end_date   |   datetime | Not null |        |
|    job_id     | varchar(45)| Not null |        |
| department_id |     int    |   null   |    0   |

