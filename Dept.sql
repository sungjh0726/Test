CREATE TABLE Dept(
	id smallint unsigned NOT NULL auto_increment primary key,
	name varchar(45) not null,
	prof smallint unsigned not null,
	student smallint unsigned not null default 0,
	constraint foreign key fk_prof(prof) references Prof(id)
);

desc Dept;
show table status;
show index from Dept;
select * from Dept;
-- creating Dept table 

update Dept d inner join Student sd on d.student = sd.id set d.student = '과대표';
--  student column in Dept table is connected with Student table id

insert into Dept(name, prof, student) 
select '사회', 
(select pf.id from Prof pf order by rand() limit 1), 
(select sd.id from Student sd order by rand() limit 1);
-- repeat the query above 4 more times (the name values varies ex. '화학', '생물', '도덕', '영어')

alter table Student add column dept smallint unsigned;
alter table Student add constraint foreign key fk_dept(dept) references Dept(id);
update Student set dept = (select id from Dept order by rand() limit 1);
select * from Student;
-- altering Student table and updating dept column values randomly from Dept id
