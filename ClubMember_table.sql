
CREATE TABLE ClubMember (
	id smallint unsigned NOT NULL auto_increment primary key,
	club smallint unsigned NOT NULL,
	student int(11) not null,
	level smallint not null default 0,
	constraint foreign key fk_club(club) references Club(id),
	constraint foreign key fk_student(student) references Student(id)
);

desc ClubMember;
show table status;
show index from ClubMember;
-- creating ClubMember table


select * from ClubMember;

insert into ClubMember(club, student) select 1, id from Student order by rand() limit 50;
insert into ClubMember(club, student) select 2, id from Student order by rand() limit 50;
insert into ClubMember(club, student) select 3, id from Student order by rand() limit 50;
insert into ClubMember(club, student) select 4, id from Student order by rand() limit 50;
select * from ClubMember;
-- inserting values Club 1,2,3,4 

select club, count(*) from ClubMember group by club;
-- reading the number of student grouped by club 1,2,3,4 
 
 
 
update ClubMember set level = rand() where id > 0; 
update ClubMember set level = 2 where student = 100; 
select * from ClubMember;
-- giving level value 2 to indicate leader


