
create table Classroom(
	id smallint unsigned not null auto_increment primary key,
	name varchar(31) not null
);

select * from Classroom;
-- creating Classroom table


insert into Classroom(name)
select concat((id +100), '호') from Subject;
-- inserting values Subject table's id + 100 by using concat()


alter table Subject add column classroom smallint unsigned;
alter table Subject add foreign key fk_classroom(classroom) references Classroom(id);
-- altering Subject table, adding column classroom and foreign key with Classroom's id


update Subject set classroom = (select name from Classroom order by rand() limit 1);
select * from Subject;
-- allocating name to classroom column in Subject table


