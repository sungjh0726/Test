
create table Classroom(
	id smallint unsigned not null auto_increment primary key
);

select * from Classroom;
-- creating Classroom table

insert into Classroom(id) value('101');
insert into Classroom(id) value('102');
insert into Classroom(id) value('103');
insert into Classroom(id) value('104');
insert into Classroom(id) value('105');
insert into Classroom(id) value('106');
insert into Classroom(id) value('107');
insert into Classroom(id) value('108');
insert into Classroom(id) value('109');
insert into Classroom(id) value('110');
select count(*) from Classroom;
-- inserting values from 101 to 110 and count to check the number of each classroom

select id from Classroom order by rand() limit 1;
update Subject set classroom = (select id from Classroom order by rand() limit 1);

select * from Subject;
