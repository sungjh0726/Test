-- Creating Grade table - Group project

start transaction;

1. 수강하는 과목별 중간고사, 기말고사 성적을 저장하는 테이블(Grade)

-- 성적테이블(Grade) 만들기

create table Grade(
    id smallint unsigned auto_increment primary key,
    enroll int unsigned not null,
    midterm smallint unsigned not null default 0,
    finalterm smallint unsigned not null default 0,
    constraint foreign key fk_enroll(enroll) references Enrol(id)
);

desc Grade;
show create table Grade;
select * from Grade;

2) 수강테이블 기준으로 샘플 데이터를 중간(midterm), 기말(finalterm) 성적(100점 만점)으로 구성

-- 중간고사 기말고사 점수를 sample로 채우기

insert into Grade(enroll) select id from Enrol;

update Grade set midterm = ceil((0.5 + rand() / 2) * 100) where id > 0;

update Grade set finalterm = ceil((0.5 + rand() / 2) * 100) where id > 0;
-- ceil((0.5 + rand() / 2) * 100) can be replaced by mod (id, 50) + 50

select * from Grade;

3) 과목명, 학생명, 중간고사, 기말고사, 총점, 평균, 학점 생성 SQL

select sub.과목명, sub.학생명, g.midterm as '중간', g.finalterm as '기말', (g.midterm + g.finalterm) as '총점',
((g.midterm + g.finalterm) /2) as '평균'
from Grade g inner join (select e.id, sbj.name as '과목명', stu.name as '학생명' from Enrol e
             inner join Student stu on e.student = stu.id
             inner join Subject sbj on e.subject = sbj.id
order by 과목명) sub
on g.enroll = sub.id;

-- select sub.과목명, sub.학생명, g.midterm as '중간', g.finalterm as '기말', (g.midterm + g.finalterm) as '총점',
--        ((g.midterm + g.finalterm) /2) as '평균'
-- from Grade g inner join on Enrol e on g.enroll = e.id
--              inner join Student stu on e.student = stu.id
--              inner join Subject sbj on e.subject = sbj.id
--) sub;


-- View report1 생성

USE `doodb`;
CREATE  OR REPLACE VIEW `report1` AS select sub.id, sub.과목명, sub.학생명, g.midterm as '중간', g.finalterm as '기말',
(g.midterm + g.finalterm) as '총점', ((g.midterm + g.finalterm) /2) as '평균'
from Grade g inner join (select sbj.name as '과목명', stu.name as '학생명' from Enrol e
             inner join Student stu on e.student = stu.id
             inner join Subject sbj on e.subject = sbj.id
order by 과목명) sub
on g.enroll = sub.id;


-- 학점분류

select *, (case when report11.평균 = 100 then 'A+'
								when report11.평균 >= 90 then 'A'
                when report11.평균 >= 80 then 'B'
                when report11.평균 >= 70 then 'C'
                when report11.평균 >= 60 then 'D'
                else 'F' end)  as '학점'
from report11
order by 1;

select * from report11;

4) 과목, 과목의 평균점수, 수강생수, order by 과목 가나다순 정렬

select sub1.과목명, (sub1.과목평균총점 / sub1.수강생수) as '과목평균', sub1.수강생수
  from(
select 과목명, round(sum(평균) , 1) as '과목평균총점', count(*) as '수강생수'
  from report11
group by 과목명
) sub1;


5)  학생명, 과목수, 총점, 평균(평균 100점), 평점(ABCDF) SQL

select *, (case when report1.평균 = 100 then 'A+'
		when report1.평균 >= 90 then 'A'
		when report1.평균 >= 80 then 'B'
                when report1.평균 >= 70 then 'C'
                when report1.평균 >= 60 then 'D'
                else 'F' end) as '평점'
from
(
select 학생명, count(*) '과목수', sum(총점) as '총점', round(avg(평균), 1) as '평균' from report11 group by 학생명
) report1;



