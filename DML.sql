create table Enrol(
    id int unsigned not null auto_increment primary key,
    subject smallint unsigned not null,
    student int not null,
    constraint foreign key fk_subject(subject) references Subject(id) on delete cascade,
    constraint foreign key fk_student(student) references Student(id) on delete cascade
);

desc Enrol;
select * from Enrol;
-- creating Enrol table


insert into Enrol(subject, student) select 1, sd.id from Student sd order by rand() on duplicate key update student=student;
update Enrol set student = (select sd.id from Student sd order by rand() limit 1) where id !=0;
select count(distinct student) from Enrol;
