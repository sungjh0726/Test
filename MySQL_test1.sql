create table Enrol(
	id int unsigned not null auto_increment primary key,
    subject smallint unsigned not null,
    student int not null,
    constraint foreign key fk_subject(subject) references Subject(id) on delete cascade,
    constraint foreign key fk_student(student) references Student(id) on delete cascade
);

select * from Enrol;
delete from Enrol;

select subject, count(*) from Enrol group by subject;


insert into Enrol(subject, student)
select sbj.id, s.id
  from (select id from Subject where id not in (select distinct subject from Enrol) order by id limit 1) sbj, 
       (select id from Student order by rand() limit 100) s on duplicate key update student = student;
       
