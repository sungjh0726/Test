-- Creating Grade table - Group project

start transaction;

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


-- 중간고사 기말고사 점수를 sample로 채우기

insert into Grade(enroll) select id from Enrol;

update Grade set midterm = ceil((0.5 + rand() / 2) * 100) where id > 0;

update Grade set finalterm = ceil((0.5 + rand() / 2) * 100) where id > 0;
-- ceil((0.5 + rand() / 2) * 100) can be replaced by mod (id, 50) + 50

select * from Grade;

-- 과목명, 학생명, 중간고사, 기말고사, 총점, 평균 생성

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

-- REPORT 2 = 과목, 과목의 평균점수, 총 학생수, 최고 득점자,
-- order by 과목 가나다순 정렬

select sub1.과목명, (sub1.과목평균총점 / sub1.수강생수) as '과목평균', sub1.수강생수
  from(
select 과목명, round(sum(평균) , 1) as '과목평균총점', count(*) as '수강생수'
  from report11
group by 과목명
) sub1




